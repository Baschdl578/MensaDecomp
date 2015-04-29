.class public Lcom/studentenwerk/activities/MensaMealDetail;
.super Landroid/app/Activity;
.source "MensaMealDetail.java"


# static fields
.field static final RATE_REQUEST:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v1, 0x1

    .line 218
    if-ne p1, v1, :cond_0

    .line 219
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 220
    const-string v0, "Gesendet"

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 225
    :cond_0
    :goto_0
    return-void

    .line 222
    :cond_1
    const-string v0, "Fehler beim Senden"

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 32
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 38
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 39
    const v28, 0x7f030008

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/studentenwerk/activities/MensaMealDetail;->setContentView(I)V

    .line 40
    invoke-virtual/range {p0 .. p0}, Lcom/studentenwerk/activities/MensaMealDetail;->getApplication()Landroid/app/Application;

    move-result-object v26

    check-cast v26, Lcom/studentenwerk/UNIverse;

    .line 41
    .local v26, "universe":Lcom/studentenwerk/UNIverse;
    invoke-virtual/range {v26 .. v26}, Lcom/studentenwerk/UNIverse;->checkNetwork()Z

    move-result v28

    if-eqz v28, :cond_0

    .line 42
    const v28, 0x7f090005

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/studentenwerk/activities/MensaMealDetail;->findViewById(I)Landroid/view/View;

    move-result-object v27

    check-cast v27, Landroid/webkit/WebView;

    .line 43
    .local v27, "webview":Landroid/webkit/WebView;
    invoke-virtual/range {v27 .. v27}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v28

    const/16 v29, 0x1

    invoke-virtual/range {v28 .. v29}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 44
    const-string v28, "http://www.studentenwerk-karlsruhe.de/mobile/ads/"

    invoke-virtual/range {v27 .. v28}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 47
    .end local v27    # "webview":Landroid/webkit/WebView;
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/studentenwerk/activities/MensaMealDetail;->getIntent()Landroid/content/Intent;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v28

    const-string v29, "meal"

    invoke-virtual/range {v28 .. v29}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 48
    .local v23, "strMeal":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/studentenwerk/activities/MensaMealDetail;->getIntent()Landroid/content/Intent;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v28

    const-string v29, "date"

    invoke-virtual/range {v28 .. v29}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v28

    invoke-static/range {v28 .. v29}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    .line 50
    .local v6, "date":Ljava/lang/Long;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v18

    .line 51
    .local v18, "mealDate":Ljava/util/Calendar;
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v28

    const-wide/16 v30, 0x3e8

    mul-long v28, v28, v30

    move-object/from16 v0, v18

    move-wide/from16 v1, v28

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 53
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    .line 55
    .local v5, "curDate":Ljava/util/Calendar;
    new-instance v16, Lorg/json/JSONObject;

    invoke-direct/range {v16 .. v16}, Lorg/json/JSONObject;-><init>()V

    .line 58
    .local v16, "meal":Lorg/json/JSONObject;
    :try_start_0
    new-instance v17, Lorg/json/JSONObject;

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 61
    .end local v16    # "meal":Lorg/json/JSONObject;
    .local v17, "meal":Lorg/json/JSONObject;
    :try_start_1
    const-string v28, "meal"

    move-object/from16 v0, v17

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    const-string v29, " EUR "

    const-string v30, " \u20ac "

    invoke-virtual/range {v28 .. v30}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v19

    .line 62
    .local v19, "mealTitle":Ljava/lang/String;
    const-string v28, "dish"

    move-object/from16 v0, v17

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 64
    .local v24, "subText":Ljava/lang/String;
    new-instance v7, Ljava/text/DecimalFormat;

    const-string v28, ",##0.00 \u20ac"

    move-object/from16 v0, v28

    invoke-direct {v7, v0}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 66
    .local v7, "df":Ljava/text/DecimalFormat;
    const v28, 0x7f090021

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/studentenwerk/activities/MensaMealDetail;->findViewById(I)Landroid/view/View;

    move-result-object v28

    check-cast v28, Landroid/widget/TextView;

    const-string v29, "price_1"

    move-object/from16 v0, v17

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v29

    move-wide/from16 v0, v29

    invoke-virtual {v7, v0, v1}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    const v28, 0x7f090022

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/studentenwerk/activities/MensaMealDetail;->findViewById(I)Landroid/view/View;

    move-result-object v28

    check-cast v28, Landroid/widget/TextView;

    const-string v29, "price_2"

    move-object/from16 v0, v17

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v29

    move-wide/from16 v0, v29

    invoke-virtual {v7, v0, v1}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    const v28, 0x7f090023

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/studentenwerk/activities/MensaMealDetail;->findViewById(I)Landroid/view/View;

    move-result-object v28

    check-cast v28, Landroid/widget/TextView;

    const-string v29, "price_3"

    move-object/from16 v0, v17

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v29

    move-wide/from16 v0, v29

    invoke-virtual {v7, v0, v1}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    const v28, 0x7f090024

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/studentenwerk/activities/MensaMealDetail;->findViewById(I)Landroid/view/View;

    move-result-object v28

    check-cast v28, Landroid/widget/TextView;

    const-string v29, "price_4"

    move-object/from16 v0, v17

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v29

    move-wide/from16 v0, v29

    invoke-virtual {v7, v0, v1}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_1

    .line 72
    const v28, 0x7f090026

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/studentenwerk/activities/MensaMealDetail;->findViewById(I)Landroid/view/View;

    move-result-object v28

    check-cast v28, Landroid/widget/Button;

    const/16 v29, 0x8

    invoke-virtual/range {v28 .. v29}, Landroid/widget/Button;->setVisibility(I)V

    .line 75
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/studentenwerk/activities/MensaMealDetail;->getIntent()Landroid/content/Intent;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v28

    const-string v29, "mensa"

    invoke-virtual/range {v28 .. v29}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 76
    .local v15, "m":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/studentenwerk/activities/MensaMealDetail;->getIntent()Landroid/content/Intent;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v28

    const-string v29, "line"

    invoke-virtual/range {v28 .. v29}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 78
    .local v13, "l":Ljava/lang/String;
    const/16 v21, 0x0

    .line 79
    .local v21, "metaData":Lorg/json/JSONObject;
    const/4 v10, 0x0

    .line 80
    .local v10, "index":I
    :goto_0
    if-nez v21, :cond_2

    const/16 v28, 0x64

    move/from16 v0, v28

    if-lt v10, v0, :cond_c

    .line 85
    :cond_2
    const-string v28, "mensa"

    move-object/from16 v0, v21

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v15}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v20

    .line 89
    .local v20, "mensa":Lorg/json/JSONObject;
    const-string v28, "name"

    move-object/from16 v0, v20

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/studentenwerk/activities/MensaMealDetail;->setTitle(Ljava/lang/CharSequence;)V

    .line 91
    const v28, 0x7f090016

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/studentenwerk/activities/MensaMealDetail;->findViewById(I)Landroid/view/View;

    move-result-object v28

    check-cast v28, Landroid/widget/TextView;

    const-string v29, "lines"

    move-object/from16 v0, v20

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    const-string v28, "price_flag"

    move-object/from16 v0, v17

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v9

    .line 94
    .local v9, "iProFlag":I
    const v28, 0x7f090020

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/studentenwerk/activities/MensaMealDetail;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/TextView;

    .line 97
    .local v22, "proText":Landroid/widget/TextView;
    const/16 v28, 0x1

    move/from16 v0, v28

    if-ne v9, v0, :cond_d

    invoke-virtual/range {p0 .. p0}, Lcom/studentenwerk/activities/MensaMealDetail;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    const v29, 0x7f05000f

    invoke-virtual/range {v28 .. v29}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v22

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 115
    :goto_1
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 116
    .local v14, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const-string v28, "fish"

    move-object/from16 v0, v17

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_3

    const v28, 0x7f020011

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 117
    :cond_3
    const-string v28, "pork"

    move-object/from16 v0, v17

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_4

    const v28, 0x7f020017

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 118
    :cond_4
    const-string v28, "cow"

    move-object/from16 v0, v17

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_5

    const v28, 0x7f020014

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 119
    :cond_5
    const-string v28, "cow_aw"

    move-object/from16 v0, v17

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_6

    const v28, 0x7f020015

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 120
    :cond_6
    const-string v28, "vegan"

    move-object/from16 v0, v17

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_7

    const v28, 0x7f020018

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 121
    :cond_7
    const-string v28, "veg"

    move-object/from16 v0, v17

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_8

    const v28, 0x7f020019

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 124
    :cond_8
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v28

    if-nez v28, :cond_9

    const v28, 0x7f090018

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/studentenwerk/activities/MensaMealDetail;->findViewById(I)Landroid/view/View;

    move-result-object v28

    check-cast v28, Landroid/widget/LinearLayout;

    const/16 v29, 0x8

    invoke-virtual/range {v28 .. v29}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 129
    :cond_9
    const v28, 0x7f090019

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/studentenwerk/activities/MensaMealDetail;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/ImageView;

    .line 130
    .local v12, "iv":Landroid/widget/ImageView;
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v28

    if-lez v28, :cond_f

    .line 131
    const/16 v28, 0x0

    move/from16 v0, v28

    invoke-virtual {v12, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 132
    const/16 v28, 0x0

    move/from16 v0, v28

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Ljava/lang/Integer;

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Integer;->intValue()I

    move-result v28

    move/from16 v0, v28

    invoke-virtual {v12, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 137
    :goto_2
    const v28, 0x7f09001a

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/studentenwerk/activities/MensaMealDetail;->findViewById(I)Landroid/view/View;

    move-result-object v12

    .end local v12    # "iv":Landroid/widget/ImageView;
    check-cast v12, Landroid/widget/ImageView;

    .line 138
    .restart local v12    # "iv":Landroid/widget/ImageView;
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v28

    const/16 v29, 0x1

    move/from16 v0, v28

    move/from16 v1, v29

    if-le v0, v1, :cond_10

    .line 139
    const/16 v28, 0x0

    move/from16 v0, v28

    invoke-virtual {v12, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 140
    const/16 v28, 0x1

    move/from16 v0, v28

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Ljava/lang/Integer;

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Integer;->intValue()I

    move-result v28

    move/from16 v0, v28

    invoke-virtual {v12, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 145
    :goto_3
    const v28, 0x7f09001b

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/studentenwerk/activities/MensaMealDetail;->findViewById(I)Landroid/view/View;

    move-result-object v12

    .end local v12    # "iv":Landroid/widget/ImageView;
    check-cast v12, Landroid/widget/ImageView;

    .line 146
    .restart local v12    # "iv":Landroid/widget/ImageView;
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v28

    const/16 v29, 0x2

    move/from16 v0, v28

    move/from16 v1, v29

    if-le v0, v1, :cond_11

    .line 147
    const/16 v28, 0x0

    move/from16 v0, v28

    invoke-virtual {v12, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 148
    const/16 v28, 0x2

    move/from16 v0, v28

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Ljava/lang/Integer;

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Integer;->intValue()I

    move-result v28

    move/from16 v0, v28

    invoke-virtual {v12, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 153
    :goto_4
    const v28, 0x7f09001c

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/studentenwerk/activities/MensaMealDetail;->findViewById(I)Landroid/view/View;

    move-result-object v28

    check-cast v28, Landroid/widget/TextView;

    move-object/from16 v0, v28

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 156
    const-string v28, "add"

    move-object/from16 v0, v17

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 158
    .local v3, "add":Lorg/json/JSONArray;
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v28

    if-lez v28, :cond_a

    .line 160
    const/16 v25, 0x0

    .line 161
    .local v25, "tmp":Z
    const-string v4, ""

    .line 163
    .local v4, "additionals":Ljava/lang/String;
    const/4 v11, 0x0

    .local v11, "io":I
    :goto_5
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v28

    move/from16 v0, v28

    if-lt v11, v0, :cond_12

    .line 168
    if-eqz v25, :cond_a

    .line 169
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-static/range {v24 .. v24}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v29

    invoke-direct/range {v28 .. v29}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v29, "\n("

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    .line 170
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-static/range {v24 .. v24}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v29

    invoke-direct/range {v28 .. v29}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v29, 0x0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v30

    add-int/lit8 v30, v30, -0x2

    move/from16 v0, v29

    move/from16 v1, v30

    invoke-virtual {v4, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    .line 171
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-static/range {v24 .. v24}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v29

    invoke-direct/range {v28 .. v29}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v29, ")"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    .line 175
    .end local v4    # "additionals":Ljava/lang/String;
    .end local v11    # "io":I
    .end local v25    # "tmp":Z
    :cond_a
    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->length()I

    move-result v28

    if-lez v28, :cond_14

    .line 176
    const v28, 0x7f09001d

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/studentenwerk/activities/MensaMealDetail;->findViewById(I)Landroid/view/View;

    move-result-object v28

    check-cast v28, Landroid/widget/TextView;

    move-object/from16 v0, v28

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    move-object/from16 v16, v17

    .line 185
    .end local v3    # "add":Lorg/json/JSONArray;
    .end local v7    # "df":Ljava/text/DecimalFormat;
    .end local v9    # "iProFlag":I
    .end local v10    # "index":I
    .end local v12    # "iv":Landroid/widget/ImageView;
    .end local v13    # "l":Ljava/lang/String;
    .end local v14    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v15    # "m":Ljava/lang/String;
    .end local v17    # "meal":Lorg/json/JSONObject;
    .end local v19    # "mealTitle":Ljava/lang/String;
    .end local v20    # "mensa":Lorg/json/JSONObject;
    .end local v21    # "metaData":Lorg/json/JSONObject;
    .end local v22    # "proText":Landroid/widget/TextView;
    .end local v24    # "subText":Ljava/lang/String;
    .restart local v16    # "meal":Lorg/json/JSONObject;
    :goto_6
    sget v28, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v29, 0xb

    move/from16 v0, v28

    move/from16 v1, v29

    if-lt v0, v1, :cond_b

    .line 186
    invoke-virtual/range {p0 .. p0}, Lcom/studentenwerk/activities/MensaMealDetail;->getActionBar()Landroid/app/ActionBar;

    move-result-object v28

    const/16 v29, 0x1

    invoke-virtual/range {v28 .. v29}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 187
    invoke-virtual/range {p0 .. p0}, Lcom/studentenwerk/activities/MensaMealDetail;->getActionBar()Landroid/app/ActionBar;

    move-result-object v28

    const/16 v29, 0x1

    invoke-virtual/range {v28 .. v29}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 188
    invoke-virtual/range {p0 .. p0}, Lcom/studentenwerk/activities/MensaMealDetail;->getActionBar()Landroid/app/ActionBar;

    move-result-object v28

    new-instance v29, Landroid/graphics/drawable/ColorDrawable;

    const v30, -0x777778

    invoke-direct/range {v29 .. v30}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual/range {v28 .. v29}, Landroid/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 190
    :cond_b
    return-void

    .line 81
    .end local v16    # "meal":Lorg/json/JSONObject;
    .restart local v7    # "df":Ljava/text/DecimalFormat;
    .restart local v10    # "index":I
    .restart local v13    # "l":Ljava/lang/String;
    .restart local v15    # "m":Ljava/lang/String;
    .restart local v17    # "meal":Lorg/json/JSONObject;
    .restart local v19    # "mealTitle":Ljava/lang/String;
    .restart local v21    # "metaData":Lorg/json/JSONObject;
    .restart local v24    # "subText":Ljava/lang/String;
    :cond_c
    :try_start_2
    invoke-virtual/range {p0 .. p0}, Lcom/studentenwerk/activities/MensaMealDetail;->getApplication()Landroid/app/Application;

    move-result-object v28

    check-cast v28, Lcom/studentenwerk/UNIverse;

    const/16 v29, 0x0

    invoke-virtual/range {v28 .. v29}, Lcom/studentenwerk/UNIverse;->getData(I)Lorg/json/JSONObject;

    move-result-object v21

    .line 82
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_0

    .line 98
    .restart local v9    # "iProFlag":I
    .restart local v20    # "mensa":Lorg/json/JSONObject;
    .restart local v22    # "proText":Landroid/widget/TextView;
    :cond_d
    const/16 v28, 0x2

    move/from16 v0, v28

    if-ne v9, v0, :cond_e

    invoke-virtual/range {p0 .. p0}, Lcom/studentenwerk/activities/MensaMealDetail;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    const v29, 0x7f050010

    invoke-virtual/range {v28 .. v29}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v22

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_1

    .line 181
    .end local v7    # "df":Ljava/text/DecimalFormat;
    .end local v9    # "iProFlag":I
    .end local v10    # "index":I
    .end local v13    # "l":Ljava/lang/String;
    .end local v15    # "m":Ljava/lang/String;
    .end local v19    # "mealTitle":Ljava/lang/String;
    .end local v20    # "mensa":Lorg/json/JSONObject;
    .end local v21    # "metaData":Lorg/json/JSONObject;
    .end local v22    # "proText":Landroid/widget/TextView;
    .end local v24    # "subText":Ljava/lang/String;
    :catch_0
    move-exception v8

    move-object/from16 v16, v17

    .line 182
    .end local v17    # "meal":Lorg/json/JSONObject;
    .local v8, "e":Lorg/json/JSONException;
    .restart local v16    # "meal":Lorg/json/JSONObject;
    :goto_7
    invoke-virtual {v8}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_6

    .line 99
    .end local v8    # "e":Lorg/json/JSONException;
    .end local v16    # "meal":Lorg/json/JSONObject;
    .restart local v7    # "df":Ljava/text/DecimalFormat;
    .restart local v9    # "iProFlag":I
    .restart local v10    # "index":I
    .restart local v13    # "l":Ljava/lang/String;
    .restart local v15    # "m":Ljava/lang/String;
    .restart local v17    # "meal":Lorg/json/JSONObject;
    .restart local v19    # "mealTitle":Ljava/lang/String;
    .restart local v20    # "mensa":Lorg/json/JSONObject;
    .restart local v21    # "metaData":Lorg/json/JSONObject;
    .restart local v22    # "proText":Landroid/widget/TextView;
    .restart local v24    # "subText":Ljava/lang/String;
    :cond_e
    const/16 v28, 0x8

    :try_start_3
    move-object/from16 v0, v22

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1

    .line 134
    .restart local v12    # "iv":Landroid/widget/ImageView;
    .restart local v14    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_f
    const/16 v28, 0x8

    move/from16 v0, v28

    invoke-virtual {v12, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_2

    .line 142
    :cond_10
    const/16 v28, 0x8

    move/from16 v0, v28

    invoke-virtual {v12, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_3

    .line 150
    :cond_11
    const/16 v28, 0x8

    move/from16 v0, v28

    invoke-virtual {v12, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_4

    .line 164
    .restart local v3    # "add":Lorg/json/JSONArray;
    .restart local v4    # "additionals":Ljava/lang/String;
    .restart local v11    # "io":I
    .restart local v25    # "tmp":Z
    :cond_12
    invoke-virtual {v3, v11}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->length()I

    move-result v28

    if-lez v28, :cond_13

    .line 165
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v29

    invoke-direct/range {v28 .. v29}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v11}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, ", "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 166
    const/16 v25, 0x1

    .line 163
    :cond_13
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_5

    .line 178
    .end local v4    # "additionals":Ljava/lang/String;
    .end local v11    # "io":I
    .end local v25    # "tmp":Z
    :cond_14
    const v28, 0x7f09001d

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/studentenwerk/activities/MensaMealDetail;->findViewById(I)Landroid/view/View;

    move-result-object v28

    check-cast v28, Landroid/widget/TextView;

    .line 179
    const/16 v29, 0x8

    invoke-virtual/range {v28 .. v29}, Landroid/widget/TextView;->setVisibility(I)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0

    move-object/from16 v16, v17

    .end local v17    # "meal":Lorg/json/JSONObject;
    .restart local v16    # "meal":Lorg/json/JSONObject;
    goto/16 :goto_6

    .line 181
    .end local v3    # "add":Lorg/json/JSONArray;
    .end local v7    # "df":Ljava/text/DecimalFormat;
    .end local v9    # "iProFlag":I
    .end local v10    # "index":I
    .end local v12    # "iv":Landroid/widget/ImageView;
    .end local v13    # "l":Ljava/lang/String;
    .end local v14    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v15    # "m":Ljava/lang/String;
    .end local v19    # "mealTitle":Ljava/lang/String;
    .end local v20    # "mensa":Lorg/json/JSONObject;
    .end local v21    # "metaData":Lorg/json/JSONObject;
    .end local v22    # "proText":Landroid/widget/TextView;
    .end local v24    # "subText":Ljava/lang/String;
    :catch_1
    move-exception v8

    goto :goto_7
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "menuItem"    # Landroid/view/MenuItem;

    .prologue
    .line 194
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 199
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 196
    :pswitch_0
    invoke-virtual {p0}, Lcom/studentenwerk/activities/MensaMealDetail;->finish()V

    .line 197
    const/4 v0, 0x1

    goto :goto_0

    .line 194
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method public rating_Clicked(Landroid/view/View;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 205
    invoke-virtual {p0}, Lcom/studentenwerk/activities/MensaMealDetail;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 207
    .local v0, "extras":Landroid/os/Bundle;
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/studentenwerk/activities/Rating;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 208
    const-string v3, "meal"

    const-string v4, "meal"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 209
    const-string v3, "mensa"

    const-string v4, "mensa"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 210
    const-string v3, "line"

    const-string v4, "line"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 211
    const-string v3, "date"

    const-string v4, "date"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v1

    .line 213
    .local v1, "intent":Landroid/content/Intent;
    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/studentenwerk/activities/MensaMealDetail;->startActivityForResult(Landroid/content/Intent;I)V

    .line 214
    return-void
.end method
