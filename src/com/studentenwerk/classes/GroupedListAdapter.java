// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.studentenwerk.classes;

import android.content.Context;
import android.content.res.Resources;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.TextView;
import java.text.DecimalFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class GroupedListAdapter extends BaseAdapter
{

    private static final int TYPE_SECTION_CONTENT = 1;
    private static final int TYPE_SECTION_HEADER = 0;
    private ArrayList data;
    private final ArrayAdapter headers;
    private LayoutInflater inflater;
    private String priceType;
    private final Map sections = new LinkedHashMap();

    public GroupedListAdapter(Context context)
    {
        data = new ArrayList();
        inflater = null;
        priceType = "";
        headers = new ArrayAdapter(context, 0x7f030006);
        inflater = LayoutInflater.from(context);
    }

    public void addSection(String s, JSONArray jsonarray)
        throws JSONException
    {
        View aview[];
        DecimalFormat decimalformat;
        SimpleDateFormat simpledateformat;
        int i;
        headers.add(s);
        aview = new View[jsonarray.length()];
        data.add(null);
        decimalformat = new DecimalFormat(",##0.00 \u20AC");
        simpledateformat = new SimpleDateFormat("E dd.MM.yyyy");
        i = 0;
_L4:
        String s1;
        String s2;
        Object obj;
        View view;
        Object obj1;
        int j;
        if (i >= jsonarray.length())
        {
            sections.put(s, aview);
            return;
        }
        obj1 = (JSONObject)jsonarray.get(i);
        data.add(obj1);
        view = inflater.inflate(0x7f030009, null);
        if (!((JSONObject) (obj1)).has("meal"))
        {
            break MISSING_BLOCK_LABEL_606;
        }
        s2 = ((JSONObject) (obj1)).getString("meal").replace(" EUR ", " \u20AC ");
        s1 = ((JSONObject) (obj1)).getString("dish");
        j = ((JSONObject) (obj1)).getInt("price_flag");
        obj = (TextView)view.findViewById(0x7f090020);
        j;
        JVM INSTR tableswitch 1 2: default 188
    //                   1 540
    //                   2 558;
           goto _L1 _L2 _L3
_L1:
        ((TextView) (obj)).setVisibility(8);
_L5:
        ((TextView)view.findViewById(0x7f09002b)).setText(decimalformat.format(((JSONObject) (obj1)).getDouble(priceType)));
        obj = new ArrayList();
        if (((JSONObject) (obj1)).getBoolean("fish"))
        {
            ((ArrayList) (obj)).add(Integer.valueOf(0x7f020011));
        }
        if (((JSONObject) (obj1)).getBoolean("pork"))
        {
            ((ArrayList) (obj)).add(Integer.valueOf(0x7f020017));
        }
        if (((JSONObject) (obj1)).getBoolean("cow"))
        {
            ((ArrayList) (obj)).add(Integer.valueOf(0x7f020014));
        }
        if (((JSONObject) (obj1)).getBoolean("cow_aw"))
        {
            ((ArrayList) (obj)).add(Integer.valueOf(0x7f020015));
        }
        if (((JSONObject) (obj1)).getBoolean("vegan"))
        {
            ((ArrayList) (obj)).add(Integer.valueOf(0x7f020018));
        }
        if (((JSONObject) (obj1)).getBoolean("veg"))
        {
            ((ArrayList) (obj)).add(Integer.valueOf(0x7f020019));
        }
        obj1 = (ImageView)view.findViewById(0x7f090019);
        if (((ArrayList) (obj)).size() > 0)
        {
            ((ImageView) (obj1)).setVisibility(0);
            ((ImageView) (obj1)).setImageResource(((Integer)((ArrayList) (obj)).get(0)).intValue());
        } else
        {
            ((ImageView) (obj1)).setVisibility(8);
        }
        obj1 = (ImageView)view.findViewById(0x7f09001a);
        if (((ArrayList) (obj)).size() > 1)
        {
            ((ImageView) (obj1)).setVisibility(0);
            ((ImageView) (obj1)).setImageResource(((Integer)((ArrayList) (obj)).get(1)).intValue());
        } else
        {
            ((ImageView) (obj1)).setVisibility(8);
        }
        obj1 = (ImageView)view.findViewById(0x7f09001b);
        if (((ArrayList) (obj)).size() > 2)
        {
            ((ImageView) (obj1)).setVisibility(0);
            ((ImageView) (obj1)).setImageResource(((Integer)((ArrayList) (obj)).get(2)).intValue());
        } else
        {
            ((ImageView) (obj1)).setVisibility(8);
        }
_L6:
        ((TextView)view.findViewById(0x7f09001c)).setText(s2);
        if (s1.length() > 0)
        {
            ((TextView)view.findViewById(0x7f09001d)).setText(s1);
        }
        aview[i] = view;
        i++;
          goto _L4
_L2:
        ((TextView) (obj)).setText(view.getResources().getString(0x7f05000f));
          goto _L5
_L3:
        ((TextView) (obj)).setText(view.getResources().getString(0x7f050010));
          goto _L5
        String s3 = "Geschlossen";
        ((ImageView)view.findViewById(0x7f090019)).setVisibility(8);
        ((ImageView)view.findViewById(0x7f09001a)).setVisibility(8);
        ((ImageView)view.findViewById(0x7f09001b)).setVisibility(8);
        ((TextView)view.findViewById(0x7f090020)).setVisibility(8);
        ((TextView)view.findViewById(0x7f09002b)).setVisibility(8);
        Calendar calendar = Calendar.getInstance();
        s1 = "";
        s2 = s3;
        if (((JSONObject) (obj1)).has("closing_start"))
        {
            calendar.setTimeInMillis(((JSONObject) (obj1)).getLong("closing_start") * 1000L);
            s1 = simpledateformat.format(calendar.getTime());
            calendar.setTimeInMillis(((JSONObject) (obj1)).getLong("closing_end") * 1000L);
            s1 = String.format("Von %s bis einschlie\337lich %s", new Object[] {
                s1, simpledateformat.format(calendar.getTime())
            });
            s2 = s3;
        }
          goto _L6
    }

    public boolean areAllItemsSelectable()
    {
        return false;
    }

    public void clearData()
    {
        headers.clear();
        data.clear();
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

    public JSONObject getData(int i)
    {
        if (i > data.size())
        {
            return null;
        } else
        {
            return (JSONObject)data.get(i);
        }
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
        Iterator iterator = sections.keySet().iterator();
        do
        {
            if (!iterator.hasNext())
            {
                return -1;
            }
            Object obj = iterator.next();
            int j = ((View[])sections.get(obj)).length + 1;
            if (i == 0)
            {
                return 0;
            }
            if (i < j)
            {
                return 1;
            }
            i -= j;
        } while (true);
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
        return getItemViewType(i) != 0;
    }

    public void setPriceType(String s)
    {
        priceType = s;
    }
}
