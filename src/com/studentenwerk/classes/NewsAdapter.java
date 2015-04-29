// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.studentenwerk.classes;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.BaseAdapter;
import android.widget.TextView;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;

public class NewsAdapter extends BaseAdapter
{

    private final ArrayAdapter headers;
    private LayoutInflater inflater;
    private final Map sections = new LinkedHashMap();

    public NewsAdapter(Context context)
    {
        inflater = null;
        headers = new ArrayAdapter(context, 0x7f030006);
        inflater = LayoutInflater.from(context);
    }

    public void addSection(long l, String s, String s1)
    {
        Object obj = new SimpleDateFormat("dd.MM.yyyy");
        Object obj1 = Calendar.getInstance();
        ((Calendar) (obj1)).setTimeInMillis(1000L * l);
        obj = ((SimpleDateFormat) (obj)).format(((Calendar) (obj1)).getTime());
        headers.add(obj);
        obj1 = inflater.inflate(0x7f03000b, null);
        ((TextView)((View) (obj1)).findViewById(0x7f09002c)).setText(s);
        ((TextView)((View) (obj1)).findViewById(0x7f09002d)).setText(s1);
        sections.put(obj, new View[] {
            obj1
        });
    }

    public boolean areAllItemsEnabled()
    {
        return false;
    }

    public boolean areAllItemsSelectable()
    {
        return false;
    }

    public void clearData()
    {
        headers.clear();
        sections.clear();
    }

    public int getCount()
    {
        int i = 0;
        Iterator iterator = sections.values().iterator();
        do
        {
            if (!iterator.hasNext())
            {
                return i;
            }
            i += ((View[])iterator.next()).length + 1;
        } while (true);
    }

    public Object getItem(int i)
    {
        Iterator iterator = sections.keySet().iterator();
_L6:
        if (iterator.hasNext()) goto _L2; else goto _L1
_L1:
        Object obj = null;
_L4:
        return obj;
_L2:
        Object obj1;
        int j;
        obj1 = iterator.next();
        j = ((View[])sections.get(obj1)).length + 1;
        obj = obj1;
        if (i == 0) goto _L4; else goto _L3
_L3:
        if (i < j)
        {
            return ((View[])sections.get(obj1))[i - 1];
        }
        i -= j;
        if (true) goto _L6; else goto _L5
_L5:
    }

    public long getItemId(int i)
    {
        return (long)i;
    }

    public int getItemViewType(int i)
    {
        return -1;
    }

    public View getView(int i, View view, ViewGroup viewgroup)
    {
        boolean flag = false;
        Iterator iterator = sections.keySet().iterator();
        int j = i;
        i = ((flag) ? 1 : 0);
        do
        {
            if (!iterator.hasNext())
            {
                return null;
            }
            Object obj = iterator.next();
            int k = ((View[])sections.get(obj)).length + 1;
            if (j == 0)
            {
                return headers.getView(i, view, viewgroup);
            }
            if (j < k)
            {
                return ((View[])sections.get(obj))[j - 1];
            }
            j -= k;
            i++;
        } while (true);
    }

    public int getViewTypeCount()
    {
        return 2;
    }

    public boolean isEnabled(int i)
    {
        return false;
    }
}
