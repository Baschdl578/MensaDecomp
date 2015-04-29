.class Lcom/studentenwerk/activities/Rating$2;
.super Ljava/lang/Object;
.source "Rating.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    iput-object p1, p0, Lcom/studentenwerk/activities/Rating$2;->this$0:Lcom/studentenwerk/activities/Rating;

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/studentenwerk/activities/Rating$2;->this$0:Lcom/studentenwerk/activities/Rating;

    # getter for: Lcom/studentenwerk/activities/Rating;->dialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/studentenwerk/activities/Rating;->access$3(Lcom/studentenwerk/activities/Rating;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 135
    iget-object v0, p0, Lcom/studentenwerk/activities/Rating$2;->this$0:Lcom/studentenwerk/activities/Rating;

    invoke-virtual {v0}, Lcom/studentenwerk/activities/Rating;->finish()V

    .line 139
    return-void
.end method
