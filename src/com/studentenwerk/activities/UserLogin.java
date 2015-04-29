// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.studentenwerk.activities;

import android.app.ActionBar;
import android.app.Activity;
import android.app.AlertDialog;
import android.app.ProgressDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.AsyncTask;
import android.os.Bundle;
import android.text.Editable;
import android.text.method.PasswordTransformationMethod;
import android.view.MenuItem;
import android.view.View;
import android.view.inputmethod.InputMethodManager;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;
import com.studentenwerk.UNIverse;
import java.io.BufferedReader;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.List;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.auth.AuthScope;
import org.apache.http.auth.UsernamePasswordCredentials;
import org.apache.http.client.ClientProtocolException;
import org.apache.http.client.CredentialsProvider;
import org.apache.http.client.entity.UrlEncodedFormEntity;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.message.BasicNameValuePair;
import org.json.JSONException;
import org.json.JSONObject;

// Referenced classes of package com.studentenwerk.activities:
//            Settings

public class UserLogin extends Activity
{
    private class checkTokenThread extends AsyncTask
    {

        final UserLogin this$0;

        protected transient Integer doInBackground(Void avoid[])
        {
            Object obj;
            obj = new ArrayList();
            avoid = null;
            String s = loadFileData(eMailFileName);
            String s1 = loadFileData(tokenFileName);
            ((List) (obj)).add(new BasicNameValuePair("auth_username", s));
            ((List) (obj)).add(new BasicNameValuePair("token", s1));
            obj = UserLogin.HTTPConnect(checkTokenURL, ((List) (obj)));
            obj = new JSONObject(((String) (obj)));
            avoid = ((Void []) (obj));
_L1:
            Exception exception;
            if (Integer.valueOf(avoid.optInt("code")).intValue() > 0)
            {
                saveFileData(eMailFileName, "");
                saveFileData(tokenFileName, "");
                return Integer.valueOf(0);
            } else
            {
                return Integer.valueOf(1);
            }
            exception;
            exception.printStackTrace();
              goto _L1
        }

        protected volatile transient Object doInBackground(Object aobj[])
        {
            return doInBackground((Void[])aobj);
        }

        protected void onPostExecute(Integer integer)
        {
            dialog.dismiss();
            if (integer.intValue() != 1)
            {
                isUserLoggedIn = false;
                resetLogin();
                return;
            } else
            {
                checkCredentialsButton.setText(0x7f05001a);
                checkCredentialsButton.getBackground().setColorFilter(0xff00ff00, android.graphics.PorterDuff.Mode.MULTIPLY);
                isUserLoggedIn = true;
                return;
            }
        }

        protected volatile void onPostExecute(Object obj)
        {
            onPostExecute((Integer)obj);
        }

        protected void onPreExecute()
        {
            super.onPreExecute();
            dialog = ProgressDialog.show(UserLogin.this, "", getString(0x7f050016), true);
        }

        private checkTokenThread()
        {
            this$0 = UserLogin.this;
            super();
        }

        checkTokenThread(checkTokenThread checktokenthread)
        {
            this();
        }
    }

    private class getTokenThread extends AsyncTask
    {

        final UserLogin this$0;

        protected volatile transient Object doInBackground(Object aobj[])
        {
            return doInBackground((Void[])aobj);
        }

        protected transient String doInBackground(Void avoid[])
        {
            Object obj1;
            Object obj2;
            Object obj = new ArrayList();
            obj1 = null;
            avoid = null;
            obj2 = null;
            String s = loadFileData(eMailFileName);
            String s1 = loadFileData(passwordFileName);
            saveFileData(passwordFileName, "");
            ((List) (obj)).add(new BasicNameValuePair("auth_username", s));
            ((List) (obj)).add(new BasicNameValuePair("auth_password", s1));
            obj = UserLogin.HTTPConnect(authTokenURL, ((List) (obj)));
            try
            {
                obj = new JSONObject(((String) (obj)));
            }
            catch (Exception exception)
            {
                exception.printStackTrace();
                continue; /* Loop/switch isn't completed */
            }
            obj1 = obj;
_L3:
            obj = Integer.valueOf(((JSONObject) (obj1)).optInt("code"));
            avoid = ((Void []) (obj));
            obj1 = (String)((JSONObject) (obj1)).get("token");
            avoid = ((Void []) (obj));
_L1:
            JSONException jsonexception;
            if (avoid.intValue() > 0)
            {
                return null;
            } else
            {
                return ((String) (obj1));
            }
            jsonexception;
            jsonexception.printStackTrace();
            obj1 = obj2;
              goto _L1
            avoid;
            return null;
            if (true) goto _L3; else goto _L2
_L2:
        }

        protected volatile void onPostExecute(Object obj)
        {
            onPostExecute((String)obj);
        }

