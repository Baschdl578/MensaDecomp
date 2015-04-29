.class Lcom/studentenwerk/activities/ExternalContent$2;
.super Landroid/webkit/WebViewClient;
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
    iput-object p1, p0, Lcom/studentenwerk/activities/ExternalContent$2;->this$0:Lcom/studentenwerk/activities/ExternalContent;

    iput-object p2, p0, Lcom/studentenwerk/activities/ExternalContent$2;->val$activity:Landroid/app/Activity;

    .line 74
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "errorCode"    # I
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "failingUrl"    # Ljava/lang/String;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/studentenwerk/activities/ExternalContent$2;->val$activity:Landroid/app/Activity;

    .line 79
    iget-object v1, p0, Lcom/studentenwerk/activities/ExternalContent$2;->this$0:Lcom/studentenwerk/activities/ExternalContent;

    invoke-virtual {v1}, Lcom/studentenwerk/activities/ExternalContent;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 80
    const v2, 0x7f05000e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 81
    const/4 v2, 0x1

    .line 77
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 81
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 84
    iget-object v0, p0, Lcom/studentenwerk/activities/ExternalContent$2;->this$0:Lcom/studentenwerk/activities/ExternalContent;

    invoke-virtual {v0}, Lcom/studentenwerk/activities/ExternalContent;->finish()V

    .line 85
    return-void
.end method

.method public onReceivedHttpAuthRequest(Landroid/webkit/WebView;Landroid/webkit/HttpAuthHandler;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "handler"    # Landroid/webkit/HttpAuthHandler;
    .param p3, "host"    # Ljava/lang/String;
    .param p4, "realm"    # Ljava/lang/String;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/studentenwerk/activities/ExternalContent$2;->this$0:Lcom/studentenwerk/activities/ExternalContent;

    # getter for: Lcom/studentenwerk/activities/ExternalContent;->httpAuthUser:Ljava/lang/String;
    invoke-static {v0}, Lcom/studentenwerk/activities/ExternalContent;->access$0(Lcom/studentenwerk/activities/ExternalContent;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/studentenwerk/activities/ExternalContent$2;->this$0:Lcom/studentenwerk/activities/ExternalContent;

    # getter for: Lcom/studentenwerk/activities/ExternalContent;->httpAuthPassword:Ljava/lang/String;
    invoke-static {v1}, Lcom/studentenwerk/activities/ExternalContent;->access$1(Lcom/studentenwerk/activities/ExternalContent;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/webkit/HttpAuthHandler;->proceed(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 7
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 95
    const-string v3, "tel:"

    invoke-virtual {p2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 96
    iget-object v3, p0, Lcom/studentenwerk/activities/ExternalContent$2;->this$0:Lcom/studentenwerk/activities/ExternalContent;

    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.DIAL"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v3, v4}, Lcom/studentenwerk/activities/ExternalContent;->startActivity(Landroid/content/Intent;)V

    .line 122
    :goto_0
    return v2

    .line 100
    :cond_0
    const-string v3, "mailto:"

    invoke-virtual {p2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 101
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 102
    .local v1, "intent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/studentenwerk/activities/ExternalContent$2;->this$0:Lcom/studentenwerk/activities/ExternalContent;

    invoke-virtual {v3, v1}, Lcom/studentenwerk/activities/ExternalContent;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 107
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_1
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const-string v4, "openInSafari"

    invoke-virtual {v3, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 109
    .local v0, "checkQuery":Ljava/lang/String;
    if-eqz v0, :cond_2

    const-string v3, "yes"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 110
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 111
    .restart local v1    # "intent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/studentenwerk/activities/ExternalContent$2;->this$0:Lcom/studentenwerk/activities/ExternalContent;

    invoke-virtual {v3, v1}, Lcom/studentenwerk/activities/ExternalContent;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 116
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_2
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/studentenwerk/activities/ExternalContent$2;->this$0:Lcom/studentenwerk/activities/ExternalContent;

    # getter for: Lcom/studentenwerk/activities/ExternalContent;->webHost:Ljava/lang/String;
    invoke-static {v4}, Lcom/studentenwerk/activities/ExternalContent;->access$2(Lcom/studentenwerk/activities/ExternalContent;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 117
    const/4 v2, 0x0

    goto :goto_0

    .line 120
    :cond_3
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 121
    .restart local v1    # "intent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/studentenwerk/activities/ExternalContent$2;->this$0:Lcom/studentenwerk/activities/ExternalContent;

    invoke-virtual {v3, v1}, Lcom/studentenwerk/activities/ExternalContent;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
