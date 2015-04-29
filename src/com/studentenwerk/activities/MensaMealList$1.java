// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.studentenwerk.activities;

import android.app.ProgressDialog;
import android.widget.TextView;
import com.studentenwerk.classes.GroupedListAdapter;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;

// Referenced classes of package com.studentenwerk.activities:
//            MensaMealList

class this._cls0
    implements Runnable
{

    final MensaMealList this$0;

    public void run()
    {
        MensaMealList.access$0(MensaMealList.this).dismiss();
        Calendar calendar = Calendar.getInstance();
        calendar.setTimeInMillis(((Long)MensaMealList.access$1(MensaMealList.this).get(MensaMealList.access$2(MensaMealList.this))).longValue() * 1000L);
        ((TextView)findViewById(0x7f090010)).setText(MensaMealList.access$3(MensaMealList.this).format(calendar.getTime()));
        ((TextView)findViewById(0x7f090013)).setText(MensaMealList.access$4(MensaMealList.this));
        MensaMealList.access$5(MensaMealList.this).notifyDataSetChanged();
    }

    ()
    {
        this$0 = MensaMealList.this;
        super();
    }
}
