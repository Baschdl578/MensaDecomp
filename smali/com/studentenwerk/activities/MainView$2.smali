.class Lcom/studentenwerk/activities/MainView$2;
.super Ljava/lang/Object;
.source "MainView.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    iput-object p1, p0, Lcom/studentenwerk/activities/MainView$2;->this$0:Lcom/studentenwerk/activities/MainView;

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 80
    iget-object v0, p0, Lcom/studentenwerk/activities/MainView$2;->this$0:Lcom/studentenwerk/activities/MainView;

    # getter for: Lcom/studentenwerk/activities/MainView;->dialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/studentenwerk/activities/MainView;->access$2(Lcom/studentenwerk/activities/MainView;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 82
    iget-object v0, p0, Lcom/studentenwerk/activities/MainView$2;->this$0:Lcom/studentenwerk/activities/MainView;

    invoke-virtual {v0}, Lcom/studentenwerk/activities/MainView;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/studentenwerk/UNIverse;

    invoke-virtual {v0, v1}, Lcom/studentenwerk/UNIverse;->getData(I)Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/studentenwerk/activities/MainView$2;->this$0:Lcom/studentenwerk/activities/MainView;

    invoke-virtual {v0, v1}, Lcom/studentenwerk/activities/MainView;->showDialog(I)V

    .line 85
    :cond_0
    return-void
.end method
