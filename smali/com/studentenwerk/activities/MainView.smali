.class public Lcom/studentenwerk/activities/MainView;
.super Landroid/app/Activity;
.source "MainView.java"


# static fields
.field static final DIALOG_DATA_ERROR:I = 0x0

.field static final NEWS_REQUEST:I = 0x1


# instance fields
.field final HOKEYAPPID:Ljava/lang/String;

.field private dialog:Landroid/app/ProgressDialog;

.field private loadData:Ljava/lang/Thread;

.field private mHandler:Landroid/os/Handler;

.field private showUpdate:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 22
    const-string v0, "cf571152e822196a5ec447a8dd791f32"

    iput-object v0, p0, Lcom/studentenwerk/activities/MainView;->HOKEYAPPID:Ljava/lang/String;

    .line 71
    new-instance v0, Lcom/studentenwerk/activities/MainView$1;

    invoke-direct {v0, p0}, Lcom/studentenwerk/activities/MainView$1;-><init>(Lcom/studentenwerk/activities/MainView;)V

    iput-object v0, p0, Lcom/studentenwerk/activities/MainView;->loadData:Ljava/lang/Thread;

    .line 78
    new-instance v0, Lcom/studentenwerk/activities/MainView$2;

    invoke-direct {v0, p0}, Lcom/studentenwerk/activities/MainView$2;-><init>(Lcom/studentenwerk/activities/MainView;)V

    iput-object v0, p0, Lcom/studentenwerk/activities/MainView;->showUpdate:Ljava/lang/Runnable;

    .line 19
    return-void
.end method

.method static synthetic access$0(Lcom/studentenwerk/activities/MainView;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/studentenwerk/activities/MainView;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1(Lcom/studentenwerk/activities/MainView;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/studentenwerk/activities/MainView;->showUpdate:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$2(Lcom/studentenwerk/activities/MainView;)Landroid/app/ProgressDialog;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/studentenwerk/activities/MainView;->dialog:Landroid/app/ProgressDialog;

    return-object v0
.end method


# virtual methods
.method public essen_Clicked(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 89
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/studentenwerk/activities/MensaList;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 90
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/studentenwerk/activities/MainView;->startActivity(Landroid/content/Intent;)V

    .line 91
    return-void
.end method

.method public ext_0(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 111
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/studentenwerk/activities/MainView;->external_View(I)V

    .line 112
    return-void
.end method

.method public ext_1(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 115
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/studentenwerk/activities/MainView;->external_View(I)V

    .line 116
    return-void
.end method

.method public ext_2(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 119
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/studentenwerk/activities/MainView;->external_View(I)V

    .line 120
    return-void
.end method

.method public ext_3(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 123
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/studentenwerk/activities/MainView;->external_View(I)V

    .line 124
    return-void
.end method

.method public ext_4(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 127
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/studentenwerk/activities/MainView;->external_View(I)V

    .line 128
    return-void
.end method

.method public ext_5(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 131
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/studentenwerk/activities/MainView;->external_View(I)V

    .line 132
    return-void
.end method

.method public ext_6(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 134
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/studentenwerk/activities/MainView;->external_View(I)V

    .line 135
    return-void
.end method

.method public external_View(I)V
    .locals 2
    .param p1, "URI"    # I

    .prologue
    .line 104
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/studentenwerk/activities/ExternalContent;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 106
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "section"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 107
    invoke-virtual {p0, v0}, Lcom/studentenwerk/activities/MainView;->startActivity(Landroid/content/Intent;)V

    .line 108
    return-void
.end method

.method public news_Clicked(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 99
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/studentenwerk/activities/News;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 100
    .local v0, "intent":Landroid/content/Intent;
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/studentenwerk/activities/MainView;->startActivityForResult(Landroid/content/Intent;I)V

    .line 101
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v1, 0x1

    .line 163
    if-ne p1, v1, :cond_0

    .line 164
    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    .line 165
    const-string v0, "Daten konnten nicht geladen werden!"

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 168
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x1

    .line 31
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 32
    const v3, 0x7f030005

    invoke-virtual {p0, v3}, Lcom/studentenwerk/activities/MainView;->setContentView(I)V

    .line 39
    const v3, 0x7f050016

    invoke-virtual {p0, v3}, Lcom/studentenwerk/activities/MainView;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 40
    .local v0, "loadingText":Ljava/lang/String;
    const-string v3, ""

    invoke-static {p0, v3, v0, v4}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/studentenwerk/activities/MainView;->dialog:Landroid/app/ProgressDialog;

    .line 43
    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    iput-object v3, p0, Lcom/studentenwerk/activities/MainView;->mHandler:Landroid/os/Handler;

    .line 44
    iget-object v3, p0, Lcom/studentenwerk/activities/MainView;->loadData:Ljava/lang/Thread;

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 45
    invoke-virtual {p0}, Lcom/studentenwerk/activities/MainView;->getApplication()Landroid/app/Application;

    move-result-object v1

    check-cast v1, Lcom/studentenwerk/UNIverse;

    .line 46
    .local v1, "universe":Lcom/studentenwerk/UNIverse;
    invoke-virtual {v1}, Lcom/studentenwerk/UNIverse;->checkNetwork()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 47
    const v3, 0x7f090005

    invoke-virtual {p0, v3}, Lcom/studentenwerk/activities/MainView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/webkit/WebView;

    .line 48
    .local v2, "webview":Landroid/webkit/WebView;
    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 49
    const-string v3, "http://www.studentenwerk-karlsruhe.de/mobile/ads/"

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 51
    .end local v2    # "webview":Landroid/webkit/WebView;
    :cond_0
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 6
    .param p1, "id"    # I

    .prologue
    .line 140
    invoke-virtual {p0}, Lcom/studentenwerk/activities/MainView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 141
    .local v2, "res":Landroid/content/res/Resources;
    packed-switch p1, :pswitch_data_0

    .line 156
    const/4 v1, 0x0

    .line 158
    .local v1, "dialog":Landroid/app/Dialog;
    :goto_0
    return-object v1

    .line 143
    .end local v1    # "dialog":Landroid/app/Dialog;
    :pswitch_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 144
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v3, 0x7f05000e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 145
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 146
    const v4, 0x104000a

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 147
    new-instance v5, Lcom/studentenwerk/activities/MainView$3;

    invoke-direct {v5, p0}, Lcom/studentenwerk/activities/MainView$3;-><init>(Lcom/studentenwerk/activities/MainView;)V

    .line 146
    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 153
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 154
    .restart local v1    # "dialog":Landroid/app/Dialog;
    goto :goto_0

    .line 141
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public settings_Clicked(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 94
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/studentenwerk/activities/Settings;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 95
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/studentenwerk/activities/MainView;->startActivity(Landroid/content/Intent;)V

    .line 96
    return-void
.end method
