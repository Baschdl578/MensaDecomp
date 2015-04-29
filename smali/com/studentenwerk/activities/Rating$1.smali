.class Lcom/studentenwerk/activities/Rating$1;
.super Ljava/lang/Thread;
.source "Rating.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/studentenwerk/activities/Rating;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/studentenwerk/activities/Rating;


# direct methods
.method constructor <init>(Lcom/studentenwerk/activities/Rating;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/studentenwerk/activities/Rating$1;->this$0:Lcom/studentenwerk/activities/Rating;

    .line 123
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 125
    const-string v1, "https://www.studentenwerk-karlsruhe.de/de//json_interface/canteen/rating.php"

    iget-object v2, p0, Lcom/studentenwerk/activities/Rating$1;->this$0:Lcom/studentenwerk/activities/Rating;

    # getter for: Lcom/studentenwerk/activities/Rating;->nameValuePairs:Ljava/util/List;
    invoke-static {v2}, Lcom/studentenwerk/activities/Rating;->access$0(Lcom/studentenwerk/activities/Rating;)Ljava/util/List;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/studentenwerk/UNIverse;->connect(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    .line 126
    .local v0, "result":Ljava/lang/String;
    iget-object v1, p0, Lcom/studentenwerk/activities/Rating$1;->this$0:Lcom/studentenwerk/activities/Rating;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/studentenwerk/activities/Rating;->setResult(I)V

    .line 128
    iget-object v1, p0, Lcom/studentenwerk/activities/Rating$1;->this$0:Lcom/studentenwerk/activities/Rating;

    # getter for: Lcom/studentenwerk/activities/Rating;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/studentenwerk/activities/Rating;->access$1(Lcom/studentenwerk/activities/Rating;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/studentenwerk/activities/Rating$1;->this$0:Lcom/studentenwerk/activities/Rating;

    # getter for: Lcom/studentenwerk/activities/Rating;->showUpdate:Ljava/lang/Runnable;
    invoke-static {v2}, Lcom/studentenwerk/activities/Rating;->access$2(Lcom/studentenwerk/activities/Rating;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 129
    return-void
.end method
