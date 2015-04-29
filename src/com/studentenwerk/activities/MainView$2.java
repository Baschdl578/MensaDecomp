// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.studentenwerk.activities;

import android.app.ProgressDialog;
import com.studentenwerk.UNIverse;

// Referenced classes of package com.studentenwerk.activities:
//            MainView

class this._cls0
    implements Runnable
{

    final MainView this$0;

    public void run()
    {
        MainView.access$2(MainView.this).dismiss();
        if (((UNIverse)getApplication()).getData(0) == null)
        {
            showDialog(0);
        }
    }

    ()
    {
        this$0 = MainView.this;
        super();
    }
}
