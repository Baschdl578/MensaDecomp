.class Lcom/studentenwerk/activities/News$2;
.super Ljava/lang/Thread;
.source "News.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/studentenwerk/activities/News;->startLoadThread(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/studentenwerk/activities/News;


# direct methods
.method constructor <init>(Lcom/studentenwerk/activities/News;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/studentenwerk/activities/News$2;->this$0:Lcom/studentenwerk/activities/News;

    .line 37
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 41
    :try_start_0
    iget-object v1, p0, Lcom/studentenwerk/activities/News$2;->this$0:Lcom/studentenwerk/activities/News;

    # invokes: Lcom/studentenwerk/activities/News;->loadData()V
    invoke-static {v1}, Lcom/studentenwerk/activities/News;->access$2(Lcom/studentenwerk/activities/News;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    :goto_0
    return-void

    .line 42
    :catch_0
    move-exception v0

    .line 44
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method
