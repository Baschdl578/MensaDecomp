.class public Lcom/studentenwerk/activities/UserLogin;
.super Landroid/app/Activity;
.source "UserLogin.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/studentenwerk/activities/UserLogin$checkTokenThread;,
        Lcom/studentenwerk/activities/UserLogin$getTokenThread;
    }
.end annotation


# instance fields
.field alertButton:Ljava/lang/String;

.field alertDialog:Landroid/app/AlertDialog;

.field alertMessage:Ljava/lang/String;

.field alertTitle:Ljava/lang/String;

.field application:Lcom/studentenwerk/UNIverse;

.field private authTokenURL:Ljava/lang/String;

.field checkCredentialsButton:Landroid/widget/Button;

.field private checkTokenURL:Ljava/lang/String;

.field final context:Landroid/content/Context;

.field dialog:Landroid/app/ProgressDialog;

.field eMailFileName:Ljava/lang/String;

.field email:Ljava/lang/String;

.field emailField:Landroid/widget/EditText;

.field public focusIsInsideActivity:Z

.field isUserLoggedIn:Z

.field loginDescription:Landroid/widget/TextView;

.field loginTitle:Landroid/widget/TextView;

.field outputStream:Ljava/io/FileOutputStream;

.field password:Ljava/lang/String;

.field passwordField:Landroid/widget/EditText;

.field passwordFileName:Ljava/lang/String;

.field token:Ljava/lang/String;

.field tokenFileName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 52
    const-string v0, "https://www.studentenwerk-karlsruhe.de/json_interface/auth/"

    iput-object v0, p0, Lcom/studentenwerk/activities/UserLogin;->authTokenURL:Ljava/lang/String;

    .line 53
    const-string v0, "https://www.studentenwerk-karlsruhe.de/json_interface/auth/check/"

    iput-object v0, p0, Lcom/studentenwerk/activities/UserLogin;->checkTokenURL:Ljava/lang/String;

    .line 59
    const-string v0, "swka_email"

    iput-object v0, p0, Lcom/studentenwerk/activities/UserLogin;->eMailFileName:Ljava/lang/String;

    .line 60
    const-string v0, "swka_token"

    iput-object v0, p0, Lcom/studentenwerk/activities/UserLogin;->tokenFileName:Ljava/lang/String;

    .line 61
    const-string v0, "swka_password"

    iput-object v0, p0, Lcom/studentenwerk/activities/UserLogin;->passwordFileName:Ljava/lang/String;

    .line 72
    const-string v0, "Fehler"

    iput-object v0, p0, Lcom/studentenwerk/activities/UserLogin;->alertTitle:Ljava/lang/String;

    .line 73
    const-string v0, "Es ist ein Fehler w\u00e4hrend der Authentifizierung aufgetreten. Bitte \u00fcberpr\u00fcfen Sie Ihre Angaben"

    iput-object v0, p0, Lcom/studentenwerk/activities/UserLogin;->alertMessage:Ljava/lang/String;

    .line 74
    const-string v0, "OK"

    iput-object v0, p0, Lcom/studentenwerk/activities/UserLogin;->alertButton:Ljava/lang/String;

    .line 79
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/studentenwerk/activities/UserLogin;->alertDialog:Landroid/app/AlertDialog;

    .line 80
    iput-object p0, p0, Lcom/studentenwerk/activities/UserLogin;->context:Landroid/content/Context;

    .line 51
    return-void
.end method

