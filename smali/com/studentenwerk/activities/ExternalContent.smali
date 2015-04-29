.class public Lcom/studentenwerk/activities/ExternalContent;
.super Landroid/app/Activity;
.source "ExternalContent.java"


# instance fields
.field private extContent:Landroid/webkit/WebView;

.field private extContentURL:[Ljava/lang/String;

.field private httpAuthPassword:Ljava/lang/String;

.field private httpAuthUser:Ljava/lang/String;

.field private webHost:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 33
    const-string v0, "https://www.studentenwerk-karlsruhe.de/de/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/studentenwerk/activities/ExternalContent;->webHost:Ljava/lang/String;

    .line 36
    const-string v0, "jsonapi"

    iput-object v0, p0, Lcom/studentenwerk/activities/ExternalContent;->httpAuthUser:Ljava/lang/String;

    .line 37
    const-string v0, "AhVai6OoCh3Quoo6ji"

    iput-object v0, p0, Lcom/studentenwerk/activities/ExternalContent;->httpAuthPassword:Ljava/lang/String;

    .line 30
    return-void
.end method

.method static synthetic access$0(Lcom/studentenwerk/activities/ExternalContent;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/studentenwerk/activities/ExternalContent;->httpAuthUser:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1(Lcom/studentenwerk/activities/ExternalContent;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/studentenwerk/activities/ExternalContent;->httpAuthPassword:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2(Lcom/studentenwerk/activities/ExternalContent;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/studentenwerk/activities/ExternalContent;->webHost:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public loadFileData(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "filename"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 170
    if-nez p1, :cond_1

    move-object v1, v6

    .line 199
    :cond_0
    :goto_0
    return-object v1

    .line 176
    :cond_1
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/studentenwerk/activities/ExternalContent;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v4

    .line 177
    .local v4, "inputStream":Ljava/io/FileInputStream;
    new-instance v3, Ljava/lang/StringBuffer;

    const-string v7, ""

    invoke-direct {v3, v7}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 178
    .local v3, "fileContent":Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .line 179
    .local v1, "content":Ljava/lang/String;
    const/16 v7, 0x400

    new-array v0, v7, [B

    .line 182
    .local v0, "buffer":[B
    :cond_2
    :goto_1
    invoke-virtual {v4, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v5

    .local v5, "length":I
    const/4 v7, -0x1

    if-ne v5, v7, :cond_3

    .line 191
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    .line 192
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 194
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    if-gtz v7, :cond_0

    .line 195
    const-string v7, ""

    if-ne v1, v7, :cond_4

    move-object v1, v6

    goto :goto_0

    .line 184
    :cond_3
    add-int/lit8 v5, v5, -0x1

    .line 185
    if-lez v5, :cond_2

    .line 187
    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v0}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v3, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 197
    .end local v0    # "buffer":[B
    .end local v1    # "content":Ljava/lang/String;
    .end local v3    # "fileContent":Ljava/lang/StringBuffer;
    .end local v4    # "inputStream":Ljava/io/FileInputStream;
    .end local v5    # "length":I
    :catch_0
    move-exception v2

    .line 198
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    move-object v1, v6

    .line 199
    goto :goto_0

    .end local v2    # "e":Ljava/io/IOException;
    .restart local v0    # "buffer":[B
    .restart local v1    # "content":Ljava/lang/String;
    .restart local v3    # "fileContent":Ljava/lang/StringBuffer;
    .restart local v4    # "inputStream":Ljava/io/FileInputStream;
    .restart local v5    # "length":I
    :cond_4
    move-object v1, v6

    .line 196
    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    .line 42
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 45
    const-string v4, "swka_token"

    invoke-virtual {p0, v4}, Lcom/studentenwerk/activities/ExternalContent;->loadFileData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 47
    .local v2, "token":Ljava/lang/String;
    if-eqz v2, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "&token="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 50
    .local v3, "tokenString":Ljava/lang/String;
    :goto_0
    const/4 v4, 0x7

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    .line 51
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "https://www.studentenwerk-karlsruhe.de/de//mobile/room_board/?webview=1"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 52
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "https://www.studentenwerk-karlsruhe.de/de//mobile/job_board/?webview=1"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    .line 53
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "https://www.studentenwerk-karlsruhe.de/de//mobile/blackboard/?webview=1"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v9

    const/4 v5, 0x3

    .line 54
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "https://www.studentenwerk-karlsruhe.de/de//mobile/tandem/?webview=1"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x4

    .line 55
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "https://www.studentenwerk-karlsruhe.de/de//mobile/event_board/?webview=1"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x5

    .line 56
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "https://www.studentenwerk-karlsruhe.de/de//mobile/info/?webview=1"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x6

    .line 57
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "https://www.studentenwerk-karlsruhe.de/de//mobile/beratung/?webview=1"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 50
    iput-object v4, p0, Lcom/studentenwerk/activities/ExternalContent;->extContentURL:[Ljava/lang/String;

    .line 61
    invoke-virtual {p0}, Lcom/studentenwerk/activities/ExternalContent;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/view/Window;->requestFeature(I)Z

    .line 63
    new-instance v4, Landroid/webkit/WebView;

    invoke-direct {v4, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/studentenwerk/activities/ExternalContent;->extContent:Landroid/webkit/WebView;

    .line 64
    iget-object v4, p0, Lcom/studentenwerk/activities/ExternalContent;->extContent:Landroid/webkit/WebView;

    invoke-virtual {v4}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 66
    move-object v0, p0

    .line 67
    .local v0, "activity":Landroid/app/Activity;
    iget-object v4, p0, Lcom/studentenwerk/activities/ExternalContent;->extContent:Landroid/webkit/WebView;

    new-instance v5, Lcom/studentenwerk/activities/ExternalContent$1;

    invoke-direct {v5, p0, v0}, Lcom/studentenwerk/activities/ExternalContent$1;-><init>(Lcom/studentenwerk/activities/ExternalContent;Landroid/app/Activity;)V

    invoke-virtual {v4, v5}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 74
    iget-object v4, p0, Lcom/studentenwerk/activities/ExternalContent;->extContent:Landroid/webkit/WebView;

    new-instance v5, Lcom/studentenwerk/activities/ExternalContent$2;

    invoke-direct {v5, p0, v0}, Lcom/studentenwerk/activities/ExternalContent$2;-><init>(Lcom/studentenwerk/activities/ExternalContent;Landroid/app/Activity;)V

    invoke-virtual {v4, v5}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 127
    iget-object v4, p0, Lcom/studentenwerk/activities/ExternalContent;->extContent:Landroid/webkit/WebView;

    invoke-virtual {p0, v4}, Lcom/studentenwerk/activities/ExternalContent;->setContentView(Landroid/view/View;)V

    .line 129
    invoke-virtual {p0}, Lcom/studentenwerk/activities/ExternalContent;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/4 v5, -0x1

    invoke-virtual {v4, v9, v5}, Landroid/view/Window;->setFeatureInt(II)V

    .line 131
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0xb

    if-lt v4, v5, :cond_0

    .line 132
    invoke-virtual {p0}, Lcom/studentenwerk/activities/ExternalContent;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 133
    invoke-virtual {p0}, Lcom/studentenwerk/activities/ExternalContent;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 134
    invoke-virtual {p0}, Lcom/studentenwerk/activities/ExternalContent;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    new-instance v5, Landroid/graphics/drawable/ColorDrawable;

    const v6, -0x777778

    invoke-direct {v5, v6}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v4, v5}, Landroid/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 138
    :cond_0
    invoke-virtual {p0}, Lcom/studentenwerk/activities/ExternalContent;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "section"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 141
    .local v1, "section":I
    if-ltz v1, :cond_2

    iget-object v4, p0, Lcom/studentenwerk/activities/ExternalContent;->extContentURL:[Ljava/lang/String;

    array-length v4, v4

    if-ge v1, v4, :cond_2

    .line 143
    iget-object v4, p0, Lcom/studentenwerk/activities/ExternalContent;->extContent:Landroid/webkit/WebView;

    iget-object v5, p0, Lcom/studentenwerk/activities/ExternalContent;->extContentURL:[Ljava/lang/String;

    aget-object v5, v5, v1

    invoke-virtual {v4, v5}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 164
    :goto_1
    return-void

    .line 48
    .end local v0    # "activity":Landroid/app/Activity;
    .end local v1    # "section":I
    .end local v3    # "tokenString":Ljava/lang/String;
    :cond_1
    const-string v3, ""

    .restart local v3    # "tokenString":Ljava/lang/String;
    goto/16 :goto_0

    .line 158
    .restart local v0    # "activity":Landroid/app/Activity;
    .restart local v1    # "section":I
    :cond_2
    invoke-virtual {p0}, Lcom/studentenwerk/activities/ExternalContent;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 159
    const v5, 0x7f05000e

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 156
    invoke-static {v0, v4, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    .line 160
    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 162
    invoke-virtual {p0}, Lcom/studentenwerk/activities/ExternalContent;->finish()V

    goto :goto_1
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 215
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/studentenwerk/activities/ExternalContent;->extContent:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 216
    iget-object v0, p0, Lcom/studentenwerk/activities/ExternalContent;->extContent:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    .line 217
    const/4 v0, 0x1

    .line 219
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "menuItem"    # Landroid/view/MenuItem;

    .prologue
    .line 206
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 211
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 208
    :pswitch_0
    invoke-virtual {p0}, Lcom/studentenwerk/activities/ExternalContent;->finish()V

    .line 209
    const/4 v0, 0x1

    goto :goto_0

    .line 206
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method
