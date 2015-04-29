// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.studentenwerk.activities;

import android.app.ProgressDialog;
import android.graphics.drawable.Drawable;
import android.os.AsyncTask;
import android.widget.Button;
import java.util.ArrayList;
import java.util.List;
import org.apache.http.message.BasicNameValuePair;
import org.json.JSONObject;

// Referenced classes of package com.studentenwerk.activities:
//            UserLogin

private class <init> extends AsyncTask
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
        obj = UserLogin.HTTPConnect(UserLogin.access$1(UserLogin.this), ((List) (obj)));
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
            checkCredentialsButton.getBackground().setColorFilter(0xff00ff00, android.graphics.ilter);
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
