.class public Lcom/studentenwerk/activities/News;
.super Landroid/app/ListActivity;
.source "News.java"


# instance fields
.field private dialog:Landroid/app/ProgressDialog;

.field private mHandler:Landroid/os/Handler;

.field private newsAdapter:Lcom/studentenwerk/classes/NewsAdapter;

.field private showUpdate:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 20
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/studentenwerk/activities/News;->mHandler:Landroid/os/Handler;

    .line 89
    new-instance v0, Lcom/studentenwerk/activities/News$1;

    invoke-direct {v0, p0}, Lcom/studentenwerk/activities/News$1;-><init>(Lcom/studentenwerk/activities/News;)V

    iput-object v0, p0, Lcom/studentenwerk/activities/News;->showUpdate:Ljava/lang/Runnable;

    .line 19
    return-void
.end method

.method static synthetic access$0(Lcom/studentenwerk/activities/News;)Landroid/app/ProgressDialog;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/studentenwerk/activities/News;->dialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$1(Lcom/studentenwerk/activities/News;)Lcom/studentenwerk/classes/NewsAdapter;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/studentenwerk/activities/News;->newsAdapter:Lcom/studentenwerk/classes/NewsAdapter;

    return-object v0
.end method

.method static synthetic access$2(Lcom/studentenwerk/activities/News;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/studentenwerk/activities/News;->loadData()V

    return-void
.end method

.method private loadData()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    .line 56
    invoke-virtual {p0}, Lcom/studentenwerk/activities/News;->getApplication()Landroid/app/Application;

    move-result-object v5

    check-cast v5, Lcom/studentenwerk/UNIverse;

    .line 61
    .local v5, "universe":Lcom/studentenwerk/UNIverse;
    invoke-virtual {v5, v7}, Lcom/studentenwerk/UNIverse;->loadData(I)V

    .line 62
    invoke-virtual {v5, v8}, Lcom/studentenwerk/UNIverse;->loadData(I)V

    .line 65
    invoke-virtual {p0}, Lcom/studentenwerk/activities/News;->getApplication()Landroid/app/Application;

    move-result-object v6

    check-cast v6, Lcom/studentenwerk/UNIverse;

    invoke-virtual {v6, v7}, Lcom/studentenwerk/UNIverse;->getData(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 66
    .local v2, "newsItems":Lorg/json/JSONObject;
    invoke-virtual {p0}, Lcom/studentenwerk/activities/News;->getApplication()Landroid/app/Application;

    move-result-object v6

    check-cast v6, Lcom/studentenwerk/UNIverse;

    invoke-virtual {v6, v8}, Lcom/studentenwerk/UNIverse;->getDataArray(I)Lorg/json/JSONArray;

    move-result-object v3

    .line 69
    .local v3, "newsOrder":Lorg/json/JSONArray;
    if-eqz v3, :cond_0

    if-nez v2, :cond_1

    .line 71
    :cond_0
    iget-object v6, p0, Lcom/studentenwerk/activities/News;->dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v6}, Landroid/app/ProgressDialog;->dismiss()V

    .line 72
    invoke-virtual {p0, v7}, Lcom/studentenwerk/activities/News;->setResult(I)V

    .line 73
    invoke-virtual {p0}, Lcom/studentenwerk/activities/News;->finish()V

    .line 86
    :goto_0
    return-void

    .line 77
    :cond_1
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_1
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-lt v0, v6, :cond_2

    .line 85
    iget-object v6, p0, Lcom/studentenwerk/activities/News;->mHandler:Landroid/os/Handler;

    iget-object v7, p0, Lcom/studentenwerk/activities/News;->showUpdate:Ljava/lang/Runnable;

    invoke-virtual {v6, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 79
    :cond_2
    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 80
    .local v4, "newsUnixTime":Ljava/lang/String;
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 82
    .local v1, "newsItem":Lorg/json/JSONObject;
    iget-object v6, p0, Lcom/studentenwerk/activities/News;->newsAdapter:Lcom/studentenwerk/classes/NewsAdapter;

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    const-string v9, "title"

    invoke-virtual {v1, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "content"

    invoke-virtual {v1, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v7, v8, v9, v10}, Lcom/studentenwerk/classes/NewsAdapter;->addSection(JLjava/lang/String;Ljava/lang/String;)V

    .line 77
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private startLoadThread(Ljava/lang/String;)V
    .locals 4
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 36
    const-string v1, ""

    const v2, 0x7f050016

    invoke-virtual {p0, v2}, Lcom/studentenwerk/activities/News;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {p0, v1, v2, v3}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/studentenwerk/activities/News;->dialog:Landroid/app/ProgressDialog;

    .line 37
    new-instance v0, Lcom/studentenwerk/activities/News$2;

    invoke-direct {v0, p0}, Lcom/studentenwerk/activities/News$2;-><init>(Lcom/studentenwerk/activities/News;)V

    .line 50
    .local v0, "tmpThread":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 51
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 26
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 27
    new-instance v0, Lcom/studentenwerk/classes/NewsAdapter;

    invoke-direct {v0, p0}, Lcom/studentenwerk/classes/NewsAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/studentenwerk/activities/News;->newsAdapter:Lcom/studentenwerk/classes/NewsAdapter;

    .line 29
    iget-object v0, p0, Lcom/studentenwerk/activities/News;->newsAdapter:Lcom/studentenwerk/classes/NewsAdapter;

    invoke-virtual {p0, v0}, Lcom/studentenwerk/activities/News;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 30
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/studentenwerk/activities/News;->startLoadThread(Ljava/lang/String;)V

    .line 32
    return-void
.end method
