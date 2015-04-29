.class Lcom/studentenwerk/activities/MainView$1;
.super Ljava/lang/Thread;
.source "MainView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/studentenwerk/activities/MainView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/studentenwerk/activities/MainView;


# direct methods
.method constructor <init>(Lcom/studentenwerk/activities/MainView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/studentenwerk/activities/MainView$1;->this$0:Lcom/studentenwerk/activities/MainView;

    .line 71
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 73
    iget-object v0, p0, Lcom/studentenwerk/activities/MainView$1;->this$0:Lcom/studentenwerk/activities/MainView;

    invoke-virtual {v0}, Lcom/studentenwerk/activities/MainView;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/studentenwerk/UNIverse;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/studentenwerk/UNIverse;->loadData(I)V

    .line 74
    iget-object v0, p0, Lcom/studentenwerk/activities/MainView$1;->this$0:Lcom/studentenwerk/activities/MainView;

    # getter for: Lcom/studentenwerk/activities/MainView;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/studentenwerk/activities/MainView;->access$0(Lcom/studentenwerk/activities/MainView;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/studentenwerk/activities/MainView$1;->this$0:Lcom/studentenwerk/activities/MainView;

    # getter for: Lcom/studentenwerk/activities/MainView;->showUpdate:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/studentenwerk/activities/MainView;->access$1(Lcom/studentenwerk/activities/MainView;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 75
    return-void
.end method
