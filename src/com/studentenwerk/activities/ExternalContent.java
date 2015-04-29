// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.studentenwerk.activities;

import android.app.ActionBar;
import android.app.Activity;
import android.content.Intent;
import android.content.res.Resources;
import android.graphics.drawable.ColorDrawable;
import android.net.Uri;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.MenuItem;
import android.view.Window;
import android.webkit.HttpAuthHandler;
import android.webkit.WebChromeClient;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.Toast;
import java.io.FileInputStream;
import java.io.IOException;

public class ExternalContent extends Activity
{

    private WebView extContent;
    private String extContentURL[];
    private String httpAuthPassword;
    private String httpAuthUser;
    private String webHost;

    public ExternalContent()
    {
        webHost = Uri.parse("https://www.studentenwerk-karlsruhe.de/de/").getHost();
        httpAuthUser = "jsonapi";
        httpAuthPassword = "AhVai6OoCh3Quoo6ji";
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

    public void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        bundle = loadFileData("swka_token");
        int i;
        if (bundle != null)
        {
            bundle = (new StringBuilder("&token=")).append(bundle).toString();
        } else
        {
            bundle = "";
        }
        extContentURL = (new String[] {
            (new StringBuilder("https://www.studentenwerk-karlsruhe.de/de//mobile/room_board/?webview=1")).append(bundle).toString(), (new StringBuilder("https://www.studentenwerk-karlsruhe.de/de//mobile/job_board/?webview=1")).append(bundle).toString(), (new StringBuilder("https://www.studentenwerk-karlsruhe.de/de//mobile/blackboard/?webview=1")).append(bundle).toString(), (new StringBuilder("https://www.studentenwerk-karlsruhe.de/de//mobile/tandem/?webview=1")).append(bundle).toString(), (new StringBuilder("https://www.studentenwerk-karlsruhe.de/de//mobile/event_board/?webview=1")).append(bundle).toString(), (new StringBuilder("https://www.studentenwerk-karlsruhe.de/de//mobile/info/?webview=1")).append(bundle).toString(), (new StringBuilder("https://www.studentenwerk-karlsruhe.de/de//mobile/beratung/?webview=1")).append(bundle).toString()
        });
        getWindow().requestFeature(2);
        extContent = new WebView(this);
        extContent.getSettings().setJavaScriptEnabled(true);
        extContent.setWebChromeClient(new WebChromeClient() {

            final ExternalContent this$0;
            private final Activity val$activity;

            public void onProgressChanged(WebView webview, int j)
            {
                activity.setProgress(j * 100);
            }

            
            {
                this$0 = ExternalContent.this;
                activity = activity1;
                super();
            }
        });
        extContent.setWebViewClient(new WebViewClient() {

            final ExternalContent this$0;
            private final Activity val$activity;

            public void onReceivedError(WebView webview, int j, String s, String s1)
            {
                Toast.makeText(activity, getResources().getString(0x7f05000e), 1).show();
                finish();
            }

            public void onReceivedHttpAuthRequest(WebView webview, HttpAuthHandler httpauthhandler, String s, String s1)
            {
                httpauthhandler.proceed(httpAuthUser, httpAuthPassword);
            }

            public boolean shouldOverrideUrlLoading(WebView webview, String s)
            {
                if (s.startsWith("tel:"))
                {
                    startActivity(new Intent("android.intent.action.DIAL", Uri.parse(s)));
                    return true;
                }
                if (s.startsWith("mailto:"))
                {
                    webview = new Intent("android.intent.action.VIEW", Uri.parse(s));
                    startActivity(webview);
                    return true;
                }
                webview = Uri.parse(s).getQueryParameter("openInSafari");
                if (webview != null && webview.equals("yes"))
                {
                    webview = new Intent("android.intent.action.VIEW", Uri.parse(s));
                    startActivity(webview);
                    return true;
                }
                if (Uri.parse(s).getHost().equals(webHost))
                {
                    return false;
                } else
                {
                    webview = new Intent("android.intent.action.VIEW", Uri.parse(s));
                    startActivity(webview);
                    return true;
                }
            }

            
            {
                this$0 = ExternalContent.this;
                activity = activity1;
                super();
            }
        });
        setContentView(extContent);
        getWindow().setFeatureInt(2, -1);
        if (android.os.Build.VERSION.SDK_INT >= 11)
        {
            getActionBar().setHomeButtonEnabled(true);
            getActionBar().setDisplayHomeAsUpEnabled(true);
            getActionBar().setBackgroundDrawable(new ColorDrawable(0xff888888));
        }
        i = getIntent().getExtras().getInt("section");
        if (i >= 0 && i < extContentURL.length)
        {
            extContent.loadUrl(extContentURL[i]);
            return;
        } else
        {
            Toast.makeText(this, getResources().getString(0x7f05000e), 1).show();
            finish();
            return;
        }
    }

    public boolean onKeyDown(int i, KeyEvent keyevent)
    {
        if (i == 4 && extContent.canGoBack())
        {
            extContent.goBack();
            return true;
        } else
        {
            return super.onKeyDown(i, keyevent);
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



}
