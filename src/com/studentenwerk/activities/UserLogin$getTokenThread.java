// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.studentenwerk.activities;

import android.app.ProgressDialog;
import android.graphics.drawable.Drawable;
import android.os.AsyncTask;
import android.view.View;
import android.view.inputmethod.InputMethodManager;
import android.widget.Button;
import android.widget.EditText;
import java.util.ArrayList;
import java.util.List;
import org.apache.http.message.BasicNameValuePair;
import org.json.JSONException;
import org.json.JSONObject;

// Referenced classes of package com.studentenwerk.activities:
//            UserLogin

private class <init> extends AsyncTask
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
        obj = UserLogin.HTTPConnect(UserLogin.access$0(UserLogin.this), ((List) (obj)));
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
            passwordField.setText("", android.widget.BLE);
            isUserLoggedIn = true;
            checkCredentialsButton.setText(0x7f05001a);
            checkCredentialsButton.getBackground().setColorFilter(0xff00ff00, android.graphics.rFilter);
            ((InputMethodManager)getSystemService("input_method")).hideSoftInputFromWindow(getCurrentFocus().getWindowToken(), 2);
            return;
        } else
        {
            isUserLoggedIn = false;
            showAlert(alertTitle, alertMessage);
            checkCredentialsButton.getBackground().setColorFilter(-256, android.graphics.rFilter);
            resetLogin();
            return;
        }
    }

    private ()
    {
        this$0 = UserLogin.this;
        super();
    }

    this._cls0(this._cls0 _pcls0)
    {
        this();
    }
}
