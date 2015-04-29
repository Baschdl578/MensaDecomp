.class Lcom/studentenwerk/activities/UserLogin$checkTokenThread;
.super Landroid/os/AsyncTask;
.source "UserLogin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/studentenwerk/activities/UserLogin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "checkTokenThread"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/studentenwerk/activities/UserLogin;


# direct methods
.method private constructor <init>(Lcom/studentenwerk/activities/UserLogin;)V
    .locals 0

    .prologue
    .line 214
    iput-object p1, p0, Lcom/studentenwerk/activities/UserLogin$checkTokenThread;->this$0:Lcom/studentenwerk/activities/UserLogin;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/studentenwerk/activities/UserLogin;Lcom/studentenwerk/activities/UserLogin$checkTokenThread;)V
    .locals 0

    .prologue
    .line 214
    invoke-direct {p0, p1}, Lcom/studentenwerk/activities/UserLogin$checkTokenThread;-><init>(Lcom/studentenwerk/activities/UserLogin;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 11
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 231
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 232
    .local v5, "postParams":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    const/4 v3, 0x0

    .line 233
    .local v3, "json":Lorg/json/JSONObject;
    const/4 v0, 0x0

    .line 236
    .local v0, "code":Ljava/lang/Integer;
    iget-object v8, p0, Lcom/studentenwerk/activities/UserLogin$checkTokenThread;->this$0:Lcom/studentenwerk/activities/UserLogin;

    iget-object v9, p0, Lcom/studentenwerk/activities/UserLogin$checkTokenThread;->this$0:Lcom/studentenwerk/activities/UserLogin;

    iget-object v9, v9, Lcom/studentenwerk/activities/UserLogin;->eMailFileName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lcom/studentenwerk/activities/UserLogin;->loadFileData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 237
    .local v2, "email":Ljava/lang/String;
    iget-object v8, p0, Lcom/studentenwerk/activities/UserLogin$checkTokenThread;->this$0:Lcom/studentenwerk/activities/UserLogin;

    iget-object v9, p0, Lcom/studentenwerk/activities/UserLogin$checkTokenThread;->this$0:Lcom/studentenwerk/activities/UserLogin;

    iget-object v9, v9, Lcom/studentenwerk/activities/UserLogin;->tokenFileName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lcom/studentenwerk/activities/UserLogin;->loadFileData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 240
    .local v7, "token":Ljava/lang/String;
    new-instance v8, Lorg/apache/http/message/BasicNameValuePair;

    const-string v9, "auth_username"

    invoke-direct {v8, v9, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 241
    new-instance v8, Lorg/apache/http/message/BasicNameValuePair;

    const-string v9, "token"

    invoke-direct {v8, v9, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 244
    iget-object v8, p0, Lcom/studentenwerk/activities/UserLogin$checkTokenThread;->this$0:Lcom/studentenwerk/activities/UserLogin;

    # getter for: Lcom/studentenwerk/activities/UserLogin;->checkTokenURL:Ljava/lang/String;
    invoke-static {v8}, Lcom/studentenwerk/activities/UserLogin;->access$1(Lcom/studentenwerk/activities/UserLogin;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v5}, Lcom/studentenwerk/activities/UserLogin;->HTTPConnect(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v6

    .line 247
    .local v6, "result":Ljava/lang/String;
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v3    # "json":Lorg/json/JSONObject;
    .local v4, "json":Lorg/json/JSONObject;
    move-object v3, v4

    .line 250
    .end local v4    # "json":Lorg/json/JSONObject;
    .restart local v3    # "json":Lorg/json/JSONObject;
    :goto_0
    const-string v8, "code"

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 253
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-lez v8, :cond_0

    .line 254
    iget-object v8, p0, Lcom/studentenwerk/activities/UserLogin$checkTokenThread;->this$0:Lcom/studentenwerk/activities/UserLogin;

    iget-object v9, p0, Lcom/studentenwerk/activities/UserLogin$checkTokenThread;->this$0:Lcom/studentenwerk/activities/UserLogin;

    iget-object v9, v9, Lcom/studentenwerk/activities/UserLogin;->eMailFileName:Ljava/lang/String;

    const-string v10, ""

    invoke-virtual {v8, v9, v10}, Lcom/studentenwerk/activities/UserLogin;->saveFileData(Ljava/lang/String;Ljava/lang/String;)Z

    .line 255
    iget-object v8, p0, Lcom/studentenwerk/activities/UserLogin$checkTokenThread;->this$0:Lcom/studentenwerk/activities/UserLogin;

    iget-object v9, p0, Lcom/studentenwerk/activities/UserLogin$checkTokenThread;->this$0:Lcom/studentenwerk/activities/UserLogin;

    iget-object v9, v9, Lcom/studentenwerk/activities/UserLogin;->tokenFileName:Ljava/lang/String;

    const-string v10, ""

    invoke-virtual {v8, v9, v10}, Lcom/studentenwerk/activities/UserLogin;->saveFileData(Ljava/lang/String;Ljava/lang/String;)Z

    .line 256
    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 259
    :goto_1
    return-object v8

    .line 248
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 259
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    goto :goto_1
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/studentenwerk/activities/UserLogin$checkTokenThread;->doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 4
    .param p1, "result"    # Ljava/lang/Integer;

    .prologue
    const/4 v3, 0x1

    .line 267
    iget-object v0, p0, Lcom/studentenwerk/activities/UserLogin$checkTokenThread;->this$0:Lcom/studentenwerk/activities/UserLogin;

    iget-object v0, v0, Lcom/studentenwerk/activities/UserLogin;->dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 270
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, v3, :cond_0

    .line 272
    iget-object v0, p0, Lcom/studentenwerk/activities/UserLogin$checkTokenThread;->this$0:Lcom/studentenwerk/activities/UserLogin;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/studentenwerk/activities/UserLogin;->isUserLoggedIn:Z

    .line 273
    iget-object v0, p0, Lcom/studentenwerk/activities/UserLogin$checkTokenThread;->this$0:Lcom/studentenwerk/activities/UserLogin;

    invoke-virtual {v0}, Lcom/studentenwerk/activities/UserLogin;->resetLogin()V

    .line 281
    :goto_0
    return-void

    .line 277
    :cond_0
    iget-object v0, p0, Lcom/studentenwerk/activities/UserLogin$checkTokenThread;->this$0:Lcom/studentenwerk/activities/UserLogin;

    iget-object v0, v0, Lcom/studentenwerk/activities/UserLogin;->checkCredentialsButton:Landroid/widget/Button;

    const v1, 0x7f05001a

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 278
    iget-object v0, p0, Lcom/studentenwerk/activities/UserLogin$checkTokenThread;->this$0:Lcom/studentenwerk/activities/UserLogin;

    iget-object v0, v0, Lcom/studentenwerk/activities/UserLogin;->checkCredentialsButton:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const v1, -0xff0100

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 279
    iget-object v0, p0, Lcom/studentenwerk/activities/UserLogin$checkTokenThread;->this$0:Lcom/studentenwerk/activities/UserLogin;

    iput-boolean v3, v0, Lcom/studentenwerk/activities/UserLogin;->isUserLoggedIn:Z

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/studentenwerk/activities/UserLogin$checkTokenThread;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 5

    .prologue
    .line 219
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 222
    iget-object v0, p0, Lcom/studentenwerk/activities/UserLogin$checkTokenThread;->this$0:Lcom/studentenwerk/activities/UserLogin;

    iget-object v1, p0, Lcom/studentenwerk/activities/UserLogin$checkTokenThread;->this$0:Lcom/studentenwerk/activities/UserLogin;

    const-string v2, ""

    iget-object v3, p0, Lcom/studentenwerk/activities/UserLogin$checkTokenThread;->this$0:Lcom/studentenwerk/activities/UserLogin;

    const v4, 0x7f050016

    invoke-virtual {v3, v4}, Lcom/studentenwerk/activities/UserLogin;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v1, v2, v3, v4}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;

    move-result-object v1

    iput-object v1, v0, Lcom/studentenwerk/activities/UserLogin;->dialog:Landroid/app/ProgressDialog;

    .line 224
    return-void
.end method
