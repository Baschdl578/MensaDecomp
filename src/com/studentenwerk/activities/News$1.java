// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.studentenwerk.activities;

import android.app.ProgressDialog;
import com.studentenwerk.classes.NewsAdapter;

// Referenced classes of package com.studentenwerk.activities:
//            News

class this._cls0
    implements Runnable
{

    final News this$0;

    public void run()
    {
        News.access$0(News.this).dismiss();
        News.access$1(News.this).notifyDataSetChanged();
    }

    r()
    {
        this$0 = News.this;
        super();
    }
}
