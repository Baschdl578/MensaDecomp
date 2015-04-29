// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.studentenwerk.views;

import android.app.ListActivity;
import android.os.Bundle;
import android.view.View;
import android.widget.ArrayAdapter;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.Toast;

public class MensaList extends ListActivity
{

    public MensaList()
    {
    }

    public void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        setListAdapter(new ArrayAdapter(this, 0x7f03000f, new String[] {
            "Android", "iPhone", "WindowsMobile", "Blackberry", "WebOS", "Ubuntu", "Windows7", "Max OS X", "Linux", "OS/2"
        }));
    }

    protected void onListItemClick(ListView listview, View view, int i, long l)
    {
        Toast.makeText(this, (new StringBuilder(String.valueOf((String)getListAdapter().getItem(i)))).append(" selected").toString(), 1).show();
    }
}