.method public static HTTPConnect(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;
    .locals 12
    .param p0, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 429
    .local p1, "postParams":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v3, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v3}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 431
    .local v3, "httpclient":Lorg/apache/http/impl/client/DefaultHttpClient;
    invoke-virtual {v3}, Lorg/apache/http/impl/client/DefaultHttpClient;->getCredentialsProvider()Lorg/apache/http/client/CredentialsProvider;

    move-result-object v7

    .line 432
    new-instance v8, Lorg/apache/http/auth/AuthScope;

    sget-object v9, Lorg/apache/http/auth/AuthScope;->ANY_HOST:Ljava/lang/String;

    const/4 v10, -0x1

    invoke-direct {v8, v9, v10}, Lorg/apache/http/auth/AuthScope;-><init>(Ljava/lang/String;I)V

    .line 433
    new-instance v9, Lorg/apache/http/auth/UsernamePasswordCredentials;

    const-string v10, "jsonapi"

    const-string v11, "AhVai6OoCh3Quoo6ji"

    invoke-direct {v9, v10, v11}, Lorg/apache/http/auth/UsernamePasswordCredentials;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 431
    invoke-interface {v7, v8, v9}, Lorg/apache/http/client/CredentialsProvider;->setCredentials(Lorg/apache/http/auth/AuthScope;Lorg/apache/http/auth/Credentials;)V

    .line 435
    new-instance v2, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v2, p0}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 439
    .local v2, "httpType":Lorg/apache/http/client/methods/HttpPost;
    if-eqz p1, :cond_0

    .line 440
    :try_start_0
    new-instance v7, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    invoke-direct {v7, p1}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;)V

    invoke-virtual {v2, v7}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 442
    :cond_0
    invoke-virtual {v3, v2}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v5

    .line 443
    .local v5, "response":Lorg/apache/http/HttpResponse;
    invoke-interface {v5}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    .line 444
    .local v1, "entity":Lorg/apache/http/HttpEntity;
    if-eqz v1, :cond_1

    .line 445
    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v4

    .line 446
    .local v4, "instream":Ljava/io/InputStream;
    invoke-static {v4}, Lcom/studentenwerk/activities/UserLogin;->convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v6

    .line 447
    .local v6, "result":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 454
    .end local v1    # "entity":Lorg/apache/http/HttpEntity;
    .end local v4    # "instream":Ljava/io/InputStream;
    .end local v5    # "response":Lorg/apache/http/HttpResponse;
    .end local v6    # "result":Ljava/lang/String;
    :goto_0
    return-object v6

    .line 452
    :catch_0
    move-exception v0

    .local v0, "e":Lorg/apache/http/client/ClientProtocolException;
    invoke-virtual {v0}, Lorg/apache/http/client/ClientProtocolException;->printStackTrace()V

    .line 454
    .end local v0    # "e":Lorg/apache/http/client/ClientProtocolException;
    :cond_1
    :goto_1
    const/4 v6, 0x0

    goto :goto_0

    .line 453
    :catch_1
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method static synthetic access$0(Lcom/studentenwerk/activities/UserLogin;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/studentenwerk/activities/UserLogin;->authTokenURL:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1(Lcom/studentenwerk/activities/UserLogin;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/studentenwerk/activities/UserLogin;->checkTokenURL:Ljava/lang/String;

    return-object v0
.end method

.method public static convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 6
    .param p0, "is"    # Ljava/io/InputStream;

    .prologue
    .line 458
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-direct {v4, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 459
    .local v2, "reader":Ljava/io/BufferedReader;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 461
    .local v3, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 463
    .local v1, "line":Ljava/lang/String;
    :goto_0
    :try_start_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    if-nez v1, :cond_0

    .line 470
    :try_start_1
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 475
    :goto_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 464
    :cond_0
    :try_start_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 466
    :catch_0
    move-exception v0

    .line 467
    .local v0, "e":Ljava/io/IOException;
    :try_start_3
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 470
    :try_start_4
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 471
    :catch_1
    move-exception v0

    .line 472
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 468
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    .line 470
    :try_start_5
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 474
    :goto_2
    throw v4

    .line 471
    :catch_2
    move-exception v0

    .line 472
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 471
    .end local v0    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v0

    .line 472
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method private rememberEmailField()V
    .locals 3

    .prologue
    .line 287
    iget-object v1, p0, Lcom/studentenwerk/activities/UserLogin;->eMailFileName:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/studentenwerk/activities/UserLogin;->loadFileData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 288
    .local v0, "email":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 290
    iget-object v1, p0, Lcom/studentenwerk/activities/UserLogin;->emailField:Landroid/widget/EditText;

    sget-object v2, Landroid/widget/TextView$BufferType;->EDITABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v1, v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 292
    :cond_0
    return-void
.end method


# virtual methods
.method public authenticate()Z
    .locals 2

    .prologue
    .line 334
    new-instance v0, Lcom/studentenwerk/activities/UserLogin$getTokenThread;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/studentenwerk/activities/UserLogin$getTokenThread;-><init>(Lcom/studentenwerk/activities/UserLogin;Lcom/studentenwerk/activities/UserLogin$getTokenThread;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/studentenwerk/activities/UserLogin$getTokenThread;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 335
    iget-boolean v0, p0, Lcom/studentenwerk/activities/UserLogin;->isUserLoggedIn:Z

    return v0
.end method

.method public check()Z
    .locals 2

    .prologue
    .line 340
    new-instance v0, Lcom/studentenwerk/activities/UserLogin$checkTokenThread;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/studentenwerk/activities/UserLogin$checkTokenThread;-><init>(Lcom/studentenwerk/activities/UserLogin;Lcom/studentenwerk/activities/UserLogin$checkTokenThread;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/studentenwerk/activities/UserLogin$checkTokenThread;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 341
    iget-boolean v0, p0, Lcom/studentenwerk/activities/UserLogin;->isUserLoggedIn:Z

    return v0
.end method

.method public loadFileData(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "filename"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 370
    if-nez p1, :cond_1

    move-object v1, v6

    .line 399
    :cond_0
    :goto_0
    return-object v1

    .line 376
    :cond_1
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/studentenwerk/activities/UserLogin;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v4

    .line 377
    .local v4, "inputStream":Ljava/io/FileInputStream;
    new-instance v3, Ljava/lang/StringBuffer;

    const-string v7, ""

    invoke-direct {v3, v7}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 378
    .local v3, "fileContent":Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .line 379
    .local v1, "content":Ljava/lang/String;
    const/16 v7, 0x400

    new-array v0, v7, [B

    .line 382
    .local v0, "buffer":[B
    :cond_2
    :goto_1
    invoke-virtual {v4, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v5

    .local v5, "length":I
    const/4 v7, -0x1

    if-ne v5, v7, :cond_3

    .line 391
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    .line 392
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 394
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    if-gtz v7, :cond_0

    .line 395
    const-string v7, ""

    if-ne v1, v7, :cond_4

    move-object v1, v6

    goto :goto_0

    .line 384
    :cond_3
    add-int/lit8 v5, v5, -0x1

    .line 385
    if-lez v5, :cond_2

    .line 387
    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v0}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v3, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 397
    .end local v0    # "buffer":[B
    .end local v1    # "content":Ljava/lang/String;
    .end local v3    # "fileContent":Ljava/lang/StringBuffer;
    .end local v4    # "inputStream":Ljava/io/FileInputStream;
    .end local v5    # "length":I
    :catch_0
    move-exception v2

    .line 398
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    move-object v1, v6

    .line 399
    goto :goto_0

    .end local v2    # "e":Ljava/io/IOException;
    .restart local v0    # "buffer":[B
    .restart local v1    # "content":Ljava/lang/String;
    .restart local v3    # "fileContent":Ljava/lang/StringBuffer;
    .restart local v4    # "inputStream":Ljava/io/FileInputStream;
    .restart local v5    # "length":I
    :cond_4
    move-object v1, v6

    .line 396
    goto :goto_0
.end method

.method public onBack(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 479
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 480
    .local v0, "intent":Landroid/content/Intent;
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/studentenwerk/activities/UserLogin;->setResult(ILandroid/content/Intent;)V

    .line 481
    const-class v1, Lcom/studentenwerk/activities/Settings;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 482
    invoke-virtual {p0}, Lcom/studentenwerk/activities/UserLogin;->finish()V

    .line 483
    return-void
.end method

.method public onClickCheckCredentials(Landroid/view/View;)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 313
    const-string v4, ""

    const v5, 0x7f050016

    invoke-virtual {p0, v5}, Lcom/studentenwerk/activities/UserLogin;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-static {p0, v4, v5, v6}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/studentenwerk/activities/UserLogin;->dialog:Landroid/app/ProgressDialog;

    .line 316
    const v4, 0x7f090009

    invoke-virtual {p0, v4}, Lcom/studentenwerk/activities/UserLogin;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 317
    .local v1, "emailField":Landroid/widget/EditText;
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    .line 320
    .local v0, "email":Ljava/lang/String;
    const v4, 0x7f09000b

    invoke-virtual {p0, v4}, Lcom/studentenwerk/activities/UserLogin;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    .line 321
    .local v3, "passwordField":Landroid/widget/EditText;
    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    .line 324
    .local v2, "password":Ljava/lang/String;
    iget-object v4, p0, Lcom/studentenwerk/activities/UserLogin;->eMailFileName:Ljava/lang/String;

    invoke-virtual {p0, v4, v0}, Lcom/studentenwerk/activities/UserLogin;->saveFileData(Ljava/lang/String;Ljava/lang/String;)Z

    .line 325
    iget-object v4, p0, Lcom/studentenwerk/activities/UserLogin;->passwordFileName:Ljava/lang/String;

    invoke-virtual {p0, v4, v2}, Lcom/studentenwerk/activities/UserLogin;->saveFileData(Ljava/lang/String;Ljava/lang/String;)Z

    .line 327
    invoke-virtual {p0}, Lcom/studentenwerk/activities/UserLogin;->authenticate()Z

    .line 328
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 89
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 90
    iput-boolean v3, p0, Lcom/studentenwerk/activities/UserLogin;->isUserLoggedIn:Z

    .line 91
    invoke-virtual {p0}, Lcom/studentenwerk/activities/UserLogin;->getApplication()Landroid/app/Application;

    move-result-object v2

    check-cast v2, Lcom/studentenwerk/UNIverse;

    iput-object v2, p0, Lcom/studentenwerk/activities/UserLogin;->application:Lcom/studentenwerk/UNIverse;

    .line 92
    iput-boolean v4, p0, Lcom/studentenwerk/activities/UserLogin;->focusIsInsideActivity:Z

    .line 93
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 96
    .local v0, "checkResult":Ljava/lang/Boolean;
    const v2, 0x7f030004

    invoke-virtual {p0, v2}, Lcom/studentenwerk/activities/UserLogin;->setContentView(I)V

    .line 97
    const v2, 0x7f090009

    invoke-virtual {p0, v2}, Lcom/studentenwerk/activities/UserLogin;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/studentenwerk/activities/UserLogin;->emailField:Landroid/widget/EditText;

    .line 98
    const v2, 0x7f09000b

    invoke-virtual {p0, v2}, Lcom/studentenwerk/activities/UserLogin;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/studentenwerk/activities/UserLogin;->passwordField:Landroid/widget/EditText;

    .line 99
    const v2, 0x7f090007

    invoke-virtual {p0, v2}, Lcom/studentenwerk/activities/UserLogin;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/studentenwerk/activities/UserLogin;->loginTitle:Landroid/widget/TextView;

    .line 100
    const v2, 0x7f09000d

    invoke-virtual {p0, v2}, Lcom/studentenwerk/activities/UserLogin;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/studentenwerk/activities/UserLogin;->loginDescription:Landroid/widget/TextView;

    .line 101
    const v2, 0x7f09000c

    invoke-virtual {p0, v2}, Lcom/studentenwerk/activities/UserLogin;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/studentenwerk/activities/UserLogin;->checkCredentialsButton:Landroid/widget/Button;

    .line 103
    iget-object v2, p0, Lcom/studentenwerk/activities/UserLogin;->checkCredentialsButton:Landroid/widget/Button;

    const v3, 0x7f050019

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(I)V

    .line 106
    iget-object v2, p0, Lcom/studentenwerk/activities/UserLogin;->passwordField:Landroid/widget/EditText;

    new-instance v3, Landroid/text/method/PasswordTransformationMethod;

    invoke-direct {v3}, Landroid/text/method/PasswordTransformationMethod;-><init>()V

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 109
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-lt v2, v3, :cond_0

    .line 110
    invoke-virtual {p0}, Lcom/studentenwerk/activities/UserLogin;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 111
    invoke-virtual {p0}, Lcom/studentenwerk/activities/UserLogin;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 112
    invoke-virtual {p0}, Lcom/studentenwerk/activities/UserLogin;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    const v4, -0x777778

    invoke-direct {v3, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v2, v3}, Landroid/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 116
    :cond_0
    iget-object v2, p0, Lcom/studentenwerk/activities/UserLogin;->eMailFileName:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/studentenwerk/activities/UserLogin;->loadFileData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 117
    .local v1, "email":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 119
    iget-object v2, p0, Lcom/studentenwerk/activities/UserLogin;->emailField:Landroid/widget/EditText;

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 120
    invoke-virtual {p0}, Lcom/studentenwerk/activities/UserLogin;->check()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 124
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 126
    invoke-direct {p0}, Lcom/studentenwerk/activities/UserLogin;->rememberEmailField()V

    .line 127
    iget-object v2, p0, Lcom/studentenwerk/activities/UserLogin;->checkCredentialsButton:Landroid/widget/Button;

    invoke-virtual {v2}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const v3, -0xff0100

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 134
    :goto_0
    return-void

    .line 131
    :cond_2
    iget-object v2, p0, Lcom/studentenwerk/activities/UserLogin;->passwordField:Landroid/widget/EditText;

    const-string v3, "Pflichtfeld"

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 132
    iget-object v2, p0, Lcom/studentenwerk/activities/UserLogin;->checkCredentialsButton:Landroid/widget/Button;

    invoke-virtual {v2}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const/16 v3, -0x100

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "menuItem"    # Landroid/view/MenuItem;

    .prologue
    .line 489
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 494
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 491
    :pswitch_0
    invoke-virtual {p0}, Lcom/studentenwerk/activities/UserLogin;->finish()V

    .line 492
    const/4 v0, 0x1

    goto :goto_0

    .line 489
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method public resetLogin()V
    .locals 3

    .prologue
    .line 298
    iget-object v0, p0, Lcom/studentenwerk/activities/UserLogin;->eMailFileName:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/studentenwerk/activities/UserLogin;->saveFileData(Ljava/lang/String;Ljava/lang/String;)Z

    .line 299
    iget-object v0, p0, Lcom/studentenwerk/activities/UserLogin;->passwordFileName:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/studentenwerk/activities/UserLogin;->saveFileData(Ljava/lang/String;Ljava/lang/String;)Z

    .line 300
    iget-object v0, p0, Lcom/studentenwerk/activities/UserLogin;->tokenFileName:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/studentenwerk/activities/UserLogin;->saveFileData(Ljava/lang/String;Ljava/lang/String;)Z

    .line 302
    iget-object v0, p0, Lcom/studentenwerk/activities/UserLogin;->checkCredentialsButton:Landroid/widget/Button;

    const v1, 0x7f050019

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 303
    iget-object v0, p0, Lcom/studentenwerk/activities/UserLogin;->checkCredentialsButton:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/16 v1, -0x100

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 305
    iget-object v0, p0, Lcom/studentenwerk/activities/UserLogin;->passwordField:Landroid/widget/EditText;

    const-string v1, ""

    sget-object v2, Landroid/widget/TextView$BufferType;->EDITABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v0, v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 306
    return-void
.end method

.method public saveFileData(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 407
    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v3}, Lcom/studentenwerk/activities/UserLogin;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v1

    .line 408
    .local v1, "outputStream":Ljava/io/FileOutputStream;
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/FileOutputStream;->write([B)V

    .line 409
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 410
    const/4 v2, 0x1

    .line 416
    .end local v1    # "outputStream":Ljava/io/FileOutputStream;
    :goto_0
    return v2

    .line 411
    :catch_0
    move-exception v0

    .line 412
    .local v0, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 414
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v0

    .line 415
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public showAlert(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 351
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 352
    .local v0, "alertDialog":Landroid/app/AlertDialog;
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 353
    invoke-virtual {v0, p2}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 356
    iget-object v1, p0, Lcom/studentenwerk/activities/UserLogin;->alertButton:Ljava/lang/String;

    new-instance v2, Lcom/studentenwerk/activities/UserLogin$1;

    invoke-direct {v2, p0, v0}, Lcom/studentenwerk/activities/UserLogin$1;-><init>(Lcom/studentenwerk/activities/UserLogin;Landroid/app/AlertDialog;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog;->setButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 362
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 363
    return-void
.end method
