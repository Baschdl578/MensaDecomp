.class Lcom/studentenwerk/activities/ExternalContent$1;
.super Landroid/webkit/WebChromeClient;
.source "ExternalContent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/studentenwerk/activities/ExternalContent;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/studentenwerk/activities/ExternalContent;

.field private final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/studentenwerk/activities/ExternalContent;Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/studentenwerk/activities/ExternalContent$1;->this$0:Lcom/studentenwerk/activities/ExternalContent;

    iput-object p2, p0, Lcom/studentenwerk/activities/ExternalContent$1;->val$activity:Landroid/app/Activity;

    .line 67
    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "progress"    # I

    .prologue
    .line 69
    iget-object v0, p0, Lcom/studentenwerk/activities/ExternalContent$1;->val$activity:Landroid/app/Activity;

    mul-int/lit8 v1, p2, 0x64

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setProgress(I)V

    .line 71
    return-void
.end method
