// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.studentenwerk.activities;

import android.app.ProgressDialog;

// Referenced classes of package com.studentenwerk.activities:
//            Rating

class this._cls0
    implements Runnable
{

    final Rating this$0;

    public void run()
    {
        Rating.access$3(Rating.this).dismiss();
        finish();
    }

    ()
    {
        this$0 = Rating.this;
        super();
    }
}
