// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.studentenwerk.activities;

import android.app.ActionBar;
import android.app.ListActivity;
import android.content.Intent;
import android.graphics.drawable.ColorDrawable;
import android.os.Bundle;
import android.view.MenuItem;
import android.view.View;
import android.widget.ArrayAdapter;
import android.widget.ListView;
import java.text.SimpleDateFormat;
import java.util.Date;

public class MealDatePicker extends ListActivity
{

    private long dates[];
    private final SimpleDateFormat df = new SimpleDateFormat("EEEE, d. MMMM");

    public MealDatePicker()
    {
    }

    protected void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        dates = getIntent().getExtras().getLongArray("aviableDates");
        bundle = new String[dates.length];
        int j = 0;
        long al[] = dates;
        int k = al.length;
        int i = 0;
        do
        {
            if (i >= k)
            {
                setListAdapter(new ArrayAdapter(this, 0x7f03000f, bundle));
                if (android.os.Build.VERSION.SDK_INT >= 11)
                {
                    getActionBar().setHomeButtonEnabled(true);
                    getActionBar().setDisplayHomeAsUpEnabled(true);
                    getActionBar().setBackgroundDrawable(new ColorDrawable(0xff888888));
                }
                return;
            }
            Date date = new Date(1000L * al[i]);
            bundle[j] = df.format(date);
            j++;
            i++;
        } while (true);
    }

    protected void onListItemClick(ListView listview, View view, int i, long l)
    {
        listview = getIntent();
        listview.putExtra("dateKey", i);
        setResult(2, listview);
        finish();
    }

    public boolean onOptionsItemSelected(MenuItem menuitem)
    {
        switch (menuitem.getItemId())
        {
        default:
            return super.onOptionsItemSelected(menuitem);

        case 16908332: 
            finish();
            break;
        }
        return true;
    }
}
