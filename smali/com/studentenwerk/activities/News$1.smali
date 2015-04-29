.class Lcom/studentenwerk/activities/News$1;
.super Ljava/lang/Object;
.source "News.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/studentenwerk/activities/News;
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
    iput-object p1, p0, Lcom/studentenwerk/activities/News$1;->this$0:Lcom/studentenwerk/activities/News;

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/studentenwerk/activities/News$1;->this$0:Lcom/studentenwerk/activities/News;

    # getter for: Lcom/studentenwerk/activities/News;->dialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/studentenwerk/activities/News;->access$0(Lcom/studentenwerk/activities/News;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 93
    iget-object v0, p0, Lcom/studentenwerk/activities/News$1;->this$0:Lcom/studentenwerk/activities/News;

    # getter for: Lcom/studentenwerk/activities/News;->newsAdapter:Lcom/studentenwerk/classes/NewsAdapter;
    invoke-static {v0}, Lcom/studentenwerk/activities/News;->access$1(Lcom/studentenwerk/activities/News;)Lcom/studentenwerk/classes/NewsAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/studentenwerk/classes/NewsAdapter;->notifyDataSetChanged()V

    .line 95
    return-void
.end method
