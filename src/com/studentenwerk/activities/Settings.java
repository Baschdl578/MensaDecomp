// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.studentenwerk.activities;

import android.app.ActionBar;
import android.app.ExpandableListActivity;
import android.content.Intent;
import android.content.SharedPreferences;
import android.graphics.drawable.ColorDrawable;
import android.os.Bundle;
import android.view.MenuItem;
import android.view.View;
import android.widget.CheckBox;
import android.widget.ExpandableListView;
import com.studentenwerk.UNIverse;
import com.studentenwerk.classes.SettingsAdapter;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Set;
import org.json.JSONObject;

// Referenced classes of package com.studentenwerk.activities:
//            UserLogin

public class Settings extends ExpandableListActivity
{

    private ArrayList arrMensenKeys;
    ExpandableListView list;
    private JSONObject metaData;
    private SettingsAdapter settingsAdapter;

    public Settings()
    {
        arrMensenKeys = new ArrayList();
    }

    private SettingsAdapter getExpAdapter()
    {
        metaData = ((UNIverse)getApplication()).getData(0);
        ArrayList arraylist = new ArrayList();
        Object obj = new HashMap();
        ((HashMap) (obj)).put("setting", "Mensen ausw\344hlen");
        arraylist.add(obj);
        obj = new HashMap();
        ((HashMap) (obj)).put("setting", "Gerichte ausschlie\337en");
        arraylist.add(obj);
        obj = new HashMap();
        ((HashMap) (obj)).put("setting", "Standardpreis festlegen");
        arraylist.add(obj);
        obj = new HashMap();
        ((HashMap) (obj)).put("setting", "Benutzerdaten festlegen");
        arraylist.add(obj);
        obj = new ArrayList();
        ArrayList arraylist1 = new ArrayList();
        Object obj1 = ((UNIverse)getApplication()).getOrderedCanteenList(false);
        Iterator iterator = ((LinkedHashMap) (obj1)).keySet().iterator();
        do
        {
            if (!iterator.hasNext())
            {
                ((ArrayList) (obj)).add(arraylist1);
                arraylist1 = new ArrayList();
                obj1 = new HashMap();
                ((HashMap) (obj1)).put("value", "Kein Schwein");
                ((HashMap) (obj1)).put("key", "pork");
                arraylist1.add(obj1);
                obj1 = new HashMap();
                ((HashMap) (obj1)).put("value", "Kein Rind");
                ((HashMap) (obj1)).put("key", "cow");
                arraylist1.add(obj1);
                obj1 = new HashMap();
                ((HashMap) (obj1)).put("value", "Kein Fisch");
                ((HashMap) (obj1)).put("key", "fish");
                arraylist1.add(obj1);
                ((ArrayList) (obj)).add(arraylist1);
                arraylist1 = new ArrayList();
                obj1 = new HashMap();
                ((HashMap) (obj1)).put("value", getString(0x7f050012));
                ((HashMap) (obj1)).put("key", "1");
                arraylist1.add(obj1);
                ((ArrayList) (obj)).add(arraylist1);
                arraylist1 = new ArrayList();
                obj1 = new HashMap();
                ((HashMap) (obj1)).put("value", getString(0x7f05001b));
                ((HashMap) (obj1)).put("key", "2");
                arraylist1.add(obj1);
                ((ArrayList) (obj)).add(arraylist1);
                return new SettingsAdapter(this, arraylist, 0x7f030002, new String[] {
                    "setting"
                }, new int[] {
                    0x7f090000
                }, ((java.util.List) (obj)), 0x7f030000, new String[] {
                    "value"
                }, new int[] {
                    0x7f090000
                });
            }
            String s = (String)iterator.next();
            HashMap hashmap = new HashMap();
            hashmap.put("value", (String)((LinkedHashMap) (obj1)).get(s));
            hashmap.put("key", s);
            arraylist1.add(hashmap);
        } while (true);
    }

    public void loginUserData_Clicked(View view)
    {
        startActivity(new Intent(this, com/studentenwerk/activities/UserLogin));
    }

    public boolean onChildClick(ExpandableListView expandablelistview, View view, int i, int j, long l)
    {
        String s;
        Object obj;
        Object obj1;
        if (i != 2)
        {
            expandablelistview = (CheckBox)view.findViewById(0x7f090001);
            boolean flag;
            if (expandablelistview.isChecked())
            {
                flag = false;
            } else
            {
                flag = true;
            }
            expandablelistview.setChecked(flag);
        }
        obj = (UNIverse)getApplication();
        s = (String)((HashMap)settingsAdapter.getChild(i, j)).get("key");
        switch (i)
        {
        default:
            return false;

        case 0: // '\0'
            expandablelistview = "mensen";
            break MISSING_BLOCK_LABEL_107;

        case 1: // '\001'
            view = "blacklists";
            obj1 = arrMensenKeys.iterator();
            do
            {
                expandablelistview = view;
                if (!((Iterator) (obj1)).hasNext())
                {
                    continue; /* Loop/switch isn't completed */
                }
                ((UNIverse) (obj)).deleteCache(1, (String)((Iterator) (obj1)).next());
                view = getSharedPreferences("settings", 0);
                obj = view.edit();
                obj1 = new ArrayList();
                j = view.getInt((new StringBuilder("count_")).append(expandablelistview).toString(), 0);
                i = 0;
                do
                {
                    if (i >= j)
                    {
                        if (((ArrayList) (obj1)).contains(s))
                        {
                            ((ArrayList) (obj1)).remove(s);
                        } else
                        {
                            ((ArrayList) (obj1)).add(s);
                        }
                        j = ((ArrayList) (obj1)).size();
                        ((android.content.SharedPreferences.Editor) (obj)).putInt((new StringBuilder("count_")).append(expandablelistview).toString(), j);
                        i = 0;
                        do
                        {
                            if (i >= j)
                            {
                                ((android.content.SharedPreferences.Editor) (obj)).commit();
                                return true;
                            }
                            ((android.content.SharedPreferences.Editor) (obj)).putString((new StringBuilder(String.valueOf(expandablelistview))).append("_").append(i).toString(), (String)((ArrayList) (obj1)).get(i));
                            i++;
                        } while (true);
                    }
                    ((ArrayList) (obj1)).add(view.getString((new StringBuilder(String.valueOf(expandablelistview))).append("_").append(i).toString(), null));
                    i++;
                } while (true);
                if (true) goto _L0; else goto _L0
            } while (true);

        case 2: // '\002'
            return true;

        case 3: // '\003'
            return true;
        }
        continue; /* Loop/switch isn't completed */
        return true;
    }

    protected void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        setContentView(0x7f030001);
        settingsAdapter = getExpAdapter();
        settingsAdapter.setApp((UNIverse)getApplication());
        bundle = getSharedPreferences("settings", 0);
        settingsAdapter.setPriceType(bundle.getString("defaultPrice", "1"));
        setListAdapter(settingsAdapter);
        list = getExpandableListView();
        list.expandGroup(3);
        if (android.os.Build.VERSION.SDK_INT >= 11)
        {
            getActionBar().setHomeButtonEnabled(true);
            getActionBar().setDisplayHomeAsUpEnabled(true);
            getActionBar().setBackgroundDrawable(new ColorDrawable(0xff888888));
        }
    }

    public void onGroupCollapse(int i)
    {
        if (i == 3)
        {
            list.expandGroup(3);
        }
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
