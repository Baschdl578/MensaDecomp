.class public Lcom/studentenwerk/activities/Settings;
.super Landroid/app/ExpandableListActivity;
.source "Settings.java"


# instance fields
.field private arrMensenKeys:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field list:Landroid/widget/ExpandableListView;

.field private metaData:Lorg/json/JSONObject;

.field private settingsAdapter:Lcom/studentenwerk/classes/SettingsAdapter;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/app/ExpandableListActivity;-><init>()V

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/studentenwerk/activities/Settings;->arrMensenKeys:Ljava/util/ArrayList;

    .line 29
    return-void
.end method

.method private getExpAdapter()Lcom/studentenwerk/classes/SettingsAdapter;
    .locals 17

    .prologue
    .line 138
    invoke-virtual/range {p0 .. p0}, Lcom/studentenwerk/activities/Settings;->getApplication()Landroid/app/Application;

    move-result-object v2

    check-cast v2, Lcom/studentenwerk/UNIverse;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/studentenwerk/UNIverse;->getData(I)Lorg/json/JSONObject;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/studentenwerk/activities/Settings;->metaData:Lorg/json/JSONObject;

    .line 143
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 147
    .local v3, "mainList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    .line 148
    .local v13, "listItem":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "setting"

    const-string v4, "Mensen ausw\u00e4hlen"

    invoke-virtual {v13, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    invoke-virtual {v3, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 151
    new-instance v13, Ljava/util/HashMap;

    .end local v13    # "listItem":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    .line 152
    .restart local v13    # "listItem":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "setting"

    const-string v4, "Gerichte ausschlie\u00dfen"

    invoke-virtual {v13, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    invoke-virtual {v3, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 155
    new-instance v13, Ljava/util/HashMap;

    .end local v13    # "listItem":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    .line 156
    .restart local v13    # "listItem":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "setting"

    const-string v4, "Standardpreis festlegen"

    invoke-virtual {v13, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    invoke-virtual {v3, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 159
    new-instance v13, Ljava/util/HashMap;

    .end local v13    # "listItem":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    .line 160
    .restart local v13    # "listItem":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "setting"

    const-string v4, "Benutzerdaten festlegen"

    invoke-virtual {v13, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    invoke-virtual {v3, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 170
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 171
    .local v7, "treeSub":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;>;"
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 174
    .local v15, "tmpSub":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/studentenwerk/activities/Settings;->getApplication()Landroid/app/Application;

    move-result-object v2

    check-cast v2, Lcom/studentenwerk/UNIverse;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/studentenwerk/UNIverse;->getOrderedCanteenList(Z)Ljava/util/LinkedHashMap;

    move-result-object v14

    .line 177
    .local v14, "orderedCanteenList":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {v14}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .line 178
    .local v11, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 186
    invoke-virtual {v7, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 195
    new-instance v15, Ljava/util/ArrayList;

    .end local v15    # "tmpSub":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 196
    .restart local v15    # "tmpSub":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    new-instance v13, Ljava/util/HashMap;

    .end local v13    # "listItem":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    .line 197
    .restart local v13    # "listItem":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "value"

    const-string v4, "Kein Schwein"

    invoke-virtual {v13, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    const-string v2, "key"

    const-string v4, "pork"

    invoke-virtual {v13, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    invoke-virtual {v15, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 201
    new-instance v13, Ljava/util/HashMap;

    .end local v13    # "listItem":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    .line 202
    .restart local v13    # "listItem":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "value"

    const-string v4, "Kein Rind"

    invoke-virtual {v13, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    const-string v2, "key"

    const-string v4, "cow"

    invoke-virtual {v13, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    invoke-virtual {v15, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 206
    new-instance v13, Ljava/util/HashMap;

    .end local v13    # "listItem":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    .line 207
    .restart local v13    # "listItem":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "value"

    const-string v4, "Kein Fisch"

    invoke-virtual {v13, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    const-string v2, "key"

    const-string v4, "fish"

    invoke-virtual {v13, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    invoke-virtual {v15, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 211
    invoke-virtual {v7, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 220
    new-instance v15, Ljava/util/ArrayList;

    .end local v15    # "tmpSub":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 221
    .restart local v15    # "tmpSub":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    new-instance v13, Ljava/util/HashMap;

    .end local v13    # "listItem":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    .line 222
    .restart local v13    # "listItem":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "value"

    const v4, 0x7f050012

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/studentenwerk/activities/Settings;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v13, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    const-string v2, "key"

    const-string v4, "1"

    invoke-virtual {v13, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    invoke-virtual {v15, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 241
    invoke-virtual {v7, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 250
    new-instance v15, Ljava/util/ArrayList;

    .end local v15    # "tmpSub":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 251
    .restart local v15    # "tmpSub":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    new-instance v13, Ljava/util/HashMap;

    .end local v13    # "listItem":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    .line 252
    .restart local v13    # "listItem":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "value"

    const v4, 0x7f05001b

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/studentenwerk/activities/Settings;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v13, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    const-string v2, "key"

    const-string v4, "2"

    invoke-virtual {v13, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    invoke-virtual {v15, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 255
    invoke-virtual {v7, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 268
    new-instance v1, Lcom/studentenwerk/classes/SettingsAdapter;

    .line 269
    const v4, 0x7f030002

    const/4 v2, 0x1

    new-array v5, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v6, "setting"

    aput-object v6, v5, v2

    .line 270
    const/4 v2, 0x1

    new-array v6, v2, [I

    const/4 v2, 0x0

    const/high16 v8, 0x7f090000

    aput v8, v6, v2

    const/high16 v8, 0x7f030000

    .line 271
    const/4 v2, 0x1

    new-array v9, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v10, "value"

    aput-object v10, v9, v2

    const/4 v2, 0x1

    new-array v10, v2, [I

    const/4 v2, 0x0

    const/high16 v16, 0x7f090000

    aput v16, v10, v2

    move-object/from16 v2, p0

    .line 268
    invoke-direct/range {v1 .. v10}, Lcom/studentenwerk/classes/SettingsAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[ILjava/util/List;I[Ljava/lang/String;[I)V

    .line 274
    .local v1, "expListAdapter":Lcom/studentenwerk/classes/SettingsAdapter;
    return-object v1

    .line 179
    .end local v1    # "expListAdapter":Lcom/studentenwerk/classes/SettingsAdapter;
    :cond_0
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 180
    .local v12, "key":Ljava/lang/String;
    new-instance v13, Ljava/util/HashMap;

    .end local v13    # "listItem":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    .line 181
    .restart local v13    # "listItem":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v4, "value"

    invoke-virtual {v14, v12}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v13, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    const-string v2, "key"

    invoke-virtual {v13, v2, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    invoke-virtual {v15, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method


# virtual methods
.method public loginUserData_Clicked(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 63
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/studentenwerk/activities/UserLogin;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 64
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/studentenwerk/activities/Settings;->startActivity(Landroid/content/Intent;)V

    .line 65
    return-void
.end method

.method public onChildClick(Landroid/widget/ExpandableListView;Landroid/view/View;IIJ)Z
    .locals 16
    .param p1, "parent"    # Landroid/widget/ExpandableListView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "groupPosition"    # I
    .param p4, "childPosition"    # I
    .param p5, "id"    # J

    .prologue
    .line 78
    const/4 v14, 0x2

    move/from16 v0, p3

    if-eq v0, v14, :cond_0

    .line 79
    const v14, 0x7f090001

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    .line 80
    .local v4, "cb":Landroid/widget/CheckBox;
    invoke-virtual {v4}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v14

    if-eqz v14, :cond_1

    const/4 v14, 0x0

    :goto_0
    invoke-virtual {v4, v14}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 83
    .end local v4    # "cb":Landroid/widget/CheckBox;
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/studentenwerk/activities/Settings;->getApplication()Landroid/app/Application;

    move-result-object v3

    check-cast v3, Lcom/studentenwerk/UNIverse;

    .line 86
    .local v3, "app":Lcom/studentenwerk/UNIverse;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/studentenwerk/activities/Settings;->settingsAdapter:Lcom/studentenwerk/classes/SettingsAdapter;

    move/from16 v0, p3

    move/from16 v1, p4

    invoke-virtual {v14, v0, v1}, Lcom/studentenwerk/classes/SettingsAdapter;->getChild(II)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/HashMap;

    .line 88
    .local v8, "keyObj":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v14, "key"

    invoke-virtual {v8, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .local v7, "key":Ljava/lang/String;
    const-string v10, ""

    .line 90
    .local v10, "prefix":Ljava/lang/String;
    packed-switch p3, :pswitch_data_0

    .line 108
    const/4 v14, 0x0

    .line 132
    :goto_1
    return v14

    .line 80
    .end local v3    # "app":Lcom/studentenwerk/UNIverse;
    .end local v7    # "key":Ljava/lang/String;
    .end local v8    # "keyObj":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v10    # "prefix":Ljava/lang/String;
    .restart local v4    # "cb":Landroid/widget/CheckBox;
    :cond_1
    const/4 v14, 0x1

    goto :goto_0

    .line 93
    .end local v4    # "cb":Landroid/widget/CheckBox;
    .restart local v3    # "app":Lcom/studentenwerk/UNIverse;
    .restart local v7    # "key":Ljava/lang/String;
    .restart local v8    # "keyObj":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v10    # "prefix":Ljava/lang/String;
    :pswitch_0
    const-string v10, "mensen"

    .line 112
    :cond_2
    const-string v14, "settings"

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Lcom/studentenwerk/activities/Settings;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v9

    .line 113
    .local v9, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v9}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v12

    .line 114
    .local v12, "spe":Landroid/content/SharedPreferences$Editor;
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 116
    .local v13, "tmpBlackList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "count_"

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    invoke-interface {v9, v14, v15}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 117
    .local v5, "count":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_2
    if-lt v6, v5, :cond_3

    .line 120
    invoke-virtual {v13, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 121
    invoke-virtual {v13, v7}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 125
    :goto_3
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 126
    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "count_"

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v12, v14, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 127
    const/4 v2, 0x0

    .local v2, "a":I
    :goto_4
    if-lt v2, v5, :cond_5

    .line 130
    invoke-interface {v12}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 132
    const/4 v14, 0x1

    goto :goto_1

    .line 96
    .end local v2    # "a":I
    .end local v5    # "count":I
    .end local v6    # "i":I
    .end local v9    # "preferences":Landroid/content/SharedPreferences;
    .end local v12    # "spe":Landroid/content/SharedPreferences$Editor;
    .end local v13    # "tmpBlackList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :pswitch_1
    const-string v10, "blacklists"

    .line 97
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/studentenwerk/activities/Settings;->arrMensenKeys:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_5
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_2

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 98
    .local v11, "s":Ljava/lang/String;
    const/4 v15, 0x1

    invoke-virtual {v3, v15, v11}, Lcom/studentenwerk/UNIverse;->deleteCache(ILjava/lang/String;)V

    goto :goto_5

    .line 103
    .end local v11    # "s":Ljava/lang/String;
    :pswitch_2
    const/4 v14, 0x1

    goto :goto_1

    .line 106
    :pswitch_3
    const/4 v14, 0x1

    goto :goto_1

    .line 118
    .restart local v5    # "count":I
    .restart local v6    # "i":I
    .restart local v9    # "preferences":Landroid/content/SharedPreferences;
    .restart local v12    # "spe":Landroid/content/SharedPreferences$Editor;
    .restart local v13    # "tmpBlackList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_3
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v15, "_"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    invoke-interface {v9, v14, v15}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 117
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 123
    :cond_4
    invoke-virtual {v13, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 128
    .restart local v2    # "a":I
    :cond_5
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v15, "_"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-interface {v12, v15, v14}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 127
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 90
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x1

    .line 39
    invoke-super {p0, p1}, Landroid/app/ExpandableListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 40
    const v1, 0x7f030001

    invoke-virtual {p0, v1}, Lcom/studentenwerk/activities/Settings;->setContentView(I)V

    .line 42
    invoke-direct {p0}, Lcom/studentenwerk/activities/Settings;->getExpAdapter()Lcom/studentenwerk/classes/SettingsAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/studentenwerk/activities/Settings;->settingsAdapter:Lcom/studentenwerk/classes/SettingsAdapter;

    .line 43
    iget-object v2, p0, Lcom/studentenwerk/activities/Settings;->settingsAdapter:Lcom/studentenwerk/classes/SettingsAdapter;

    invoke-virtual {p0}, Lcom/studentenwerk/activities/Settings;->getApplication()Landroid/app/Application;

    move-result-object v1

    check-cast v1, Lcom/studentenwerk/UNIverse;

    invoke-virtual {v2, v1}, Lcom/studentenwerk/classes/SettingsAdapter;->setApp(Lcom/studentenwerk/UNIverse;)V

    .line 45
    const-string v1, "settings"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/studentenwerk/activities/Settings;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 46
    .local v0, "sp":Landroid/content/SharedPreferences;
    iget-object v1, p0, Lcom/studentenwerk/activities/Settings;->settingsAdapter:Lcom/studentenwerk/classes/SettingsAdapter;

    const-string v2, "defaultPrice"

    const-string v3, "1"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/studentenwerk/classes/SettingsAdapter;->setPriceType(Ljava/lang/String;)V

    .line 48
    iget-object v1, p0, Lcom/studentenwerk/activities/Settings;->settingsAdapter:Lcom/studentenwerk/classes/SettingsAdapter;

    invoke-virtual {p0, v1}, Lcom/studentenwerk/activities/Settings;->setListAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 50
    invoke-virtual {p0}, Lcom/studentenwerk/activities/Settings;->getExpandableListView()Landroid/widget/ExpandableListView;

    move-result-object v1

    iput-object v1, p0, Lcom/studentenwerk/activities/Settings;->list:Landroid/widget/ExpandableListView;

    .line 51
    iget-object v1, p0, Lcom/studentenwerk/activities/Settings;->list:Landroid/widget/ExpandableListView;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/widget/ExpandableListView;->expandGroup(I)Z

    .line 53
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_0

    .line 54
    invoke-virtual {p0}, Lcom/studentenwerk/activities/Settings;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 55
    invoke-virtual {p0}, Lcom/studentenwerk/activities/Settings;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 56
    invoke-virtual {p0}, Lcom/studentenwerk/activities/Settings;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    const v3, -0x777778

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 58
    :cond_0
    return-void
.end method

.method public onGroupCollapse(I)V
    .locals 2
    .param p1, "collapseIndex"    # I

    .prologue
    const/4 v1, 0x3

    .line 71
    if-ne p1, v1, :cond_0

    iget-object v0, p0, Lcom/studentenwerk/activities/Settings;->list:Landroid/widget/ExpandableListView;

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->expandGroup(I)Z

    .line 72
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "menuItem"    # Landroid/view/MenuItem;

    .prologue
    .line 279
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 284
    invoke-super {p0, p1}, Landroid/app/ExpandableListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 281
    :pswitch_0
    invoke-virtual {p0}, Lcom/studentenwerk/activities/Settings;->finish()V

    .line 282
    const/4 v0, 0x1

    goto :goto_0

    .line 279
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method
