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
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.widget.ArrayAdapter;
import android.widget.ListView;
import android.widget.Toast;
import com.studentenwerk.UNIverse;
import java.util.Arrays;
import java.util.Collection;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Set;

// Referenced classes of package com.studentenwerk.activities:
//            MensaMealList

public class MensaList extends ListActivity
{

    static final int MEAL_REQUEST = 1;
    LinkedHashMap orderedCanteenList;

    public MensaList()
    {
    }

    private void openMensa(int i)
    {
        String s = (String)orderedCanteenList.keySet().toArray()[i];
        Intent intent = new Intent(this, com/studentenwerk/activities/MensaMealList);
        intent.putExtra("actMensa", s);
        intent.putExtra("mensaList", orderedCanteenList);
        startActivityForResult(intent, 1);
        if (orderedCanteenList.size() == 1)
        {
            finish();
        }
    }

    protected void onActivityResult(int i, int j, Intent intent)
    {
        if (i == 1 && j == 2)
        {
            Toast.makeText(this, "Daten konnten nicht geladen werden!", 1).show();
        }
    }

    protected void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        setContentView(0x7f030003);
        getListView().setBackgroundColor(0xff888888);
        orderedCanteenList = ((UNIverse)getApplication()).getOrderedCanteenList(true);
        if (orderedCanteenList.size() == 1)
        {
            openMensa(0);
        }
        bundle = ((Bundle) (orderedCanteenList.values().toArray()));
        setListAdapter(new ArrayAdapter(this, 0x7f03000f, (String[])Arrays.asList(bundle).toArray(new String[bundle.length])));
        if (android.os.Build.VERSION.SDK_INT >= 11)
        {
            getActionBar().setBackgroundDrawable(new ColorDrawable(0xff888888));
            getActionBar().setHomeButtonEnabled(true);
            getActionBar().setDisplayHomeAsUpEnabled(true);
        }
        if (((UNIverse)getApplication()).checkNetwork())
        {
            bundle = (WebView)findViewById(0x7f090005);
            bundle.getSettings().setJavaScriptEnabled(true);
            bundle.loadUrl("http://www.studentenwerk-karlsruhe.de/mobile/ads/");
        }
    }

    protected void onListItemClick(ListView listview, View view, int i, long l)
    {
        openMensa(i);
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
