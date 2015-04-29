// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.studentenwerk.views;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Typeface;
import android.text.TextPaint;
import android.util.AttributeSet;
import android.widget.Button;

public class MainButton extends Button
{

    private String subText;

    public MainButton(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        subText = "";
        initMyButton(attributeset);
    }

    public MainButton(Context context, AttributeSet attributeset, int i)
    {
        super(context, attributeset, i);
        subText = "";
        initMyButton(attributeset);
    }

    private void initMyButton(AttributeSet attributeset)
    {
        attributeset = getContext().obtainStyledAttributes(attributeset, com.studentenwerk.R.styleable.mainbutton);
        subText = attributeset.getString(0);
        attributeset.recycle();
    }

    public String getSubText()
    {
        return subText;
    }

    protected void onDraw(Canvas canvas)
    {
        TextPaint textpaint = getPaint();
        textpaint.setTextSize(22F);
        textpaint.setTypeface(Typeface.DEFAULT_BOLD);
        if (android.os.Build.VERSION.SDK_INT >= 11)
        {
            textpaint.setColor(getResources().getColor(0x7f070000));
            canvas.drawText((String)getText(), 20F, 35F, textpaint);
        } else
        {
            textpaint.setColor(getResources().getColor(0x7f070002));
            canvas.drawText((String)getText(), 20F, 30F, textpaint);
        }
        textpaint.setTextSize(18F);
        textpaint.setTypeface(Typeface.DEFAULT);
        if (android.os.Build.VERSION.SDK_INT >= 11)
        {
            textpaint.setColor(getResources().getColor(0x7f070001));
            canvas.drawText(getSubText(), 20F, 55F, textpaint);
            return;
        } else
        {
            textpaint.setColor(getResources().getColor(0x7f070003));
            canvas.drawText(getSubText(), 20F, 50F, textpaint);
            return;
        }
    }

    public void setSubText(String s)
    {
        subText = s;
    }
}
