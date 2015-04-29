// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.studentenwerk.activities;

import android.app.Activity;
import android.webkit.WebChromeClient;
import android.webkit.WebView;

// Referenced classes of package com.studentenwerk.activities:
//            ExternalContent

class val.activity extends WebChromeClient
{

    final ExternalContent this$0;
    private final Activity val$activity;

    public void onProgressChanged(WebView webview, int i)
    {
        val$activity.setProgress(i * 100);
    }

    ()
    {
        this$0 = final_externalcontent;
        val$activity = Activity.this;
        super();
    }
}
