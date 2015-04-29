.class public Lcom/studentenwerk/activities/Rating;
.super Landroid/app/Activity;
.source "Rating.java"


# static fields
.field static final DIALOG_DATA_ERROR:I

.field public static RESULT_HTTP_ERR:I

.field public static RESULT_IO_ERR:I

.field public static RESULT_JSON_ERR:I


# instance fields
.field private date:J

.field private dialog:Landroid/app/ProgressDialog;

.field private line:Ljava/lang/String;

.field private loadData:Ljava/lang/Thread;

.field private mHandler:Landroid/os/Handler;

.field private meal:Lorg/json/JSONObject;

.field private mensa:Ljava/lang/String;

.field private nameValuePairs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;"
        }
    .end annotation
.end field

.field private showUpdate:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x2

    sput v0, Lcom/studentenwerk/activities/Rating;->RESULT_IO_ERR:I

    .line 38
    const/4 v0, 0x3

    sput v0, Lcom/studentenwerk/activities/Rating;->RESULT_HTTP_ERR:I

    .line 39
    const/4 v0, 0x4

    sput v0, Lcom/studentenwerk/activities/Rating;->RESULT_JSON_ERR:I

    .line 31
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 123
    new-instance v0, Lcom/studentenwerk/activities/Rating$1;

    invoke-direct {v0, p0}, Lcom/studentenwerk/activities/Rating$1;-><init>(Lcom/studentenwerk/activities/Rating;)V

    iput-object v0, p0, Lcom/studentenwerk/activities/Rating;->loadData:Ljava/lang/Thread;

    .line 132
    new-instance v0, Lcom/studentenwerk/activities/Rating$2;

    invoke-direct {v0, p0}, Lcom/studentenwerk/activities/Rating$2;-><init>(Lcom/studentenwerk/activities/Rating;)V

    iput-object v0, p0, Lcom/studentenwerk/activities/Rating;->showUpdate:Ljava/lang/Runnable;

    .line 31
    return-void
.end method

