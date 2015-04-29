// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.studentenwerk.activities;

import java.util.LinkedHashMap;
import java.util.Set;

// Referenced classes of package com.studentenwerk.activities:
//            MensaMealList

class this._cls0
    implements android.app.gationListener
{

    final MensaMealList this$0;

    public boolean onNavigationItemSelected(int i, long l)
    {
        Object aobj[] = MensaMealList.access$6(MensaMealList.this).keySet().toArray();
        MensaMealList.access$7(MensaMealList.this, (String)aobj[i]);
        MensaMealList.access$8(MensaMealList.this, null);
        return true;
    }

    ()
    {
        this$0 = MensaMealList.this;
        super();
    }
}
