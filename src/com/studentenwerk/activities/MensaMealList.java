// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.studentenwerk.activities;

import android.app.ActionBar;
import android.app.ListActivity;
import android.app.ProgressDialog;
import android.content.Intent;
import android.content.SharedPreferences;
import android.graphics.drawable.ColorDrawable;
import android.os.Bundle;
import android.os.Handler;
import android.view.MenuItem;
import android.view.View;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.widget.ArrayAdapter;
import android.widget.ImageButton;
import android.widget.ListView;
import android.widget.TextView;
import com.studentenwerk.UNIverse;
import com.studentenwerk.classes.GroupedListAdapter;
import java.io.Serializable;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Calendar;
import java.util.Collection;
import java.util.Collections;
import java.util.Date;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

// Referenced classes of package com.studentenwerk.activities:
//            MealDatePicker, MensaMealDetail

public class MensaMealList extends ListActivity
{

    static final int PICK_DATE_REQUEST = 0;
    private int actDateKey;
    private JSONObject actMensaObj;
    private ArrayList aviableDates;
    private String chosenMensa;
    private final SimpleDateFormat df = new SimpleDateFormat("E, d.MMMM");
    private ProgressDialog dialog;
    private String formatedDate;
    private ArrayList lineArr;
    private GroupedListAdapter listAdapter;
    ListView lv;
    private Handler mHandler;
    private JSONObject meals;
    private String mensaName;
    private LinkedHashMap mensenList;
    private MensaMealList mml;
    private boolean nextObj;
    private boolean prevObj;
    private Runnable showUpdate;
    private JSONArray sortedLines;

    public MensaMealList()
    {
        aviableDates = new ArrayList();
        actDateKey = 2;
        meals = null;
        mensaName = "";
        lineArr = new ArrayList();
        sortedLines = null;
        formatedDate = null;
        prevObj = true;
        nextObj = true;
        showUpdate = new Runnable() {

            final MensaMealList this$0;

            public void run()
            {
                dialog.dismiss();
                Calendar calendar = Calendar.getInstance();
                calendar.setTimeInMillis(((Long)aviableDates.get(actDateKey)).longValue() * 1000L);
                ((TextView)findViewById(0x7f090010)).setText(df.format(calendar.getTime()));
                ((TextView)findViewById(0x7f090013)).setText(formatedDate);
                listAdapter.notifyDataSetChanged();
            }

            
            {
                this$0 = MensaMealList.this;
                super();
            }
        };
    }

    private void afterClick()
    {
        Calendar calendar = Calendar.getInstance();
        ((ImageButton)findViewById(0x7f090011)).setEnabled(true);
        ((ImageButton)findViewById(0x7f09000f)).setEnabled(true);
        prevObj = true;
        nextObj = true;
        if (actDateKey + 1 >= aviableDates.size())
        {
            ((ImageButton)findViewById(0x7f090011)).setEnabled(false);
            nextObj = false;
        }
        if (actDateKey - 1 < 0)
        {
            ((ImageButton)findViewById(0x7f09000f)).setEnabled(false);
            prevObj = false;
        }
        calendar.setTimeInMillis(((Long)aviableDates.get(actDateKey)).longValue() * 1000L);
        ((UNIverse)getApplication()).setChosenDate(calendar);
        ((TextView)findViewById(0x7f090010)).setText(df.format(calendar.getTime()));
        loadMensaData();
        listAdapter.notifyDataSetChanged();
    }