.method static synthetic access$0(Lcom/studentenwerk/activities/Rating;)Ljava/util/List;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/studentenwerk/activities/Rating;->nameValuePairs:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1(Lcom/studentenwerk/activities/Rating;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/studentenwerk/activities/Rating;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2(Lcom/studentenwerk/activities/Rating;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/studentenwerk/activities/Rating;->showUpdate:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$3(Lcom/studentenwerk/activities/Rating;)Landroid/app/ProgressDialog;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/studentenwerk/activities/Rating;->dialog:Landroid/app/ProgressDialog;

    return-object v0
.end method


# virtual methods
.method public buttonSend(Landroid/view/View;)V
    .locals 9
    .param p1, "but"    # Landroid/view/View;

    .prologue
    .line 91
    const v5, 0x7f09002f

    invoke-virtual {p0, v5}, Lcom/studentenwerk/activities/Rating;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    .line 97
    .local v3, "ratingText":Landroid/text/Editable;
    const v5, 0x7f09002e

    invoke-virtual {p0, v5}, Lcom/studentenwerk/activities/Rating;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RatingBar;

    invoke-virtual {v5}, Landroid/widget/RatingBar;->getRating()F

    move-result v4

    .line 99
    .local v4, "ratingVal":F
    const/high16 v5, 0x3f800000    # 1.0f

    cmpg-float v5, v4, v5

    if-gez v5, :cond_0

    .line 121
    :goto_0
    return-void

    .line 102
    :cond_0
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v5, "yyyy-MM-dd"

    invoke-direct {v2, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 104
    .local v2, "df":Ljava/text/SimpleDateFormat;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 105
    .local v0, "actDate":Ljava/util/Calendar;
    iget-wide v5, p0, Lcom/studentenwerk/activities/Rating;->date:J

    const-wide/16 v7, 0x3e8

    mul-long/2addr v5, v7

    invoke-virtual {v0, v5, v6}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 106
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 108
    .local v1, "dateString":Ljava/lang/String;
    new-instance v5, Ljava/util/ArrayList;

    const/4 v6, 0x5

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v5, p0, Lcom/studentenwerk/activities/Rating;->nameValuePairs:Ljava/util/List;

    .line 110
    iget-object v6, p0, Lcom/studentenwerk/activities/Rating;->nameValuePairs:Ljava/util/List;

    new-instance v7, Lorg/apache/http/message/BasicNameValuePair;

    const-string v8, "r_menu"

    const v5, 0x7f09001c

    invoke-virtual {p0, v5}, Lcom/studentenwerk/activities/Rating;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-direct {v7, v8, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 111
    iget-object v5, p0, Lcom/studentenwerk/activities/Rating;->nameValuePairs:Ljava/util/List;

    new-instance v6, Lorg/apache/http/message/BasicNameValuePair;

    const-string v7, "r_canteen"

    iget-object v8, p0, Lcom/studentenwerk/activities/Rating;->mensa:Ljava/lang/String;

    invoke-direct {v6, v7, v8}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 112
    iget-object v5, p0, Lcom/studentenwerk/activities/Rating;->nameValuePairs:Ljava/util/List;

    new-instance v6, Lorg/apache/http/message/BasicNameValuePair;

    const-string v7, "r_line"

    iget-object v8, p0, Lcom/studentenwerk/activities/Rating;->line:Ljava/lang/String;

    invoke-direct {v6, v7, v8}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 113
    iget-object v5, p0, Lcom/studentenwerk/activities/Rating;->nameValuePairs:Ljava/util/List;

    new-instance v6, Lorg/apache/http/message/BasicNameValuePair;

    const-string v7, "r_date"

    invoke-direct {v6, v7, v1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 114
    iget-object v5, p0, Lcom/studentenwerk/activities/Rating;->nameValuePairs:Ljava/util/List;

    new-instance v6, Lorg/apache/http/message/BasicNameValuePair;

    const-string v7, "r_text"

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 115
    iget-object v5, p0, Lcom/studentenwerk/activities/Rating;->nameValuePairs:Ljava/util/List;

    new-instance v6, Lorg/apache/http/message/BasicNameValuePair;

    const-string v7, "r_score"

    invoke-static {v4}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 117
    const-string v5, ""

    const v6, 0x7f050016

    invoke-virtual {p0, v6}, Lcom/studentenwerk/activities/Rating;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    invoke-static {p0, v5, v6, v7}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;

    move-result-object v5

    iput-object v5, p0, Lcom/studentenwerk/activities/Rating;->dialog:Landroid/app/ProgressDialog;

    .line 118
    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    iput-object v5, p0, Lcom/studentenwerk/activities/Rating;->mHandler:Landroid/os/Handler;

    .line 119
    iget-object v5, p0, Lcom/studentenwerk/activities/Rating;->loadData:Ljava/lang/Thread;

    invoke-virtual {v5}, Ljava/lang/Thread;->start()V

    goto/16 :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x1

    .line 49
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 50
    const v2, 0x7f03000c

    invoke-virtual {p0, v2}, Lcom/studentenwerk/activities/Rating;->setContentView(I)V

    .line 52
    invoke-virtual {p0}, Lcom/studentenwerk/activities/Rating;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 55
    .local v1, "extras":Landroid/os/Bundle;
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    const-string v3, "meal"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/studentenwerk/activities/Rating;->meal:Lorg/json/JSONObject;

    .line 56
    const v2, 0x7f09001c

    invoke-virtual {p0, v2}, Lcom/studentenwerk/activities/Rating;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/studentenwerk/activities/Rating;->meal:Lorg/json/JSONObject;

    const-string v4, "meal"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    :goto_0
    const-string v2, "mensa"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/studentenwerk/activities/Rating;->mensa:Ljava/lang/String;

    .line 61
    const-string v2, "line"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/studentenwerk/activities/Rating;->line:Ljava/lang/String;

    .line 62
    const-string v2, "date"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/studentenwerk/activities/Rating;->date:J

    .line 66
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-lt v2, v3, :cond_0

    .line 67
    invoke-virtual {p0}, Lcom/studentenwerk/activities/Rating;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    const v4, -0x777778

    invoke-direct {v3, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v2, v3}, Landroid/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 68
    invoke-virtual {p0}, Lcom/studentenwerk/activities/Rating;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 69
    invoke-virtual {p0}, Lcom/studentenwerk/activities/Rating;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 73
    :cond_0
    return-void

    .line 57
    :catch_0
    move-exception v0

    .line 58
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "menuItem"    # Landroid/view/MenuItem;

    .prologue
    .line 78
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 83
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 80
    :pswitch_0
    invoke-virtual {p0}, Lcom/studentenwerk/activities/Rating;->finish()V

    .line 81
    const/4 v0, 0x1

    goto :goto_0

    .line 78
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method
