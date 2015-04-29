// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.studentenwerk.activities;

import org.json.JSONException;

// Referenced classes of package com.studentenwerk.activities:
//            News

class this._cls0 extends Thread
{

    final News this$0;

    public void run()
    {
        try
        {
            News.access$2(News.this);
            return;
        }
        catch (JSONException jsonexception)
        {
            jsonexception.printStackTrace();
        }
    }

    ()
    {
        this$0 = News.this;
        super();
    }
}
