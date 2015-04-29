.class public Lcom/studentenwerk/activities/MensaMealList;
.super Landroid/app/ListActivity;
.source "MensaMealList.java"


# static fields
.field static final PICK_DATE_REQUEST:I


# instance fields
.field private actDateKey:I

.field private actMensaObj:Lorg/json/JSONObject;

.field private aviableDates:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private chosenMensa:Ljava/lang/String;

.field private final df:Ljava/text/SimpleDateFormat;

.field private dialog:Landroid/app/ProgressDialog;

.field private formatedDate:Ljava/lang/String;

.field private lineArr:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private listAdapter:Lcom/studentenwerk/classes/GroupedListAdapter;

.field lv:Landroid/widget/ListView;

.field private mHandler:Landroid/os/Handler;

.field private meals:Lorg/json/JSONObject;

.field private mensaName:Ljava/lang/String;

.field private mensenList:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mml:Lcom/studentenwerk/activities/MensaMealList;

.field private nextObj:Z

.field private prevObj:Z

.field private showUpdate:Ljava/lang/Runnable;

.field private sortedLines:Lorg/json/JSONArray;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 45
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 48
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "E, d.MMMM"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/studentenwerk/activities/MensaMealList;->df:Ljava/text/SimpleDateFormat;

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/studentenwerk/activities/MensaMealList;->aviableDates:Ljava/util/ArrayList;

    .line 51
    const/4 v0, 0x2

    iput v0, p0, Lcom/studentenwerk/activities/MensaMealList;->actDateKey:I

    .line 53
    iput-object v2, p0, Lcom/studentenwerk/activities/MensaMealList;->meals:Lorg/json/JSONObject;

    .line 56
    const-string v0, ""

    iput-object v0, p0, Lcom/studentenwerk/activities/MensaMealList;->mensaName:Ljava/lang/String;

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/studentenwerk/activities/MensaMealList;->lineArr:Ljava/util/ArrayList;

    .line 58
    iput-object v2, p0, Lcom/studentenwerk/activities/MensaMealList;->sortedLines:Lorg/json/JSONArray;

    .line 59
    iput-object v2, p0, Lcom/studentenwerk/activities/MensaMealList;->formatedDate:Ljava/lang/String;

    .line 65
    iput-boolean v3, p0, Lcom/studentenwerk/activities/MensaMealList;->prevObj:Z

    .line 67
    iput-boolean v3, p0, Lcom/studentenwerk/activities/MensaMealList;->nextObj:Z

    .line 262
    new-instance v0, Lcom/studentenwerk/activities/MensaMealList$1;

    invoke-direct {v0, p0}, Lcom/studentenwerk/activities/MensaMealList$1;-><init>(Lcom/studentenwerk/activities/MensaMealList;)V

    iput-object v0, p0, Lcom/studentenwerk/activities/MensaMealList;->showUpdate:Ljava/lang/Runnable;

    .line 45
    return-void
.end method