    private void loadData()
    {
        Object obj;
        UNIverse universe;
        JSONObject jsonobject;
        ArrayList arraylist;
        int i;
        universe = (UNIverse)getApplication();
        jsonobject = universe.getData(0);
        lineArr = new ArrayList();
        obj = "";
        arraylist = ((UNIverse)getApplication()).getSettingArr("blacklists");
        i = 0;
_L5:
        if (i < arraylist.size()) goto _L2; else goto _L1
_L1:
        universe.loadData(1, (new StringBuilder("?mensa[]=")).append(chosenMensa).append(((String) (obj))).toString(), chosenMensa);
        aviableDates = new ArrayList();
        actMensaObj = jsonobject.getJSONObject("mensa").getJSONObject(chosenMensa);
        sortedLines = actMensaObj.getJSONArray("lines_sort");
        mensaName = actMensaObj.getString("name");
        obj = universe.getData(1);
        if (obj != null)
        {
            break; /* Loop/switch isn't completed */
        }
        Object obj1;
        long l;
        try
        {
            dialog.dismiss();
            mml.setResult(2);
            mml.finish();
            return;
        }
        catch (JSONException jsonexception)
        {
            mensaName = "Error";
            actMensaObj = new JSONObject();
            jsonexception.printStackTrace();
        }
          goto _L3
_L2:
        obj = (new StringBuilder(String.valueOf(obj))).append("&bl[]=").append((String)arraylist.get(i)).toString();
        i++;
        if (true) goto _L5; else goto _L4
_L4:
        meals = ((JSONObject) (obj)).getJSONObject(chosenMensa);
        l = ((JSONObject) (obj)).getLong("import_date");
        obj = new SimpleDateFormat("dd.MM.yy kk:mm");
        obj1 = new Date(Long.valueOf(l).longValue() * 1000L);
        formatedDate = (new StringBuilder("Stand: ")).append(((SimpleDateFormat) (obj)).format(((Date) (obj1)))).append(" Uhr").toString();
        obj = meals.keys();
_L6:
        if (((Iterator) (obj)).hasNext())
        {
            break MISSING_BLOCK_LABEL_421;
        }
        Collections.sort(aviableDates);
_L3:
        if (universe.getChosenDate() == null)
        {
            obj = Calendar.getInstance();
            ((Calendar) (obj)).set(11, 0);
            ((Calendar) (obj)).set(12, 0);
            ((Calendar) (obj)).set(13, 0);
            ((Calendar) (obj)).set(14, 0);
            universe.setChosenDate(((Calendar) (obj)));
            l = ((Calendar) (obj)).getTimeInMillis() / 1000L;
            i = aviableDates.indexOf(Long.valueOf(l));
            if (i > -1)
            {
                actDateKey = i;
            }
        } else
        {
            int j = aviableDates.indexOf(Long.valueOf(universe.getChosenDate().getTimeInMillis() / 1000L));
            if (j > -1)
            {
                actDateKey = j;
            }
        }
        loadMensaData();
        mHandler.post(showUpdate);
        return;
        obj1 = ((Iterator) (obj)).next();
        aviableDates.add(Long.valueOf(Long.parseLong(obj1.toString())));
          goto _L6
    }

    private void startThread(String s)
    {
        dialog = ProgressDialog.show(this, "", getString(0x7f050016), true);
        Thread thread = new Thread() {

            final MensaMealList this$0;

            public void run()
            {
                loadData();
            }

            
            {
                this$0 = MensaMealList.this;
                super();
            }
        };
        if (s != null)
        {
            setTitle(s);
        }
        thread.start();
    }

    public void calendarClicked(View view)
    {
        view = new Intent(this, com/studentenwerk/activities/MealDatePicker);
        int j = 0;
        long al[] = new long[aviableDates.size()];
        Object aobj[] = aviableDates.toArray();
        int k = aobj.length;
        int i = 0;
        do
        {
            if (i >= k)
            {
                view.putExtra("aviableDates", al);
                startActivityForResult(view, 0);
                return;
            }
            al[j] = Long.parseLong(aobj[i].toString());
            j++;
            i++;
        } while (true);
    }

