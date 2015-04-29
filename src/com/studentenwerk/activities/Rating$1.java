// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.studentenwerk.activities;

import android.os.Handler;
import com.studentenwerk.UNIverse;

// Referenced classes of package com.studentenwerk.activities:
//            Rating

class this._cls0 extends Thread
{

    final Rating this$0;

    public void run()
    {
        UNIverse.connect("https://www.studentenwerk-karlsruhe.de/de//json_interface/canteen/rating.php", Rating.access$0(Rating.this));
        setResult(-1);
        Rating.access$1(Rating.this).post(Rating.access$2(Rating.this));
    }

    ()
    {
        this$0 = Rating.this;
        super();
    }
}
