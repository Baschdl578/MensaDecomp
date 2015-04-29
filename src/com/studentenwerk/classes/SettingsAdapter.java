// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.studentenwerk.classes;

import android.content.Context;
import android.content.SharedPreferences;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.SimpleExpandableListAdapter;
import android.widget.Spinner;
import android.widget.TextView;
import com.studentenwerk.UNIverse;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

public class SettingsAdapter extends SimpleExpandableListAdapter
    implements android.widget.AdapterView.OnItemSelectedListener
{

    private UNIverse appObj;
    private Context cont;
    private int priceType;

    public SettingsAdapter(Context context, List list, int i, String as[], int ai[], List list1, int j, 
            String as1[], int ai1[])
    {
        super(context, list, i, as, ai, list1, j, as1, ai1);
        cont = context;
    }

    public View getChildView(int i, int j, boolean flag, View view, ViewGroup viewgroup)
    {
        view = super.getChildView(i, j, flag, view, viewgroup);
        viewgroup = (CheckBox)view.findViewById(0x7f090001);
        Spinner spinner = (Spinner)view.findViewById(0x7f090002);
        TextView textview = (TextView)view.findViewById(0x7f090000);
        Button button = (Button)view.findViewById(0x7f090003);
        button.getBackground().setColorFilter(-256, android.graphics.PorterDuff.Mode.MULTIPLY);
        Object obj = (HashMap)getChild(i, j);
        spinner.setSelection(priceType - 1);
        if (i == 3)
        {
            viewgroup.setVisibility(8);
            spinner.setVisibility(8);
            textview.setVisibility(8);
            button.setVisibility(0);
        } else
        {
            if (i == 2)
            {
                obj = ArrayAdapter.createFromResource(cont, 0x7f060000, 0x7f03000e);
                ((ArrayAdapter) (obj)).setDropDownViewResource(0x7f03000d);
                spinner.setOnItemSelectedListener(this);
                spinner.setAdapter(((android.widget.SpinnerAdapter) (obj)));
                spinner.setSelection(Integer.parseInt(cont.getSharedPreferences("settings", 0).getString("defaultPrice", "1")) - 1);
                viewgroup.setVisibility(8);
                spinner.setVisibility(0);
                textview.setVisibility(8);
                button.setVisibility(8);
                return view;
            }
            if (i == 1)
            {
                viewgroup.setChecked(appObj.getSettingArr("blacklists").contains(((HashMap) (obj)).get("key")));
                viewgroup.setVisibility(0);
                spinner.setVisibility(8);
                textview.setVisibility(0);
                button.setVisibility(8);
                return view;
            }
            if (i == 0)
            {
                viewgroup.setChecked(appObj.getSettingArr("mensen").contains(((HashMap) (obj)).get("key")));
                viewgroup.setVisibility(0);
                spinner.setVisibility(8);
                textview.setVisibility(0);
                button.setVisibility(8);
                return view;
            }
        }
        return view;
    }

    public void onItemSelected(AdapterView adapterview, View view, int i, long l)
    {
        i++;
        adapterview = cont.getSharedPreferences("settings", 0).edit();
        adapterview.putString("defaultPrice", (new StringBuilder()).append(i).toString());
        adapterview.commit();
        setPriceType((new StringBuilder()).append(i).toString());
    }

    public void onNothingSelected(AdapterView adapterview)
    {
    }

    public void setApp(UNIverse universe)
    {
        appObj = universe;
    }

    public void setPriceType(String s)
    {
        priceType = Integer.parseInt(s);
    }
}