    public void loadMensaData()
    {
        JSONObject jsonobject = null;
        JSONObject jsonobject1 = meals.getJSONObject(String.format("%d", new Object[] {
            aviableDates.get(actDateKey)
        }));
        jsonobject = jsonobject1;
_L4:
        String s;
        JSONArray jsonarray;
        int i;
        int j;
        try
        {
            listAdapter.clearData();
        }
        catch (Exception exception)
        {
            exception.printStackTrace();
            return;
        }
        i = 0;
_L1:
        if (i >= sortedLines.length())
        {
            return;
        }
        s = sortedLines.getString(i);
        jsonarray = jsonobject.getJSONArray(s);
        lineArr.add("");
        j = 0;
_L2:
        if (j < jsonarray.length())
        {
            break MISSING_BLOCK_LABEL_128;
        }
        listAdapter.addSection(actMensaObj.getJSONObject("lines").getString(s), jsonarray);
        i++;
          goto _L1
        lineArr.add(s);
        j++;
          goto _L2
        JSONException jsonexception;
        jsonexception;
        if (true) goto _L4; else goto _L3
_L3:
    }

    public void nextClicked(View view)
    {
        actDateKey = actDateKey + 1;
        afterClick();
    }

    protected void onActivityResult(int i, int j, Intent intent)
    {
        if (i == 0 && j == -1)
        {
            actDateKey = intent.getExtras().getInt("dateKey");
            afterClick();
        }
    }

    protected void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        getListView().setBackgroundColor(0xff888888);
        listAdapter = new GroupedListAdapter(this);
        bundle = getSharedPreferences("settings", 0);
        listAdapter.setPriceType((new StringBuilder("price_")).append(bundle.getString("defaultPrice", "1")).toString());
        setTitle("");
        setListAdapter(listAdapter);
        setContentView(0x7f030007);
        chosenMensa = getIntent().getExtras().getString("actMensa");
        mensenList = ((UNIverse)getApplication()).getOrderedCanteenList(true);
        bundle = ((Bundle) (mensenList.values().toArray()));
        mHandler = new Handler();
        if (((UNIverse)getApplication()).checkNetwork())
        {
            WebView webview = (WebView)findViewById(0x7f090005);
            webview.getSettings().setJavaScriptEnabled(true);
            webview.loadUrl("http://www.studentenwerk-karlsruhe.de/mobile/ads/");
        }
        mml = this;
        if (android.os.Build.VERSION.SDK_INT >= 11)
        {
            ActionBar actionbar = getActionBar();
            actionbar.setHomeButtonEnabled(true);
            actionbar.setDisplayHomeAsUpEnabled(true);
            actionbar.setBackgroundDrawable(new ColorDrawable(0xff888888));
            if (bundle.length > 1)
            {
                bundle = new ArrayAdapter(this, 0x7f03000a, (String[])Arrays.asList(bundle).toArray(new String[bundle.length]));
                actionbar.setNavigationMode(1);
                actionbar.setListNavigationCallbacks(bundle, new android.app.ActionBar.OnNavigationListener() {

                    final MensaMealList this$0;

                    public boolean onNavigationItemSelected(int i, long l)
                    {
                        Object aobj[] = mensenList.keySet().toArray();
                        chosenMensa = (String)aobj[i];
                        startThread(null);
                        return true;
                    }

            
            {
                this$0 = MensaMealList.this;
                super();
            }
                });
                actionbar.setSelectedNavigationItem(Arrays.asList(mensenList.keySet().toArray()).indexOf(chosenMensa));
                return;
            } else
            {
                actionbar.setTitle((String)bundle[0]);
                startThread(null);
                return;
            }
        } else
        {
            startThread((String)mensenList.get(chosenMensa));
            return;
        }
    }

    protected void onListItemClick(ListView listview, View view, int i, long l)
    {
        for (listview = listAdapter.getData(i); listview == null || !listview.has("meal");)
        {
            return;
        }

        startActivity((new Intent(this, com/studentenwerk/activities/MensaMealDetail)).putExtra("meal", listview.toString()).putExtra("mensa", chosenMensa).putExtra("line", (String)lineArr.get(i)).putExtra("date", (Serializable)aviableDates.get(actDateKey)));
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

    public void prevClicked(View view)
    {
        actDateKey = actDateKey - 1;
        afterClick();
    }










}
