// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.studentenwerk.activities;

import android.app.Activity;
import android.content.Intent;
import android.content.res.Resources;
import android.net.Uri;
import android.webkit.HttpAuthHandler;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.Toast;

// Referenced classes of package com.studentenwerk.activities:
//            ExternalContent

class val.activity extends WebViewClient
{

    final ExternalContent this$0;
    private final Activity val$activity;

    public void onReceivedError(WebView webview, int i, String s, String s1)
    {
        Toast.makeText(val$activity, getResources().getString(0x7f05000e), 1).show();
        finish();
    }

    public void onReceivedHttpAuthRequest(WebView webview, HttpAuthHandler httpauthhandler, String s, String s1)
    {
        httpauthhandler.proceed(ExternalContent.access$0(ExternalContent.this), ExternalContent.access$1(ExternalContent.this));
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
        if (Uri.parse(s).getHost().equals(ExternalContent.access$2(ExternalContent.this)))
        {
            return false;
        } else
        {
            webview = new Intent("android.intent.action.VIEW", Uri.parse(s));
            startActivity(webview);
            return true;
        }
    }

    ()
    {
        this$0 = final_externalcontent;
        val$activity = Activity.this;
        super();
    }
}
