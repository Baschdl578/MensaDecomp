// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.studentenwerk.activities;

import android.app.ActionBar;
import android.app.Activity;
import android.app.ProgressDialog;
import android.content.Intent;
import android.graphics.drawable.ColorDrawable;
import android.os.Bundle;
import android.os.Handler;
import android.text.Editable;
import android.view.MenuItem;
import android.view.View;
import android.widget.EditText;
import android.widget.RatingBar;
import android.widget.TextView;
import com.studentenwerk.UNIverse;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;
import org.apache.http.message.BasicNameValuePair;
import org.json.JSONException;
import org.json.JSONObject;

public class Rating extends Activity
{

    static final int DIALOG_DATA_ERROR = 0;
    public static int RESULT_HTTP_ERR = 3;
    public static int RESULT_IO_ERR = 2;
    public static int RESULT_JSON_ERR = 4;
    private long date;
    private ProgressDialog dialog;
    private String line;
    private Thread loadData;
    private Handler mHandler;
    private JSONObject meal;
    private String mensa;
    private List nameValuePairs;
    private Runnable showUpdate;

    public Rating()
    {
        loadData = new Thread() {

            final Rating this$0;

            public void run()
            {
                UNIverse.connect("https://www.studentenwerk-karlsruhe.de/de//json_interface/canteen/rating.php", nameValuePairs);
                setResult(-1);
                mHandler.post(showUpdate);
            }

            
            {
                this$0 = Rating.this;
                super();
            }
        };
        showUpdate = new Runnable() {

            final Rating this$0;

            public void run()
            {
                dialog.dismiss();
                finish();
            }

            
            {
                this$0 = Rating.this;
                super();
            }
        };
    }

    public void buttonSend(View view)
    {
        view = ((EditText)findViewById(0x7f09002f)).getText();
        float f = ((RatingBar)findViewById(0x7f09002e)).getRating();
        if (f < 1.0F)
        {
            return;
        } else
        {
            Object obj = new SimpleDateFormat("yyyy-MM-dd");
            Calendar calendar = Calendar.getInstance();
            calendar.setTimeInMillis(date * 1000L);
            obj = ((SimpleDateFormat) (obj)).format(calendar.getTime());
            nameValuePairs = new ArrayList(5);
            nameValuePairs.add(new BasicNameValuePair("r_menu", (String)((TextView)findViewById(0x7f09001c)).getText()));
            nameValuePairs.add(new BasicNameValuePair("r_canteen", mensa));
            nameValuePairs.add(new BasicNameValuePair("r_line", line));
            nameValuePairs.add(new BasicNameValuePair("r_date", ((String) (obj))));
            nameValuePairs.add(new BasicNameValuePair("r_text", view.toString()));
            nameValuePairs.add(new BasicNameValuePair("r_score", Float.toString(f)));
            dialog = ProgressDialog.show(this, "", getString(0x7f050016), true);
            mHandler = new Handler();
            loadData.start();
            return;
        }
    }

    public void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        setContentView(0x7f03000c);
        bundle = getIntent().getExtras();
        try
        {
            meal = new JSONObject(bundle.getString("meal"));
            ((TextView)findViewById(0x7f09001c)).setText(meal.getString("meal"));
        }
        catch (JSONException jsonexception)
        {
            jsonexception.printStackTrace();
        }
        mensa = bundle.getString("mensa");
        line = bundle.getString("line");
        date = bundle.getLong("date");
        if (android.os.Build.VERSION.SDK_INT >= 11)
        {
            getActionBar().setBackgroundDrawable(new ColorDrawable(0xff888888));
            getActionBar().setHomeButtonEnabled(true);
            getActionBar().setDisplayHomeAsUpEnabled(true);
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