.method static synthetic access$0(Lcom/studentenwerk/activities/MensaMealList;)Landroid/app/ProgressDialog;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/studentenwerk/activities/MensaMealList;->dialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$1(Lcom/studentenwerk/activities/MensaMealList;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/studentenwerk/activities/MensaMealList;->aviableDates:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2(Lcom/studentenwerk/activities/MensaMealList;)I
    .locals 1

    .prologue
    .line 51
    iget v0, p0, Lcom/studentenwerk/activities/MensaMealList;->actDateKey:I

    return v0
.end method

.method static synthetic access$3(Lcom/studentenwerk/activities/MensaMealList;)Ljava/text/SimpleDateFormat;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/studentenwerk/activities/MensaMealList;->df:Ljava/text/SimpleDateFormat;

    return-object v0
.end method

.method static synthetic access$4(Lcom/studentenwerk/activities/MensaMealList;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/studentenwerk/activities/MensaMealList;->formatedDate:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$5(Lcom/studentenwerk/activities/MensaMealList;)Lcom/studentenwerk/classes/GroupedListAdapter;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/studentenwerk/activities/MensaMealList;->listAdapter:Lcom/studentenwerk/classes/GroupedListAdapter;

    return-object v0
.end method

.method static synthetic access$6(Lcom/studentenwerk/activities/MensaMealList;)Ljava/util/LinkedHashMap;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/studentenwerk/activities/MensaMealList;->mensenList:Ljava/util/LinkedHashMap;

    return-object v0
.end method

.method static synthetic access$7(Lcom/studentenwerk/activities/MensaMealList;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Lcom/studentenwerk/activities/MensaMealList;->chosenMensa:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$8(Lcom/studentenwerk/activities/MensaMealList;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 146
    invoke-direct {p0, p1}, Lcom/studentenwerk/activities/MensaMealList;->startThread(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$9(Lcom/studentenwerk/activities/MensaMealList;)V
    .locals 0

    .prologue
    .line 160
    invoke-direct {p0}, Lcom/studentenwerk/activities/MensaMealList;->loadData()V

    return-void
.end method

.method private afterClick()V
    .locals 6

    .prologue
    const v5, 0x7f090011

    const v4, 0x7f09000f

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 364
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 366
    .local v0, "newDate":Ljava/util/Calendar;
    invoke-virtual {p0, v5}, Lcom/studentenwerk/activities/MensaMealList;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 367
    invoke-virtual {p0, v4}, Lcom/studentenwerk/activities/MensaMealList;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 369
    iput-boolean v2, p0, Lcom/studentenwerk/activities/MensaMealList;->prevObj:Z

    .line 370
    iput-boolean v2, p0, Lcom/studentenwerk/activities/MensaMealList;->nextObj:Z

    .line 372
    iget v1, p0, Lcom/studentenwerk/activities/MensaMealList;->actDateKey:I

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lcom/studentenwerk/activities/MensaMealList;->aviableDates:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v1, v2, :cond_0

    .line 373
    invoke-virtual {p0, v5}, Lcom/studentenwerk/activities/MensaMealList;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 374
    iput-boolean v3, p0, Lcom/studentenwerk/activities/MensaMealList;->nextObj:Z

    .line 377
    :cond_0
    iget v1, p0, Lcom/studentenwerk/activities/MensaMealList;->actDateKey:I

    add-int/lit8 v1, v1, -0x1

    if-gez v1, :cond_1

    .line 378
    invoke-virtual {p0, v4}, Lcom/studentenwerk/activities/MensaMealList;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 379
    iput-boolean v3, p0, Lcom/studentenwerk/activities/MensaMealList;->prevObj:Z

    .line 382
    :cond_1
    iget-object v1, p0, Lcom/studentenwerk/activities/MensaMealList;->aviableDates:Ljava/util/ArrayList;

    iget v2, p0, Lcom/studentenwerk/activities/MensaMealList;->actDateKey:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    mul-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 384
    invoke-virtual {p0}, Lcom/studentenwerk/activities/MensaMealList;->getApplication()Landroid/app/Application;

    move-result-object v1

    check-cast v1, Lcom/studentenwerk/UNIverse;

    invoke-virtual {v1, v0}, Lcom/studentenwerk/UNIverse;->setChosenDate(Ljava/util/Calendar;)V

    .line 386
    const v1, 0x7f090010

    invoke-virtual {p0, v1}, Lcom/studentenwerk/activities/MensaMealList;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/studentenwerk/activities/MensaMealList;->df:Ljava/text/SimpleDateFormat;

    .line 387
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    .line 386
    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 389
    invoke-virtual {p0}, Lcom/studentenwerk/activities/MensaMealList;->loadMensaData()V

    .line 391
    iget-object v1, p0, Lcom/studentenwerk/activities/MensaMealList;->listAdapter:Lcom/studentenwerk/classes/GroupedListAdapter;

    invoke-virtual {v1}, Lcom/studentenwerk/classes/GroupedListAdapter;->notifyDataSetChanged()V

    .line 393
    return-void
.end method

.method private loadData()V
    .locals 26

    .prologue
    .line 162
    invoke-virtual/range {p0 .. p0}, Lcom/studentenwerk/activities/MensaMealList;->getApplication()Landroid/app/Application;

    move-result-object v18

    check-cast v18, Lcom/studentenwerk/UNIverse;

    .line 169
    .local v18, "universe":Lcom/studentenwerk/UNIverse;
    const/16 v21, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/studentenwerk/UNIverse;->getData(I)Lorg/json/JSONObject;

    move-result-object v16

    .line 171
    .local v16, "json":Lorg/json/JSONObject;
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/studentenwerk/activities/MensaMealList;->lineArr:Ljava/util/ArrayList;

    .line 173
    const-string v6, ""

    .line 175
    .local v6, "blackList":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/studentenwerk/activities/MensaMealList;->getApplication()Landroid/app/Application;

    move-result-object v21

    check-cast v21, Lcom/studentenwerk/UNIverse;

    const-string v22, "blacklists"

    invoke-virtual/range {v21 .. v22}, Lcom/studentenwerk/UNIverse;->getSettingArr(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v7

    .line 177
    .local v7, "blacklist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v14, 0x0

    .local v14, "index":I
    :goto_0
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v21

    move/from16 v0, v21

    if-lt v14, v0, :cond_0

    .line 181
    const/16 v21, 0x1

    new-instance v22, Ljava/lang/StringBuilder;

    const-string v23, "?mensa[]="

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/studentenwerk/activities/MensaMealList;->chosenMensa:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/studentenwerk/activities/MensaMealList;->chosenMensa:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v18

    move/from16 v1, v21

    move-object/from16 v2, v22

    move-object/from16 v3, v23

    invoke-virtual {v0, v1, v2, v3}, Lcom/studentenwerk/UNIverse;->loadData(ILjava/lang/String;Ljava/lang/String;)V

    .line 183
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/studentenwerk/activities/MensaMealList;->aviableDates:Ljava/util/ArrayList;

    .line 186
    :try_start_0
    const-string v21, "mensa"

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/studentenwerk/activities/MensaMealList;->chosenMensa:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/studentenwerk/activities/MensaMealList;->actMensaObj:Lorg/json/JSONObject;

    .line 189
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/studentenwerk/activities/MensaMealList;->actMensaObj:Lorg/json/JSONObject;

    move-object/from16 v21, v0

    const-string v22, "lines_sort"

    invoke-virtual/range {v21 .. v22}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/studentenwerk/activities/MensaMealList;->sortedLines:Lorg/json/JSONArray;

    .line 191
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/studentenwerk/activities/MensaMealList;->actMensaObj:Lorg/json/JSONObject;

    move-object/from16 v21, v0

    const-string v22, "name"

    invoke-virtual/range {v21 .. v22}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/studentenwerk/activities/MensaMealList;->mensaName:Ljava/lang/String;

    .line 193
    const/16 v21, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/studentenwerk/UNIverse;->getData(I)Lorg/json/JSONObject;

    move-result-object v8

    .line 195
    .local v8, "canteen":Lorg/json/JSONObject;
    if-nez v8, :cond_1

    .line 197
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/studentenwerk/activities/MensaMealList;->dialog:Landroid/app/ProgressDialog;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/app/ProgressDialog;->dismiss()V

    .line 198
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/studentenwerk/activities/MensaMealList;->mml:Lcom/studentenwerk/activities/MensaMealList;

    move-object/from16 v21, v0

    const/16 v22, 0x2

    invoke-virtual/range {v21 .. v22}, Lcom/studentenwerk/activities/MensaMealList;->setResult(I)V

    .line 199
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/studentenwerk/activities/MensaMealList;->mml:Lcom/studentenwerk/activities/MensaMealList;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/studentenwerk/activities/MensaMealList;->finish()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 260
    .end local v8    # "canteen":Lorg/json/JSONObject;
    :goto_1
    return-void

    .line 178
    :cond_0
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v22, "&bl[]="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual {v7, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/String;

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 177
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_0

    .line 204
    .restart local v8    # "canteen":Lorg/json/JSONObject;
    :cond_1
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/studentenwerk/activities/MensaMealList;->chosenMensa:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/studentenwerk/activities/MensaMealList;->meals:Lorg/json/JSONObject;

    .line 207
    const-string v21, "import_date"

    move-object/from16 v0, v21

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v21

    invoke-static/range {v21 .. v22}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 208
    .local v4, "UnixMealActuality":Ljava/lang/Long;
    new-instance v11, Ljava/text/SimpleDateFormat;

    const-string v21, "dd.MM.yy kk:mm"

    move-object/from16 v0, v21

    invoke-direct {v11, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 209
    .local v11, "dateFormat":Ljava/text/SimpleDateFormat;
    new-instance v10, Ljava/util/Date;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v21

    const-wide/16 v23, 0x3e8

    mul-long v21, v21, v23

    move-wide/from16 v0, v21

    invoke-direct {v10, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 210
    .local v10, "date":Ljava/util/Date;
    new-instance v21, Ljava/lang/StringBuilder;

    const-string v22, "Stand: "

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v10}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " Uhr"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/studentenwerk/activities/MensaMealList;->formatedDate:Ljava/lang/String;

    .line 213
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/studentenwerk/activities/MensaMealList;->meals:Lorg/json/JSONObject;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v15

    .line 214
    .local v15, "iter":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-nez v21, :cond_3

    .line 219
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/studentenwerk/activities/MensaMealList;->aviableDates:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Ljava/util/Collections;->sort(Ljava/util/List;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 228
    .end local v4    # "UnixMealActuality":Ljava/lang/Long;
    .end local v8    # "canteen":Lorg/json/JSONObject;
    .end local v10    # "date":Ljava/util/Date;
    .end local v11    # "dateFormat":Ljava/text/SimpleDateFormat;
    .end local v15    # "iter":Ljava/util/Iterator;
    :goto_3
    invoke-virtual/range {v18 .. v18}, Lcom/studentenwerk/UNIverse;->getChosenDate()Ljava/util/Calendar;

    move-result-object v5

    .line 230
    .local v5, "actDate":Ljava/util/Calendar;
    if-nez v5, :cond_4

    .line 231
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v9

    .line 233
    .local v9, "curDate":Ljava/util/Calendar;
    const/16 v21, 0xb

    const/16 v22, 0x0

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v9, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 234
    const/16 v21, 0xc

    const/16 v22, 0x0

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v9, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 235
    const/16 v21, 0xd

    const/16 v22, 0x0

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v9, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 236
    const/16 v21, 0xe

    const/16 v22, 0x0

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v9, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 238
    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Lcom/studentenwerk/UNIverse;->setChosenDate(Ljava/util/Calendar;)V

    .line 239
    move-object v5, v9

    .line 241
    invoke-virtual {v5}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v21

    const-wide/16 v23, 0x3e8

    div-long v19, v21, v23

    .line 243
    .local v19, "unixdate":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/studentenwerk/activities/MensaMealList;->aviableDates:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v12

    .line 245
    .local v12, "dateKey":I
    const/16 v21, -0x1

    move/from16 v0, v21

    if-le v12, v0, :cond_2

    .line 246
    move-object/from16 v0, p0

    iput v12, v0, Lcom/studentenwerk/activities/MensaMealList;->actDateKey:I

    .line 256
    .end local v9    # "curDate":Ljava/util/Calendar;
    .end local v19    # "unixdate":J
    :cond_2
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/studentenwerk/activities/MensaMealList;->loadMensaData()V

    .line 258
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/studentenwerk/activities/MensaMealList;->mHandler:Landroid/os/Handler;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/studentenwerk/activities/MensaMealList;->showUpdate:Ljava/lang/Runnable;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_1

    .line 215
    .end local v5    # "actDate":Ljava/util/Calendar;
    .end local v12    # "dateKey":I
    .restart local v4    # "UnixMealActuality":Ljava/lang/Long;
    .restart local v8    # "canteen":Lorg/json/JSONObject;
    .restart local v10    # "date":Ljava/util/Date;
    .restart local v11    # "dateFormat":Ljava/text/SimpleDateFormat;
    .restart local v15    # "iter":Ljava/util/Iterator;
    :cond_3
    :try_start_2
    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    .line 216
    .local v17, "obj":Ljava/lang/Object;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/studentenwerk/activities/MensaMealList;->aviableDates:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v22

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_2

    .line 222
    .end local v4    # "UnixMealActuality":Ljava/lang/Long;
    .end local v8    # "canteen":Lorg/json/JSONObject;
    .end local v10    # "date":Ljava/util/Date;
    .end local v11    # "dateFormat":Ljava/text/SimpleDateFormat;
    .end local v15    # "iter":Ljava/util/Iterator;
    .end local v17    # "obj":Ljava/lang/Object;
    :catch_0
    move-exception v13

    .line 223
    .local v13, "e1":Lorg/json/JSONException;
    const-string v21, "Error"

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/studentenwerk/activities/MensaMealList;->mensaName:Ljava/lang/String;

    .line 224
    new-instance v21, Lorg/json/JSONObject;

    invoke-direct/range {v21 .. v21}, Lorg/json/JSONObject;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/studentenwerk/activities/MensaMealList;->actMensaObj:Lorg/json/JSONObject;

    .line 225
    invoke-virtual {v13}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_3

    .line 250
    .end local v13    # "e1":Lorg/json/JSONException;
    .restart local v5    # "actDate":Ljava/util/Calendar;
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/studentenwerk/activities/MensaMealList;->aviableDates:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    invoke-virtual/range {v18 .. v18}, Lcom/studentenwerk/UNIverse;->getChosenDate()Ljava/util/Calendar;

    move-result-object v22

    .line 251
    invoke-virtual/range {v22 .. v22}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v22

    const-wide/16 v24, 0x3e8

    div-long v22, v22, v24

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v22

    .line 250
    invoke-virtual/range {v21 .. v22}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v12

    .line 252
    .restart local v12    # "dateKey":I
    const/16 v21, -0x1

    move/from16 v0, v21

    if-le v12, v0, :cond_2

    .line 253
    move-object/from16 v0, p0

    iput v12, v0, Lcom/studentenwerk/activities/MensaMealList;->actDateKey:I

    goto :goto_4
.end method

.method private startThread(Ljava/lang/String;)V
    .locals 4
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 147
    const-string v1, ""

    const v2, 0x7f050016

    invoke-virtual {p0, v2}, Lcom/studentenwerk/activities/MensaMealList;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {p0, v1, v2, v3}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/studentenwerk/activities/MensaMealList;->dialog:Landroid/app/ProgressDialog;

    .line 148
    new-instance v0, Lcom/studentenwerk/activities/MensaMealList$3;

    invoke-direct {v0, p0}, Lcom/studentenwerk/activities/MensaMealList$3;-><init>(Lcom/studentenwerk/activities/MensaMealList;)V

    .line 155
    .local v0, "tmpThread":Ljava/lang/Thread;
    if-eqz p1, :cond_0

    .line 156
    invoke-virtual {p0, p1}, Lcom/studentenwerk/activities/MensaMealList;->setTitle(Ljava/lang/CharSequence;)V

    .line 157
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 158
    return-void
.end method


# virtual methods
.method public calendarClicked(Landroid/view/View;)V
    .locals 10
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x0

    .line 335
    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/studentenwerk/activities/MealDatePicker;

    invoke-direct {v3, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 337
    .local v3, "inte":Landroid/content/Intent;
    const/4 v0, 0x0

    .line 338
    .local v0, "cnt":I
    iget-object v4, p0, Lcom/studentenwerk/activities/MensaMealList;->aviableDates:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v1, v4, [J

    .line 339
    .local v1, "dates":[J
    iget-object v4, p0, Lcom/studentenwerk/activities/MensaMealList;->aviableDates:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v6

    array-length v7, v6

    move v4, v5

    :goto_0
    if-lt v4, v7, :cond_0

    .line 344
    const-string v4, "aviableDates"

    invoke-virtual {v3, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[J)Landroid/content/Intent;

    .line 345
    invoke-virtual {p0, v3, v5}, Lcom/studentenwerk/activities/MensaMealList;->startActivityForResult(Landroid/content/Intent;I)V

    .line 346
    return-void

    .line 339
    :cond_0
    aget-object v2, v6, v4

    .line 340
    .local v2, "i":Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    aput-wide v8, v1, v0

    .line 341
    add-int/lit8 v0, v0, 0x1

    .line 339
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method public loadMensaData()V
    .locals 12

    .prologue
    .line 280
    const/4 v3, 0x0

    .line 283
    .local v3, "mealsActDate":Lorg/json/JSONObject;
    :try_start_0
    iget-object v6, p0, Lcom/studentenwerk/activities/MensaMealList;->meals:Lorg/json/JSONObject;

    const-string v7, "%d"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/studentenwerk/activities/MensaMealList;->aviableDates:Ljava/util/ArrayList;

    iget v11, p0, Lcom/studentenwerk/activities/MensaMealList;->actDateKey:I

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    .line 287
    :goto_0
    :try_start_1
    iget-object v6, p0, Lcom/studentenwerk/activities/MensaMealList;->listAdapter:Lcom/studentenwerk/classes/GroupedListAdapter;

    invoke-virtual {v6}, Lcom/studentenwerk/classes/GroupedListAdapter;->clearData()V

    .line 290
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_1
    iget-object v6, p0, Lcom/studentenwerk/activities/MensaMealList;->sortedLines:Lorg/json/JSONArray;

    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-lt v1, v6, :cond_0

    .line 307
    .end local v1    # "index":I
    :goto_2
    return-void

    .line 292
    .restart local v1    # "index":I
    :cond_0
    iget-object v6, p0, Lcom/studentenwerk/activities/MensaMealList;->sortedLines:Lorg/json/JSONArray;

    invoke-virtual {v6, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 293
    .local v2, "line":Ljava/lang/String;
    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 295
    .local v5, "tmp":Lorg/json/JSONArray;
    iget-object v6, p0, Lcom/studentenwerk/activities/MensaMealList;->lineArr:Ljava/util/ArrayList;

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 297
    const/4 v4, 0x0

    .local v4, "subIndex":I
    :goto_3
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-lt v4, v6, :cond_1

    .line 302
    iget-object v6, p0, Lcom/studentenwerk/activities/MensaMealList;->listAdapter:Lcom/studentenwerk/classes/GroupedListAdapter;

    iget-object v7, p0, Lcom/studentenwerk/activities/MensaMealList;->actMensaObj:Lorg/json/JSONObject;

    const-string v8, "lines"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    invoke-virtual {v7, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, v5}, Lcom/studentenwerk/classes/GroupedListAdapter;->addSection(Ljava/lang/String;Lorg/json/JSONArray;)V

    .line 290
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 299
    :cond_1
    iget-object v6, p0, Lcom/studentenwerk/activities/MensaMealList;->lineArr:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 297
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 304
    .end local v1    # "index":I
    .end local v2    # "line":Ljava/lang/String;
    .end local v4    # "subIndex":I
    .end local v5    # "tmp":Lorg/json/JSONArray;
    :catch_0
    move-exception v0

    .line 305
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 284
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v6

    goto :goto_0
.end method

.method public nextClicked(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 330
    iget v0, p0, Lcom/studentenwerk/activities/MensaMealList;->actDateKey:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/studentenwerk/activities/MensaMealList;->actDateKey:I

    .line 331
    invoke-direct {p0}, Lcom/studentenwerk/activities/MensaMealList;->afterClick()V

    .line 332
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 350
    if-nez p1, :cond_0

    .line 351
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 352
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "dateKey"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/studentenwerk/activities/MensaMealList;->actDateKey:I

    .line 353
    invoke-direct {p0}, Lcom/studentenwerk/activities/MensaMealList;->afterClick()V

    .line 356
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 13
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v12, 0x0

    const v11, -0x777778

    const/4 v10, 0x1

    .line 77
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 80
    invoke-virtual {p0}, Lcom/studentenwerk/activities/MensaMealList;->getListView()Landroid/widget/ListView;

    move-result-object v2

    .line 81
    .local v2, "listView":Landroid/widget/ListView;
    invoke-virtual {v2, v11}, Landroid/widget/ListView;->setBackgroundColor(I)V

    .line 83
    new-instance v6, Lcom/studentenwerk/classes/GroupedListAdapter;

    invoke-direct {v6, p0}, Lcom/studentenwerk/classes/GroupedListAdapter;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/studentenwerk/activities/MensaMealList;->listAdapter:Lcom/studentenwerk/classes/GroupedListAdapter;

    .line 85
    const-string v6, "settings"

    invoke-virtual {p0, v6, v12}, Lcom/studentenwerk/activities/MensaMealList;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 86
    .local v3, "sp":Landroid/content/SharedPreferences;
    iget-object v6, p0, Lcom/studentenwerk/activities/MensaMealList;->listAdapter:Lcom/studentenwerk/classes/GroupedListAdapter;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "price_"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "defaultPrice"

    const-string v9, "1"

    invoke-interface {v3, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/studentenwerk/classes/GroupedListAdapter;->setPriceType(Ljava/lang/String;)V

    .line 88
    const-string v6, ""

    invoke-virtual {p0, v6}, Lcom/studentenwerk/activities/MensaMealList;->setTitle(Ljava/lang/CharSequence;)V

    .line 89
    iget-object v6, p0, Lcom/studentenwerk/activities/MensaMealList;->listAdapter:Lcom/studentenwerk/classes/GroupedListAdapter;

    invoke-virtual {p0, v6}, Lcom/studentenwerk/activities/MensaMealList;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 90
    const v6, 0x7f030007

    invoke-virtual {p0, v6}, Lcom/studentenwerk/activities/MensaMealList;->setContentView(I)V

    .line 92
    invoke-virtual {p0}, Lcom/studentenwerk/activities/MensaMealList;->getIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    const-string v7, "actMensa"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/studentenwerk/activities/MensaMealList;->chosenMensa:Ljava/lang/String;

    .line 94
    invoke-virtual {p0}, Lcom/studentenwerk/activities/MensaMealList;->getApplication()Landroid/app/Application;

    move-result-object v6

    check-cast v6, Lcom/studentenwerk/UNIverse;

    invoke-virtual {v6, v10}, Lcom/studentenwerk/UNIverse;->getOrderedCanteenList(Z)Ljava/util/LinkedHashMap;

    move-result-object v6

    iput-object v6, p0, Lcom/studentenwerk/activities/MensaMealList;->mensenList:Ljava/util/LinkedHashMap;

    .line 96
    iget-object v6, p0, Lcom/studentenwerk/activities/MensaMealList;->mensenList:Ljava/util/LinkedHashMap;

    invoke-virtual {v6}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v4

    .line 97
    .local v4, "values":[Ljava/lang/Object;
    new-instance v6, Landroid/os/Handler;

    invoke-direct {v6}, Landroid/os/Handler;-><init>()V

    iput-object v6, p0, Lcom/studentenwerk/activities/MensaMealList;->mHandler:Landroid/os/Handler;

    .line 99
    invoke-virtual {p0}, Lcom/studentenwerk/activities/MensaMealList;->getApplication()Landroid/app/Application;

    move-result-object v6

    check-cast v6, Lcom/studentenwerk/UNIverse;

    invoke-virtual {v6}, Lcom/studentenwerk/UNIverse;->checkNetwork()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 100
    const v6, 0x7f090005

    invoke-virtual {p0, v6}, Lcom/studentenwerk/activities/MensaMealList;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/webkit/WebView;

    .line 101
    .local v5, "webview":Landroid/webkit/WebView;
    invoke-virtual {v5}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v6

    invoke-virtual {v6, v10}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 102
    const-string v6, "http://www.studentenwerk-karlsruhe.de/mobile/ads/"

    invoke-virtual {v5, v6}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 105
    .end local v5    # "webview":Landroid/webkit/WebView;
    :cond_0
    iput-object p0, p0, Lcom/studentenwerk/activities/MensaMealList;->mml:Lcom/studentenwerk/activities/MensaMealList;

    .line 108
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0xb

    if-lt v6, v7, :cond_2

    .line 110
    invoke-virtual {p0}, Lcom/studentenwerk/activities/MensaMealList;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 111
    .local v0, "actionBar":Landroid/app/ActionBar;
    invoke-virtual {v0, v10}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 112
    invoke-virtual {v0, v10}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 113
    new-instance v6, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v6, v11}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v6}, Landroid/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 116
    array-length v6, v4

    if-le v6, v10, :cond_1

    .line 117
    new-instance v1, Landroid/widget/ArrayAdapter;

    .line 118
    const v7, 0x7f03000a

    .line 119
    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    array-length v8, v4

    new-array v8, v8, [Ljava/lang/String;

    invoke-interface {v6, v8}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    .line 117
    invoke-direct {v1, p0, v7, v6}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 121
    .local v1, "arrAdapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    invoke-virtual {v0, v10}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 123
    new-instance v6, Lcom/studentenwerk/activities/MensaMealList$2;

    invoke-direct {v6, p0}, Lcom/studentenwerk/activities/MensaMealList$2;-><init>(Lcom/studentenwerk/activities/MensaMealList;)V

    .line 122
    invoke-virtual {v0, v1, v6}, Landroid/app/ActionBar;->setListNavigationCallbacks(Landroid/widget/SpinnerAdapter;Landroid/app/ActionBar$OnNavigationListener;)V

    .line 136
    iget-object v6, p0, Lcom/studentenwerk/activities/MensaMealList;->mensenList:Ljava/util/LinkedHashMap;

    invoke-virtual {v6}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v6

    .line 135
    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    .line 136
    iget-object v7, p0, Lcom/studentenwerk/activities/MensaMealList;->chosenMensa:Ljava/lang/String;

    invoke-interface {v6, v7}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v6

    .line 135
    invoke-virtual {v0, v6}, Landroid/app/ActionBar;->setSelectedNavigationItem(I)V

    .line 144
    .end local v0    # "actionBar":Landroid/app/ActionBar;
    .end local v1    # "arrAdapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    :goto_0
    return-void

    .line 138
    .restart local v0    # "actionBar":Landroid/app/ActionBar;
    :cond_1
    aget-object v6, v4, v12

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v0, v6}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 139
    const/4 v6, 0x0

    invoke-direct {p0, v6}, Lcom/studentenwerk/activities/MensaMealList;->startThread(Ljava/lang/String;)V

    goto :goto_0

    .line 142
    .end local v0    # "actionBar":Landroid/app/ActionBar;
    :cond_2
    iget-object v6, p0, Lcom/studentenwerk/activities/MensaMealList;->mensenList:Ljava/util/LinkedHashMap;

    iget-object v7, p0, Lcom/studentenwerk/activities/MensaMealList;->chosenMensa:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-direct {p0, v6}, Lcom/studentenwerk/activities/MensaMealList;->startThread(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 6
    .param p1, "l"    # Landroid/widget/ListView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .prologue
    .line 312
    iget-object v2, p0, Lcom/studentenwerk/activities/MensaMealList;->listAdapter:Lcom/studentenwerk/classes/GroupedListAdapter;

    invoke-virtual {v2, p3}, Lcom/studentenwerk/classes/GroupedListAdapter;->getData(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 316
    .local v1, "job":Lorg/json/JSONObject;
    if-nez v1, :cond_1

    .line 327
    :cond_0
    :goto_0
    return-void

    .line 319
    :cond_1
    const-string v2, "meal"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 320
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/studentenwerk/activities/MensaMealDetail;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 321
    const-string v3, "meal"

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 322
    const-string v3, "mensa"

    iget-object v4, p0, Lcom/studentenwerk/activities/MensaMealList;->chosenMensa:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    .line 323
    const-string v4, "line"

    iget-object v2, p0, Lcom/studentenwerk/activities/MensaMealList;->lineArr:Ljava/util/ArrayList;

    invoke-virtual {v2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    .line 324
    const-string v4, "date"

    iget-object v2, p0, Lcom/studentenwerk/activities/MensaMealList;->aviableDates:Ljava/util/ArrayList;

    iget v5, p0, Lcom/studentenwerk/activities/MensaMealList;->actDateKey:I

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/Serializable;

    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-result-object v0

    .line 325
    .local v0, "inte":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/studentenwerk/activities/MensaMealList;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "menuItem"    # Landroid/view/MenuItem;

    .prologue
    .line 397
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 402
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 399
    :pswitch_0
    invoke-virtual {p0}, Lcom/studentenwerk/activities/MensaMealList;->finish()V

    .line 400
    const/4 v0, 0x1

    goto :goto_0

    .line 397
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method public prevClicked(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 359
    iget v0, p0, Lcom/studentenwerk/activities/MensaMealList;->actDateKey:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/studentenwerk/activities/MensaMealList;->actDateKey:I

    .line 360
    invoke-direct {p0}, Lcom/studentenwerk/activities/MensaMealList;->afterClick()V

    .line 361
    return-void
.end method
