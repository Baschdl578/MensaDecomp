// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.studentenwerk.activities;

import android.app.ListActivity;
import android.app.ProgressDialog;
import android.os.Bundle;
import android.os.Handler;
import com.studentenwerk.UNIverse;
import com.studentenwerk.classes.NewsAdapter;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class News extends ListActivity
{

    private ProgressDialog dialog;
    private Handler mHandler;
    private NewsAdapter newsAdapter;
    private Runnable showUpdate;

    public News()
    {
        mHandler = new Handler();
        showUpdate = new Runnable() {

            final News this$0;

            public void run()
            {
                dialog.dismiss();
                newsAdapter.notifyDataSetChanged();
            }

            
            {
                this$0 = News.this;
                super();
            }
        };
    }

    private void loadData()
        throws JSONException
    {
        Object obj = (UNIverse)getApplication();
        ((UNIverse) (obj)).loadData(2);
        ((UNIverse) (obj)).loadData(3);
        obj = ((UNIverse)getApplication()).getData(2);
        JSONArray jsonarray = ((UNIverse)getApplication()).getDataArray(3);
        if (jsonarray == null || obj == null)
        {
            dialog.dismiss();
            setResult(2);
            finish();
            return;
        }
        int i = 0;
        do
        {
            if (i >= jsonarray.length())
            {
                mHandler.post(showUpdate);
                return;
            }
            String s = jsonarray.getString(i);
            JSONObject jsonobject = ((JSONObject) (obj)).getJSONObject(s);
            newsAdapter.addSection(Long.parseLong(s), jsonobject.getString("title"), jsonobject.getString("content"));
            i++;
        } while (true);
    }

    private void startLoadThread(String s)
    {
        dialog = ProgressDialog.show(this, "", getString(0x7f050016), true);
        (new Thread() {

            final News this$0;

            public void run()
            {
                try
                {
                    loadData();
                    return;
                }
                catch (JSONException jsonexception)
                {
                    jsonexception.printStackTrace();
                }
            }

            
            {
                this$0 = News.this;
                super();
            }
        }).start();
    }

    protected void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        newsAdapter = new NewsAdapter(this);
        setListAdapter(newsAdapter);
        startLoadThread(null);
    }



}