        protected void onPostExecute(String s)
        {
            dialog.dismiss();
            if (s != null)
            {
                saveFileData(tokenFileName, s);
                passwordField.setText("", android.widget.TextView.BufferType.EDITABLE);
                isUserLoggedIn = true;
                checkCredentialsButton.setText(0x7f05001a);
                checkCredentialsButton.getBackground().setColorFilter(0xff00ff00, android.graphics.PorterDuff.Mode.MULTIPLY);
                ((InputMethodManager)getSystemService("input_method")).hideSoftInputFromWindow(getCurrentFocus().getWindowToken(), 2);
                return;
            } else
            {
                isUserLoggedIn = false;
                showAlert(alertTitle, alertMessage);
                checkCredentialsButton.getBackground().setColorFilter(-256, android.graphics.PorterDuff.Mode.MULTIPLY);
                resetLogin();
                return;
            }
        }

        private getTokenThread()
        {
            this$0 = UserLogin.this;
            super();
        }

        getTokenThread(getTokenThread gettokenthread)
        {
            this();
        }
    }


    String alertButton;
    AlertDialog alertDialog;
    String alertMessage;
    String alertTitle;
    UNIverse application;
    private String authTokenURL;
    Button checkCredentialsButton;
    private String checkTokenURL;
    final Context context = this;
    ProgressDialog dialog;
    String eMailFileName;
    String email;
    EditText emailField;
    public boolean focusIsInsideActivity;
    boolean isUserLoggedIn;
    TextView loginDescription;
    TextView loginTitle;
    FileOutputStream outputStream;
    String password;
    EditText passwordField;
    String passwordFileName;
    String token;
    String tokenFileName;

    public UserLogin()
    {
        authTokenURL = "https://www.studentenwerk-karlsruhe.de/json_interface/auth/";
        checkTokenURL = "https://www.studentenwerk-karlsruhe.de/json_interface/auth/check/";
        eMailFileName = "swka_email";
        tokenFileName = "swka_token";
        passwordFileName = "swka_password";
        alertTitle = "Fehler";
        alertMessage = "Es ist ein Fehler w\344hrend der Authentifizierung aufgetreten. Bitte \374berpr\374fen Sie Ihre Angaben";
        alertButton = "OK";
        alertDialog = null;
    }

    public static String HTTPConnect(String s, List list)
    {
        DefaultHttpClient defaulthttpclient;
        defaulthttpclient = new DefaultHttpClient();
        defaulthttpclient.getCredentialsProvider().setCredentials(new AuthScope(AuthScope.ANY_HOST, -1), new UsernamePasswordCredentials("jsonapi", "AhVai6OoCh3Quoo6ji"));
        s = new HttpPost(s);
        if (list == null)
        {
            break MISSING_BLOCK_LABEL_64;
        }
        s.setEntity(new UrlEncodedFormEntity(list));
        s = defaulthttpclient.execute(s).getEntity();
        if (s == null)
        {
            break MISSING_BLOCK_LABEL_102;
        }
        s = s.getContent();
        list = convertStreamToString(s);
        s.close();
        return list;
        s;
        s.printStackTrace();
_L2:
        return null;
        s;
        s.printStackTrace();
        if (true) goto _L2; else goto _L1
_L1:
    }

    public static String convertStreamToString(InputStream inputstream)
    {
        StringBuilder stringbuilder;
        BufferedReader bufferedreader;
        bufferedreader = new BufferedReader(new InputStreamReader(inputstream));
        stringbuilder = new StringBuilder();
_L2:
        String s = bufferedreader.readLine();
label0:
        {
            {
                if (s != null)
                {
                    break label0;
                }
                Exception exception;
                IOException ioexception;
                try
                {
                    inputstream.close();
                }
                // Misplaced declaration of an exception variable
                catch (InputStream inputstream)
                {
                    inputstream.printStackTrace();
                }
            }
            return stringbuilder.toString();
        }
        stringbuilder.append((new StringBuilder(String.valueOf(s))).append("\n").toString());
        continue; /* Loop/switch isn't completed */
        ioexception;
        ioexception.printStackTrace();
        try
        {
            inputstream.close();
        }
        // Misplaced declaration of an exception variable
        catch (InputStream inputstream)
        {
            inputstream.printStackTrace();
        }
        if (false)
        {
        } else
        {
            break MISSING_BLOCK_LABEL_37;
        }
        exception;
        try
        {
            inputstream.close();
        }
        // Misplaced declaration of an exception variable
        catch (InputStream inputstream)
        {
            inputstream.printStackTrace();
        }
        throw exception;
        if (true) goto _L2; else goto _L1
_L1:
    }

    private void rememberEmailField()
    {
        String s = loadFileData(eMailFileName);
        if (s != null)
        {
            emailField.setText(s, android.widget.TextView.BufferType.EDITABLE);
        }
    }

