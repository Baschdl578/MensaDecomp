// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.studentenwerk.activities;

import android.app.Activity;
import android.app.Dialog;
import android.app.ProgressDialog;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.res.Resources;
import android.os.Bundle;
import android.os.Handler;
import android.view.View;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.widget.Toast;
import com.studentenwerk.UNIverse;

// Referenced classes of package com.studentenwerk.activities:
//            MensaList, ExternalContent, News, Settings

public class MainView extends Activity
{

    static final int DIALOG_DATA_ERROR = 0;
    static final int NEWS_REQUEST = 1;
    final String HOKEYAPPID = "cf571152e822196a5ec447a8dd791f32";
    private ProgressDialog dialog;
    private Thread loadData;
    private Handler mHandler;
    private Runnable showUpdate;

    public MainView()
    {
        loadData = new Thread() {

            final MainView this$0;

            public void run()
            {
                ((UNIverse)getApplication()).loadData(0);
                mHandler.post(showUpdate);
            }

            
            {
                this$0 = MainView.this;
                super();
            }
        };
        showUpdate = new Runnable() {

            final MainView this$0;

            public void run()
            {
                dialog.dismiss();
                if (((UNIverse)getApplication()).getData(0) == null)
                {
                    showDialog(0);
                }
            }

            
            {
                this$0 = MainView.this;
                super();
            }
        };
    }

    public void essen_Clicked(View view)
    {
        startActivity(new Intent(this, com/studentenwerk/activities/MensaList));
    }

    public void ext_0(View view)
    {
        external_View(0);
    }

    public void ext_1(View view)
    {
        external_View(1);
    }

    public void ext_2(View view)
    {
        external_View(2);
    }

    public void ext_3(View view)
    {
        external_View(3);
    }

    public void ext_4(View view)
    {
        external_View(4);
    }

    public void ext_5(View view)
    {
        external_View(5);
    }

    public void ext_6(View view)
    {
        external_View(6);
    }

    public void external_View(int i)
    {
        Intent intent = new Intent(this, com/studentenwerk/activities/ExternalContent);
        intent.putExtra("section", i);
        startActivity(intent);
    }

    public void news_Clicked(View view)
    {
        startActivityForResult(new Intent(this, com/studentenwerk/activities/News), 1);
    }

    protected void onActivityResult(int i, int j, Intent intent)
    {
        if (i == 1 && j == 2)
        {
            Toast.makeText(this, "Daten konnten nicht geladen werden!", 1).show();
        }
    }

    public void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        setContentView(0x7f030005);
        dialog = ProgressDialog.show(this, "", getString(0x7f050016), true);
        mHandler = new Handler();
        loadData.start();
        if (((UNIverse)getApplication()).checkNetwork())
        {
            bundle = (WebView)findViewById(0x7f090005);
            bundle.getSettings().setJavaScriptEnabled(true);
            bundle.loadUrl("http://www.studentenwerk-karlsruhe.de/mobile/ads/");
        }
    }

    protected Dialog onCreateDialog(int i)
    {
        Resources resources = getResources();
        android.app.AlertDialog.Builder builder;
        switch (i)
        {
        default:
            return null;

        case 0: // '\0'
            builder = new android.app.AlertDialog.Builder(this);
            break;
        }
        builder.setMessage(resources.getString(0x7f05000e)).setCancelable(false).setPositiveButton(resources.getString(0x104000a), new android.content.DialogInterface.OnClickListener() {

            final MainView this$0;

            public void onClick(DialogInterface dialoginterface, int j)
            {
                System.exit(1);
            }

            
            {
                this$0 = MainView.this;
                super();
            }
        });
        return builder.create();
    }

    public void settings_Clicked(View view)
    {
        startActivity(new Intent(this, com/studentenwerk/activities/Settings));
    }



}
