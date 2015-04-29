.class public Lcom/studentenwerk/classes/GroupedListAdapter;
.super Landroid/widget/BaseAdapter;
.source "GroupedListAdapter.java"


# static fields
.field private static final TYPE_SECTION_CONTENT:I = 0x1

.field private static final TYPE_SECTION_HEADER:I


# instance fields
.field private data:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation
.end field

.field private final headers:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private inflater:Landroid/view/LayoutInflater;

.field private priceType:Ljava/lang/String;

.field private final sections:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "[",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 39
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 30
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/studentenwerk/classes/GroupedListAdapter;->sections:Ljava/util/Map;

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/studentenwerk/classes/GroupedListAdapter;->data:Ljava/util/ArrayList;

    .line 35
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/studentenwerk/classes/GroupedListAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 37
    const-string v0, ""

    iput-object v0, p0, Lcom/studentenwerk/classes/GroupedListAdapter;->priceType:Ljava/lang/String;

    .line 40
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v1, 0x7f030006

    invoke-direct {v0, p1, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/studentenwerk/classes/GroupedListAdapter;->headers:Landroid/widget/ArrayAdapter;

    .line 41
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/studentenwerk/classes/GroupedListAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 42
    return-void
.end method


# virtual methods
.method public addSection(Ljava/lang/String;Lorg/json/JSONArray;)V
    .locals 21
    .param p1, "section"    # Ljava/lang/String;
    .param p2, "content"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 56
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/studentenwerk/classes/GroupedListAdapter;->headers:Landroid/widget/ArrayAdapter;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 57
    invoke-virtual/range {p2 .. p2}, Lorg/json/JSONArray;->length()I

    move-result v17

    move/from16 v0, v17

    new-array v14, v0, [Landroid/view/View;

    .line 58
    .local v14, "tmpViews":[Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/studentenwerk/classes/GroupedListAdapter;->data:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 60
    new-instance v5, Ljava/text/DecimalFormat;

    const-string v17, ",##0.00 \u20ac"

    move-object/from16 v0, v17

    invoke-direct {v5, v0}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 61
    .local v5, "df":Ljava/text/DecimalFormat;
    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string v17, "E dd.MM.yyyy"

    move-object/from16 v0, v17

    invoke-direct {v4, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 63
    .local v4, "datef":Ljava/text/SimpleDateFormat;
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    invoke-virtual/range {p2 .. p2}, Lorg/json/JSONArray;->length()I

    move-result v17

    move/from16 v0, v17

    if-lt v7, v0, :cond_0

    .line 167
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/studentenwerk/classes/GroupedListAdapter;->sections:Ljava/util/Map;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-interface {v0, v1, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    return-void

    .line 65
    :cond_0
    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/json/JSONObject;

    .line 67
    .local v10, "meal":Lorg/json/JSONObject;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/studentenwerk/classes/GroupedListAdapter;->data:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 69
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/studentenwerk/classes/GroupedListAdapter;->inflater:Landroid/view/LayoutInflater;

    move-object/from16 v17, v0

    const v18, 0x7f030009

    const/16 v19, 0x0

    invoke-virtual/range {v17 .. v19}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v16

    .line 73
    .local v16, "v":Landroid/view/View;
    const-string v17, "meal"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_c

    .line 74
    const-string v17, "meal"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    const-string v18, " EUR "

    const-string v19, " \u20ac "

    invoke-virtual/range {v17 .. v19}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v11

    .line 76
    .local v11, "mealTitle":Ljava/lang/String;
    const-string v17, "dish"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 78
    .local v13, "subText":Ljava/lang/String;
    const-string v17, "price_flag"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v8

    .line 79
    .local v8, "iProFlag":I
    const v17, 0x7f090020

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 81
    .local v12, "proText":Landroid/widget/TextView;
    packed-switch v8, :pswitch_data_0

    .line 89
    const/16 v17, 0x8

    move/from16 v0, v17

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 93
    :goto_1
    const v17, 0x7f09002b

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/studentenwerk/classes/GroupedListAdapter;->priceType:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v18

    move-wide/from16 v0, v18

    invoke-virtual {v5, v0, v1}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 97
    .local v3, "al":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const-string v17, "fish"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_1

    .line 98
    const v17, 0x7f020011

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 99
    :cond_1
    const-string v17, "pork"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_2

    .line 100
    const v17, 0x7f020017

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 101
    :cond_2
    const-string v17, "cow"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_3

    .line 102
    const v17, 0x7f020014

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 103
    :cond_3
    const-string v17, "cow_aw"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_4

    .line 104
    const v17, 0x7f020015

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 105
    :cond_4
    const-string v17, "vegan"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_5

    .line 106
    const v17, 0x7f020018

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 107
    :cond_5
    const-string v17, "veg"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_6

    .line 108
    const v17, 0x7f020019

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 110
    :cond_6
    const v17, 0x7f090019

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    .line 112
    .local v9, "iv":Landroid/widget/ImageView;
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v17

    if-lez v17, :cond_9

    .line 113
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v9, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 114
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Integer;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v9, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 118
    :goto_2
    const v17, 0x7f09001a

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    .end local v9    # "iv":Landroid/widget/ImageView;
    check-cast v9, Landroid/widget/ImageView;

    .line 119
    .restart local v9    # "iv":Landroid/widget/ImageView;
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_a

    .line 120
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v9, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 121
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Integer;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v9, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 125
    :goto_3
    const v17, 0x7f09001b

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    .end local v9    # "iv":Landroid/widget/ImageView;
    check-cast v9, Landroid/widget/ImageView;

    .line 126
    .restart local v9    # "iv":Landroid/widget/ImageView;
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v17

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_b

    .line 127
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v9, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 128
    const/16 v17, 0x2

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Integer;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v9, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 157
    .end local v3    # "al":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v8    # "iProFlag":I
    .end local v12    # "proText":Landroid/widget/TextView;
    :cond_7
    :goto_4
    const v17, 0x7f09001c

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 159
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v17

    if-lez v17, :cond_8

    const v17, 0x7f09001d

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 165
    :cond_8
    aput-object v16, v14, v7

    .line 63
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    .line 83
    .end local v9    # "iv":Landroid/widget/ImageView;
    .restart local v8    # "iProFlag":I
    .restart local v12    # "proText":Landroid/widget/TextView;
    :pswitch_0
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x7f05000f

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 86
    :pswitch_1
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x7f050010

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 116
    .restart local v3    # "al":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v9    # "iv":Landroid/widget/ImageView;
    :cond_9
    const/16 v17, 0x8

    move/from16 v0, v17

    invoke-virtual {v9, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_2

    .line 123
    :cond_a
    const/16 v17, 0x8

    move/from16 v0, v17

    invoke-virtual {v9, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_3

    .line 130
    :cond_b
    const/16 v17, 0x8

    move/from16 v0, v17

    invoke-virtual {v9, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_4

    .line 133
    .end local v3    # "al":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v8    # "iProFlag":I
    .end local v9    # "iv":Landroid/widget/ImageView;
    .end local v11    # "mealTitle":Ljava/lang/String;
    .end local v12    # "proText":Landroid/widget/TextView;
    .end local v13    # "subText":Ljava/lang/String;
    :cond_c
    const-string v11, "Geschlossen"

    .line 134
    .restart local v11    # "mealTitle":Ljava/lang/String;
    const v17, 0x7f090019

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    .line 135
    .restart local v9    # "iv":Landroid/widget/ImageView;
    const/16 v17, 0x8

    move/from16 v0, v17

    invoke-virtual {v9, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 136
    const v17, 0x7f09001a

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    .end local v9    # "iv":Landroid/widget/ImageView;
    check-cast v9, Landroid/widget/ImageView;

    .line 137
    .restart local v9    # "iv":Landroid/widget/ImageView;
    const/16 v17, 0x8

    move/from16 v0, v17

    invoke-virtual {v9, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 138
    const v17, 0x7f09001b

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    .end local v9    # "iv":Landroid/widget/ImageView;
    check-cast v9, Landroid/widget/ImageView;

    .line 139
    .restart local v9    # "iv":Landroid/widget/ImageView;
    const/16 v17, 0x8

    move/from16 v0, v17

    invoke-virtual {v9, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 140
    const v17, 0x7f090020

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    const/16 v18, 0x8

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setVisibility(I)V

    .line 141
    const v17, 0x7f09002b

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    const/16 v18, 0x8

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setVisibility(I)V

    .line 143
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 144
    .local v2, "actDate":Ljava/util/Calendar;
    const-string v13, ""

    .line 145
    .restart local v13    # "subText":Ljava/lang/String;
    const-string v17, "closing_start"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_7

    .line 147
    const-string v17, "closing_start"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v17

    const-wide/16 v19, 0x3e8

    mul-long v17, v17, v19

    move-wide/from16 v0, v17

    invoke-virtual {v2, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 148
    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    .line 149
    .local v6, "from":Ljava/lang/String;
    const-string v17, "closing_end"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v17

    const-wide/16 v19, 0x3e8

    mul-long v17, v17, v19

    move-wide/from16 v0, v17

    invoke-virtual {v2, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 150
    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v15

    .line 152
    .local v15, "until":Ljava/lang/String;
    const-string v17, "Von %s bis einschlie\u00dflich %s"

    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput-object v6, v18, v19

    const/16 v19, 0x1

    .line 153
    aput-object v15, v18, v19

    .line 152
    invoke-static/range {v17 .. v18}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_4

    .line 81
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public areAllItemsSelectable()Z
    .locals 1

    .prologue
    .line 223
    const/4 v0, 0x0

    return v0
.end method

.method public clearData()V
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/studentenwerk/classes/GroupedListAdapter;->headers:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->clear()V

    .line 46
    iget-object v0, p0, Lcom/studentenwerk/classes/GroupedListAdapter;->data:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 47
    iget-object v0, p0, Lcom/studentenwerk/classes/GroupedListAdapter;->sections:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 48
    return-void
.end method

.method public getCount()I
    .locals 4

    .prologue
    .line 194
    const/4 v1, 0x0

    .line 195
    .local v1, "total":I
    iget-object v2, p0, Lcom/studentenwerk/classes/GroupedListAdapter;->sections:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 197
    return v1

    .line 195
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/view/View;

    .line 196
    .local v0, "adapter":[Landroid/view/View;
    array-length v3, v0

    add-int/lit8 v3, v3, 0x1

    add-int/2addr v1, v3

    goto :goto_0
.end method

.method public getData(I)Lorg/json/JSONObject;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 171
    iget-object v0, p0, Lcom/studentenwerk/classes/GroupedListAdapter;->data:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le p1, v0, :cond_0

    .line 172
    const/4 v0, 0x0

    .line 173
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/studentenwerk/classes/GroupedListAdapter;->data:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 5
    .param p1, "position"    # I

    .prologue
    .line 177
    iget-object v3, p0, Lcom/studentenwerk/classes/GroupedListAdapter;->sections:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 189
    const/4 v1, 0x0

    :cond_0
    :goto_1
    return-object v1

    .line 177
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 178
    .local v1, "section":Ljava/lang/Object;
    iget-object v4, p0, Lcom/studentenwerk/classes/GroupedListAdapter;->sections:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/view/View;

    .line 179
    .local v0, "adapter":[Landroid/view/View;
    array-length v4, v0

    add-int/lit8 v2, v4, 0x1

    .line 181
    .local v2, "size":I
    if-eqz p1, :cond_0

    .line 183
    if-ge p1, v2, :cond_2

    .line 184
    iget-object v3, p0, Lcom/studentenwerk/classes/GroupedListAdapter;->sections:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/view/View;

    add-int/lit8 v4, p1, -0x1

    aget-object v1, v3, v4

    goto :goto_1

    .line 187
    :cond_2
    sub-int/2addr p1, v2

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 251
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 5
    .param p1, "position"    # I

    .prologue
    .line 207
    iget-object v3, p0, Lcom/studentenwerk/classes/GroupedListAdapter;->sections:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_0

    .line 219
    const/4 v3, -0x1

    :goto_1
    return v3

    .line 207
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 208
    .local v1, "section":Ljava/lang/Object;
    iget-object v4, p0, Lcom/studentenwerk/classes/GroupedListAdapter;->sections:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/view/View;

    .line 209
    .local v0, "adapter":[Landroid/view/View;
    array-length v4, v0

    add-int/lit8 v2, v4, 0x1

    .line 211
    .local v2, "size":I
    if-nez p1, :cond_1

    .line 212
    const/4 v3, 0x0

    goto :goto_1

    .line 214
    :cond_1
    if-ge p1, v2, :cond_2

    .line 215
    const/4 v3, 0x1

    goto :goto_1

    .line 217
    :cond_2
    sub-int/2addr p1, v2

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 232
    const/4 v2, 0x0

    .line 233
    .local v2, "sectionnum":I
    iget-object v4, p0, Lcom/studentenwerk/classes/GroupedListAdapter;->sections:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_0

    .line 247
    const/4 v4, 0x0

    :goto_1
    return-object v4

    .line 233
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 234
    .local v1, "section":Ljava/lang/Object;
    iget-object v5, p0, Lcom/studentenwerk/classes/GroupedListAdapter;->sections:Ljava/util/Map;

    invoke-interface {v5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/view/View;

    .line 235
    .local v0, "adapter":[Landroid/view/View;
    array-length v5, v0

    add-int/lit8 v3, v5, 0x1

    .line 237
    .local v3, "size":I
    if-nez p1, :cond_1

    .line 238
    iget-object v4, p0, Lcom/studentenwerk/classes/GroupedListAdapter;->headers:Landroid/widget/ArrayAdapter;

    invoke-virtual {v4, v2, p2, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    goto :goto_1

    .line 240
    :cond_1
    if-ge p1, v3, :cond_2

    .line 241
    iget-object v4, p0, Lcom/studentenwerk/classes/GroupedListAdapter;->sections:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/view/View;

    add-int/lit8 v5, p1, -0x1

    aget-object v4, v4, v5

    goto :goto_1

    .line 243
    :cond_2
    sub-int/2addr p1, v3

    .line 244
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 202
    const/4 v0, 0x2

    return v0
.end method

.method public isEnabled(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 228
    invoke-virtual {p0, p1}, Lcom/studentenwerk/classes/GroupedListAdapter;->getItemViewType(I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setPriceType(Ljava/lang/String;)V
    .locals 0
    .param p1, "t"    # Ljava/lang/String;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/studentenwerk/classes/GroupedListAdapter;->priceType:Ljava/lang/String;

    .line 52
    return-void
.end method
