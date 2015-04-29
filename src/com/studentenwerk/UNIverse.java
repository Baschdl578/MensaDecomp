// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.studentenwerk;

import android.app.Application;
import android.content.SharedPreferences;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.LinkedHashMap;
import java.util.List;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.auth.AuthScope;
import org.apache.http.auth.UsernamePasswordCredentials;
import org.apache.http.client.ClientProtocolException;
import org.apache.http.client.CredentialsProvider;
import org.apache.http.client.entity.UrlEncodedFormEntity;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.impl.client.DefaultHttpClient;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class UNIverse extends Application
{

    public static final int DATA_GENERAL = 0;
    public static final int DATA_MEALS = 1;
    public static final int DATA_NEWS = 2;
    public static final int DATA_NEWS_ORDER = 3;
    static final String cacheFiles[] = {
        "generalData.json", "meals_%s.json", "news.json", "news_order.json"
    };
    static final String jsonUrls[] = {
        "/json_interface/general/", "/json_interface/canteen/", "/json_interface/news/", "/json_interface/news/?sorted_dates=1"
    };
    public static final String urlAds = "http://www.studentenwerk-karlsruhe.de/mobile/ads/";
    public static final String urlBase = "https://www.studentenwerk-karlsruhe.de/de/";
    private Calendar chosenDate;
    private JSONObject generalData;
    private JSONObject mealData;
    private JSONObject newsData;
    private JSONArray newsDataOrder;

    public UNIverse()
    {
        generalData = null;
        mealData = null;
        newsData = null;
        newsDataOrder = null;
        chosenDate = null;
    }

    public static String connect(String s, List list)
    {
        DefaultHttpClient defaulthttpclient;
        defaulthttpclient = new DefaultHttpClient();
        defaulthttpclient.getCredentialsProvider().setCredentials(new AuthScope(AuthScope.ANY_HOST, -1), new UsernamePasswordCredentials("jsonapi", "AhVai6OoCh3Quoo6ji"));
        s = new HttpPost(s);
        if (list == null)
        {
            break MISSING_BLOCK_LABEL_64;
        }
        s.setEntity(new UrlEncodedFormEntity(list));
        s = defaulthttpclient.execute(s).getEntity();
        if (s == null)
        {
            break MISSING_BLOCK_LABEL_98;
        }
        s = s.getContent();
        list = convertStreamToString(s);
        s.close();
        return list;
        s;
_L2:
        return null;
        s;
        if (true) goto _L2; else goto _L1
_L1:
    }

    public static String convertStreamToString(InputStream inputstream)
    {
        StringBuilder stringbuilder;
        BufferedReader bufferedreader;
        bufferedreader = new BufferedReader(new InputStreamReader(inputstream));
        stringbuilder = new StringBuilder();
_L2:
        String s = bufferedreader.readLine();
label0:
        {
            {
                if (s != null)
                {
                    break label0;
                }
                Exception exception;
                IOException ioexception;
                try
                {
                    inputstream.close();
                }
                // Misplaced declaration of an exception variable
                catch (InputStream inputstream)
                {
                    inputstream.printStackTrace();
                }
            }
            return stringbuilder.toString();
        }
        stringbuilder.append((new StringBuilder(String.valueOf(s))).append("\n").toString());
        continue; /* Loop/switch isn't completed */
        ioexception;
        ioexception.printStackTrace();
        try
        {
            inputstream.close();
        }
        // Misplaced declaration of an exception variable
        catch (InputStream inputstream)
        {
            inputstream.printStackTrace();
        }
        if (false)
        {
        } else
        {
            break MISSING_BLOCK_LABEL_37;
        }
        exception;
        try
        {
            inputstream.close();
        }
        // Misplaced declaration of an exception variable
        catch (InputStream inputstream)
        {
            inputstream.printStackTrace();
        }
        throw exception;
        if (true) goto _L2; else goto _L1
_L1:
    }

    private void createCache(String s, String s1)
    {
        try
        {
            deleteFile(s);
            s = openFileOutput(s, 0);
            s.write(s1.getBytes());
            s.close();
            return;
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            s.printStackTrace();
            return;
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            s.printStackTrace();
        }
    }

    private JSONArray getJsonArray(String s)
    {
        s = connect(s, null);
        try
        {
            s = new JSONArray(s);
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            return null;
        }
        return s;
    }

    private JSONObject getJsonObject(String s)
    {
        s = connect(s, null);
        try
        {
            s = new JSONObject(s);
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            return null;
        }
        return s;
    }

    public boolean checkNetwork()
    {
        NetworkInfo networkinfo = ((ConnectivityManager)getSystemService("connectivity")).getActiveNetworkInfo();
        return networkinfo != null && networkinfo.isConnectedOrConnecting();
    }

    public void deleteCache(int i, String s)
    {
        String s2 = cacheFiles[i];
        String s1 = s2;
        if (s != null)
        {
            s1 = String.format(s2, new Object[] {
                s
            });
        }
        getFileStreamPath(s1).delete();
    }

    public Calendar getChosenDate()
    {
        return chosenDate;
    }

    public JSONObject getData(int i)
    {
        if (i == 1)
        {
            return mealData;
        }
        if (i == 2)
        {
            return newsData;
        } else
        {
            return generalData;
        }
    }

    public JSONArray getDataArray(int i)
    {
        JSONArray jsonarray = null;
        if (i == 3)
        {
            jsonarray = newsDataOrder;
        }
        return jsonarray;
    }

    public LinkedHashMap getOrderedCanteenList(boolean flag)
    {
        int i;
        if (generalData == null)
        {
            loadData(0);
        }
        LinkedHashMap linkedhashmap = new LinkedHashMap();
        JSONArray jsonarray;
        JSONObject jsonobject;
        ArrayList arraylist;
        String s;
        String s1;
        try
        {
            jsonobject = generalData;
            jsonarray = jsonobject.getJSONArray("mensa_sort");
            jsonobject = jsonobject.getJSONObject("mensa");
            arraylist = getSettingArr("mensen");
        }
        catch (JSONException jsonexception)
        {
            linkedhashmap.put("1", "ERROR");
            return linkedhashmap;
        }
        i = 0;
_L2:
        if (i >= jsonarray.length())
        {
            return linkedhashmap;
        }
        s = jsonarray.getString(i);
        s1 = jsonobject.getJSONObject(s).getString("name");
        if (!flag)
        {
            break MISSING_BLOCK_LABEL_103;
        }
        if (arraylist.size() != 0)
        {
            break MISSING_BLOCK_LABEL_115;
        }
        linkedhashmap.put(s, s1);
        break MISSING_BLOCK_LABEL_151;
        if (arraylist.contains(s))
        {
            linkedhashmap.put(s, s1);
        }
        i++;
        if (true) goto _L2; else goto _L1
_L1:
    }

    public ArrayList getSettingArr(String s)
    {
        SharedPreferences sharedpreferences = getSharedPreferences("settings", 0);
        ArrayList arraylist = new ArrayList();
        int j = sharedpreferences.getInt((new StringBuilder("count_")).append(s).toString(), 0);
        int i = 0;
        do
        {
            if (i >= j)
            {
                return arraylist;
            }
            arraylist.add(sharedpreferences.getString((new StringBuilder(String.valueOf(s))).append("_").append(i).toString(), null));
            i++;
        } while (true);
    }

    public void loadData(int i)
    {
        loadData(i, null, null);
    }

    public void loadData(int i, String s, String s1)
    {
        String s2;
        boolean flag;
        flag = false;
        String s3 = cacheFiles[i];
        s2 = s3;
        if (s1 != null)
        {
            s2 = String.format(s3, new Object[] {
                s1
            });
        }
        if (getFileStreamPath(s2).exists()) goto _L2; else goto _L1
_L1:
        flag = true;
_L3:
        Date date;
        Calendar calendar;
        s1 = new Date(Long.parseLong(getData(i).getString("date")) * 1000L);
        date = new Date();
        calendar = Calendar.getInstance();
        calendar.setTime(s1);
        if (i != 0 && i != 2)
        {
            break MISSING_BLOCK_LABEL_111;
        }
        calendar.add(6, 1);
        if (i != 1)
        {
            break MISSING_BLOCK_LABEL_124;
        }
        calendar.add(12, 5);
        boolean flag1 = calendar.getTime().before(date);
        if (flag1)
        {
            flag = true;
        }
_L4:
        if (flag)
        {
            Object obj = (new StringBuilder("https://www.studentenwerk-karlsruhe.de/de/")).append(jsonUrls[i]).toString();
            s1 = ((String) (obj));
            if (s != null)
            {
                s1 = (new StringBuilder(String.valueOf(obj))).append(s).toString();
            }
            if (i == 3)
            {
                s = getJsonArray(s1);
                if (s != null)
                {
                    setDataArray(i, s);
                    createCache(s2, s.toString());
                }
            } else
            {
                s = getJsonObject(s1);
                if (s != null)
                {
                    setDataObject(i, s);
                    createCache(s2, s.toString());
                    return;
                }
            }
        }
        return;
_L2:
        obj = convertStreamToString(openFileInput(s2));
        s1 = null;
        obj = new JSONObject(((String) (obj)));
        s1 = ((String) (obj));
_L5:
        try
        {
            setDataObject(i, s1);
        }
        // Misplaced declaration of an exception variable
        catch (String s1)
        {
            s1.printStackTrace();
        }
          goto _L3
        s1;
        flag = true;
          goto _L4
        Exception exception;
        exception;
          goto _L5
    }

    public void setChosenDate(Calendar calendar)
    {
        chosenDate = calendar;
    }

    public void setDataArray(int i, JSONArray jsonarray)
    {
        if (i == 3)
        {
            newsDataOrder = jsonarray;
        }
    }

    public void setDataObject(int i, JSONObject jsonobject)
    {
        if (i == 1)
        {
            mealData = jsonobject;
            return;
        }
        if (i == 2)
        {
            newsData = jsonobject;
            return;
        } else
        {
            generalData = jsonobject;
            return;
        }
    }

}
