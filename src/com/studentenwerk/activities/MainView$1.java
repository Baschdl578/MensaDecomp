// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.studentenwerk.activities;

import android.os.Handler;
import com.studentenwerk.UNIverse;

// Referenced classes of package com.studentenwerk.activities:
//            MainView

class this._cls0 extends Thread
{

    final MainView this$0;

    public void run()
    {
        ((UNIverse)getApplication()).loadData(0);
        MainView.access$0(MainView.this).post(MainView.access$1(MainView.this));
    }

    ()
    {
        this$0 = MainView.this;
        super();
    }
}