    public boolean authenticate()
    {
        (new getTokenThread(null)).execute(new Void[0]);
        return isUserLoggedIn;
    }

    public boolean check()
    {
        (new checkTokenThread(null)).execute(new Void[0]);
        return isUserLoggedIn;
    }

    public String loadFileData(String s)
    {
        if (s != null) goto _L2; else goto _L1
_L1:
        s = null;
_L6:
        return s;
_L2:
        Object obj;
        byte abyte0[];
        s = openFileInput(s);
        obj = new StringBuffer("");
        abyte0 = new byte[1024];
_L8:
        int i = s.read(abyte0);
        if (i != -1) goto _L4; else goto _L3
_L3:
        try
        {
            obj = ((StringBuffer) (obj)).toString().trim();
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            s.printStackTrace();
            return null;
        }
        s = ((String) (obj));
        if (((String) (obj)).length() > 0) goto _L6; else goto _L5
_L5:
        if (obj == "")
        {
            return null;
        } else
        {
            return null;
        }
_L4:
        if (i - 1 <= 0) goto _L8; else goto _L7
_L7:
        ((StringBuffer) (obj)).append(new String(abyte0));
          goto _L8
    }

    public void onBack(View view)
    {
        view = new Intent();
        setResult(-1, view);
        view.setClass(this, com/studentenwerk/activities/Settings);
        finish();
    }

    public void onClickCheckCredentials(View view)
    {
        dialog = ProgressDialog.show(this, "", getString(0x7f050016), true);
        view = ((EditText)findViewById(0x7f090009)).getText().toString();
        String s = ((EditText)findViewById(0x7f09000b)).getText().toString();
        saveFileData(eMailFileName, view);
        saveFileData(passwordFileName, s);
        authenticate();
    }

    protected void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        isUserLoggedIn = false;
        application = (UNIverse)getApplication();
        focusIsInsideActivity = true;
        bundle = Boolean.valueOf(false);
        setContentView(0x7f030004);
        emailField = (EditText)findViewById(0x7f090009);
        passwordField = (EditText)findViewById(0x7f09000b);
        loginTitle = (TextView)findViewById(0x7f090007);
        loginDescription = (TextView)findViewById(0x7f09000d);
        checkCredentialsButton = (Button)findViewById(0x7f09000c);
        checkCredentialsButton.setText(0x7f050019);
        passwordField.setTransformationMethod(new PasswordTransformationMethod());
        if (android.os.Build.VERSION.SDK_INT >= 11)
        {
            getActionBar().setHomeButtonEnabled(true);
            getActionBar().setDisplayHomeAsUpEnabled(true);
            getActionBar().setBackgroundDrawable(new ColorDrawable(0xff888888));
        }
        String s = loadFileData(eMailFileName);
        if (s != null)
        {
            emailField.setText(s);
            bundle = Boolean.valueOf(check());
        }
        if (bundle.booleanValue())
        {
            rememberEmailField();
            checkCredentialsButton.getBackground().setColorFilter(0xff00ff00, android.graphics.PorterDuff.Mode.MULTIPLY);
            return;
        } else
        {
            passwordField.setHint("Pflichtfeld");
            checkCredentialsButton.getBackground().setColorFilter(-256, android.graphics.PorterDuff.Mode.MULTIPLY);
            return;
        }
    }

    public boolean onOptionsItemSelected(MenuItem menuitem)
    {
        switch (menuitem.getItemId())
        {
        default:
            return super.onOptionsItemSelected(menuitem);

        case 16908332: 
            finish();
            break;
        }
        return true;
    }

    public void resetLogin()
    {
        saveFileData(eMailFileName, "");
        saveFileData(passwordFileName, "");
        saveFileData(tokenFileName, "");
        checkCredentialsButton.setText(0x7f050019);
        checkCredentialsButton.getBackground().setColorFilter(-256, android.graphics.PorterDuff.Mode.MULTIPLY);
        passwordField.setText("", android.widget.TextView.BufferType.EDITABLE);
    }

    public boolean saveFileData(String s, String s1)
    {
        try
        {
            s = openFileOutput(s, 0);
            s.write(s1.getBytes());
            s.close();
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            s.printStackTrace();
            return false;
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            s.printStackTrace();
            return false;
        }
        return true;
    }

    public void showAlert(String s, String s1)
    {
        final AlertDialog alertDialog = (new android.app.AlertDialog.Builder(this)).create();
        alertDialog.setTitle(s);
        alertDialog.setMessage(s1);
        alertDialog.setButton(alertButton, new android.content.DialogInterface.OnClickListener() {

            final UserLogin this$0;
            private final AlertDialog val$alertDialog;

            public void onClick(DialogInterface dialoginterface, int i)
            {
                alertDialog.dismiss();
            }

            
            {
                this$0 = UserLogin.this;
                alertDialog = alertdialog;
                super();
            }
        });
        alertDialog.show();
    }


}
