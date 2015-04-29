// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.studentenwerk.activities;

import android.app.ActionBar;
import android.app.Activity;
import android.content.Intent;
import android.content.res.Resources;
import android.graphics.drawable.ColorDrawable;
import android.os.Bundle;
import android.view.MenuItem;
import android.view.View;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import android.widget.Toast;
import com.studentenwerk.UNIverse;
import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.Calendar;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

// Referenced classes of package com.studentenwerk.activities:
//            Rating

public class MensaMealDetail extends Activity
{

    static final int RATE_REQUEST = 1;

    public MensaMealDetail()
    {
    }

    protected void onActivityResult(int i, int j, Intent intent)
    {
label0:
        {
            if (i == 1)
            {
                if (j != -1)
                {
                    break label0;
                }
                Toast.makeText(this, "Gesendet", 1);
            }
            return;
        }
        Toast.makeText(this, "Fehler beim Senden", 1);
    }

    protected void onCreate(Bundle bundle)
    {
        Object obj;
        Object obj2;
        super.onCreate(bundle);
        setContentView(0x7f030008);
        if (((UNIverse)getApplication()).checkNetwork())
        {
            bundle = (WebView)findViewById(0x7f090005);
            bundle.getSettings().setJavaScriptEnabled(true);
            bundle.loadUrl("http://www.studentenwerk-karlsruhe.de/mobile/ads/");
        }
        obj = getIntent().getExtras().getString("meal");
        long l = getIntent().getExtras().getLong("date");
        bundle = Calendar.getInstance();
        bundle.setTimeInMillis(Long.valueOf(l).longValue() * 1000L);
        obj2 = Calendar.getInstance();
        new JSONObject();
        obj = new JSONObject(((String) (obj)));
        String s;
        Object obj1;
        Object obj3;
        obj1 = ((JSONObject) (obj)).getString("meal").replace(" EUR ", " \u20AC ");
        s = ((JSONObject) (obj)).getString("dish");
        obj3 = new DecimalFormat(",##0.00 \u20AC");
        ((TextView)findViewById(0x7f090021)).setText(((DecimalFormat) (obj3)).format(((JSONObject) (obj)).getDouble("price_1")));
        ((TextView)findViewById(0x7f090022)).setText(((DecimalFormat) (obj3)).format(((JSONObject) (obj)).getDouble("price_2")));
        ((TextView)findViewById(0x7f090023)).setText(((DecimalFormat) (obj3)).format(((JSONObject) (obj)).getDouble("price_3")));
        ((TextView)findViewById(0x7f090024)).setText(((DecimalFormat) (obj3)).format(((JSONObject) (obj)).getDouble("price_4")));
        if (((Calendar) (obj2)).before(bundle))
        {
            ((Button)findViewById(0x7f090026)).setVisibility(8);
        }
        obj3 = getIntent().getExtras().getString("mensa");
        obj2 = getIntent().getExtras().getString("line");
        int i;
        bundle = null;
        i = 0;
          goto _L1
_L27:
        bundle = bundle.getJSONObject("mensa").getJSONObject(((String) (obj3)));
        setTitle(bundle.getString("name"));
        ((TextView)findViewById(0x7f090016)).setText(bundle.getJSONObject("lines").getString(((String) (obj2))));
        i = ((JSONObject) (obj)).getInt("price_flag");
        bundle = (TextView)findViewById(0x7f090020);
        if (i != 1) goto _L3; else goto _L2
_L2:
        bundle.setText(getResources().getString(0x7f05000f));
_L19:
        bundle = new ArrayList();
        if (((JSONObject) (obj)).getBoolean("fish"))
        {
            bundle.add(Integer.valueOf(0x7f020011));
        }
        if (((JSONObject) (obj)).getBoolean("pork"))
        {
            bundle.add(Integer.valueOf(0x7f020017));
        }
        if (((JSONObject) (obj)).getBoolean("cow"))
        {
            bundle.add(Integer.valueOf(0x7f020014));
        }
        if (((JSONObject) (obj)).getBoolean("cow_aw"))
        {
            bundle.add(Integer.valueOf(0x7f020015));
        }
        if (((JSONObject) (obj)).getBoolean("vegan"))
        {
            bundle.add(Integer.valueOf(0x7f020018));
        }
        if (((JSONObject) (obj)).getBoolean("veg"))
        {
            bundle.add(Integer.valueOf(0x7f020019));
        }
        if (bundle.size() == 0)
        {
            ((LinearLayout)findViewById(0x7f090018)).setVisibility(8);
        }
        obj2 = (ImageView)findViewById(0x7f090019);
        if (bundle.size() <= 0) goto _L5; else goto _L4
_L4:
        ((ImageView) (obj2)).setVisibility(0);
        ((ImageView) (obj2)).setImageResource(((Integer)bundle.get(0)).intValue());
_L21:
        obj2 = (ImageView)findViewById(0x7f09001a);
        if (bundle.size() <= 1) goto _L7; else goto _L6
_L6:
        ((ImageView) (obj2)).setVisibility(0);
        ((ImageView) (obj2)).setImageResource(((Integer)bundle.get(1)).intValue());
_L22:
        obj2 = (ImageView)findViewById(0x7f09001b);
        if (bundle.size() <= 2) goto _L9; else goto _L8
_L8:
        ((ImageView) (obj2)).setVisibility(0);
        ((ImageView) (obj2)).setImageResource(((Integer)bundle.get(2)).intValue());
_L23:
        ((TextView)findViewById(0x7f09001c)).setText(((CharSequence) (obj1)));
        obj1 = ((JSONObject) (obj)).getJSONArray("add");
        obj = s;
        if (((JSONArray) (obj1)).length() <= 0) goto _L11; else goto _L10
_L10:
        boolean flag;
        flag = false;
        bundle = "";
        i = 0;
_L29:
        if (i < ((JSONArray) (obj1)).length()) goto _L13; else goto _L12
_L12:
        obj = s;
        if (!flag) goto _L11; else goto _L14
_L14:
        obj = (new StringBuilder(String.valueOf((new StringBuilder(String.valueOf((new StringBuilder(String.valueOf(s))).append("\n(").toString()))).append(bundle.substring(0, bundle.length() - 2)).toString()))).append(")").toString();
_L11:
        if (((String) (obj)).length() <= 0) goto _L16; else goto _L15
_L15:
        ((TextView)findViewById(0x7f09001d)).setText(((CharSequence) (obj)));
_L20:
        if (android.os.Build.VERSION.SDK_INT >= 11)
        {
            getActionBar().setHomeButtonEnabled(true);
            getActionBar().setDisplayHomeAsUpEnabled(true);
            getActionBar().setBackgroundDrawable(new ColorDrawable(0xff888888));
        }
        return;
_L28:
        bundle = ((UNIverse)getApplication()).getData(0);
        i++;
        continue; /* Loop/switch isn't completed */
_L3:
        if (i != 2) goto _L18; else goto _L17
_L17:
        bundle.setText(getResources().getString(0x7f050010));
          goto _L19
        bundle;
_L26:
        bundle.printStackTrace();
          goto _L20
_L18:
        bundle.setVisibility(8);
          goto _L19
_L5:
        ((ImageView) (obj2)).setVisibility(8);
          goto _L21
_L7:
        ((ImageView) (obj2)).setVisibility(8);
          goto _L22
_L9:
        ((ImageView) (obj2)).setVisibility(8);
          goto _L23
_L13:
        obj = bundle;
        if (((JSONArray) (obj1)).getString(i).length() <= 0) goto _L25; else goto _L24
_L24:
        obj = (new StringBuilder(String.valueOf(bundle))).append(((JSONArray) (obj1)).getString(i)).append(", ").toString();
        flag = true;
          goto _L25
_L16:
        ((TextView)findViewById(0x7f09001d)).setVisibility(8);
          goto _L20
        bundle;
          goto _L26
_L1:
        if (bundle == null && i < 100) goto _L28; else goto _L27
_L25:
        i++;
        bundle = ((Bundle) (obj));
          goto _L29
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

    public void rating_Clicked(View view)
    {
        view = getIntent().getExtras();
        startActivityForResult((new Intent(this, com/studentenwerk/activities/Rating)).putExtra("meal", view.getString("meal")).putExtra("mensa", view.getString("mensa")).putExtra("line", view.getString("line")).putExtra("date", view.getLong("date")), 1);
    }
}
