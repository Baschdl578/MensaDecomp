.class Lcom/studentenwerk/activities/UserLogin$getTokenThread;
.super Landroid/os/AsyncTask;
.source "UserLogin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/studentenwerk/activities/UserLogin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "getTokenThread"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/studentenwerk/activities/UserLogin;


# direct methods
.method private constructor <init>(Lcom/studentenwerk/activities/UserLogin;)V
    .locals 0

    .prologue
    .line 138
    iput-object p1, p0, Lcom/studentenwerk/activities/UserLogin$getTokenThread;->this$0:Lcom/studentenwerk/activities/UserLogin;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/studentenwerk/activities/UserLogin;Lcom/studentenwerk/activities/UserLogin$getTokenThread;)V
    .locals 0

    .prologue
    .line 138
    invoke-direct {p0, p1}, Lcom/studentenwerk/activities/UserLogin$getTokenThread;-><init>(Lcom/studentenwerk/activities/UserLogin;)V

    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/studentenwerk/activities/UserLogin$getTokenThread;->doInBackground([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/String;
    .locals 14
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    const/4 v11, 0x0

    .line 145
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 146
    .local v7, "postParams":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    const/4 v4, 0x0

    .line 147
    .local v4, "json":Lorg/json/JSONObject;
    const/4 v1, 0x0

    .line 148
    .local v1, "code":Ljava/lang/Integer;
    const/4 v9, 0x0

    .line 151
    .local v9, "token":Ljava/lang/String;
    iget-object v10, p0, Lcom/studentenwerk/activities/UserLogin$getTokenThread;->this$0:Lcom/studentenwerk/activities/UserLogin;

    iget-object v12, p0, Lcom/studentenwerk/activities/UserLogin$getTokenThread;->this$0:Lcom/studentenwerk/activities/UserLogin;

    iget-object v12, v12, Lcom/studentenwerk/activities/UserLogin;->eMailFileName:Ljava/lang/String;

    invoke-virtual {v10, v12}, Lcom/studentenwerk/activities/UserLogin;->loadFileData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 152
    .local v3, "email":Ljava/lang/String;
    iget-object v10, p0, Lcom/studentenwerk/activities/UserLogin$getTokenThread;->this$0:Lcom/studentenwerk/activities/UserLogin;

    iget-object v12, p0, Lcom/studentenwerk/activities/UserLogin$getTokenThread;->this$0:Lcom/studentenwerk/activities/UserLogin;

    iget-object v12, v12, Lcom/studentenwerk/activities/UserLogin;->passwordFileName:Ljava/lang/String;

    invoke-virtual {v10, v12}, Lcom/studentenwerk/activities/UserLogin;->loadFileData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 153
    .local v6, "password":Ljava/lang/String;
    iget-object v10, p0, Lcom/studentenwerk/activities/UserLogin$getTokenThread;->this$0:Lcom/studentenwerk/activities/UserLogin;

    iget-object v12, p0, Lcom/studentenwerk/activities/UserLogin$getTokenThread;->this$0:Lcom/studentenwerk/activities/UserLogin;

    iget-object v12, v12, Lcom/studentenwerk/activities/UserLogin;->passwordFileName:Ljava/lang/String;

    const-string v13, ""

    invoke-virtual {v10, v12, v13}, Lcom/studentenwerk/activities/UserLogin;->saveFileData(Ljava/lang/String;Ljava/lang/String;)Z

    .line 157
    new-instance v10, Lorg/apache/http/message/BasicNameValuePair;

    const-string v12, "auth_username"

    invoke-direct {v10, v12, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v7, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 158
    new-instance v10, Lorg/apache/http/message/BasicNameValuePair;

    const-string v12, "auth_password"

    invoke-direct {v10, v12, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v7, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 161
    iget-object v10, p0, Lcom/studentenwerk/activities/UserLogin$getTokenThread;->this$0:Lcom/studentenwerk/activities/UserLogin;

    # getter for: Lcom/studentenwerk/activities/UserLogin;->authTokenURL:Ljava/lang/String;
    invoke-static {v10}, Lcom/studentenwerk/activities/UserLogin;->access$0(Lcom/studentenwerk/activities/UserLogin;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v7}, Lcom/studentenwerk/activities/UserLogin;->HTTPConnect(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v8

    .line 165
    .local v8, "result":Ljava/lang/String;
    :try_start_0
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v8}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v4    # "json":Lorg/json/JSONObject;
    .local v5, "json":Lorg/json/JSONObject;
    move-object v4, v5

    .line 169
    .end local v5    # "json":Lorg/json/JSONObject;
    .restart local v4    # "json":Lorg/json/JSONObject;
    :goto_0
    :try_start_1
    const-string v10, "code"

    invoke-virtual {v4, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 170
    const-string v10, "token"

    invoke-virtual {v4, v10}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    move-object v0, v10

    check-cast v0, Ljava/lang/String;

    move-object v9, v0
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_2

    .line 175
    :goto_1
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v10

    if-lez v10, :cond_0

    move-object v10, v11

    .line 176
    :goto_2
    return-object v10

    .line 166
    :catch_0
    move-exception v2

    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 171
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .local v2, "e":Lorg/json/JSONException;
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1

    .line 172
    .end local v2    # "e":Lorg/json/JSONException;
    :catch_2
    move-exception v2

    .local v2, "e":Ljava/lang/NullPointerException;
    move-object v10, v11

    goto :goto_2

    .end local v2    # "e":Ljava/lang/NullPointerException;
    :cond_0
    move-object v10, v9

    .line 176
    goto :goto_2
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/studentenwerk/activities/UserLogin$getTokenThread;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 4
    .param p1, "token"    # Ljava/lang/String;

    .prologue
    .line 183
    iget-object v1, p0, Lcom/studentenwerk/activities/UserLogin$getTokenThread;->this$0:Lcom/studentenwerk/activities/UserLogin;

    iget-object v1, v1, Lcom/studentenwerk/activities/UserLogin;->dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 185
    if-eqz p1, :cond_0

    .line 187
    iget-object v1, p0, Lcom/studentenwerk/activities/UserLogin$getTokenThread;->this$0:Lcom/studentenwerk/activities/UserLogin;

    iget-object v2, p0, Lcom/studentenwerk/activities/UserLogin$getTokenThread;->this$0:Lcom/studentenwerk/activities/UserLogin;

    iget-object v2, v2, Lcom/studentenwerk/activities/UserLogin;->tokenFileName:Ljava/lang/String;

    invoke-virtual {v1, v2, p1}, Lcom/studentenwerk/activities/UserLogin;->saveFileData(Ljava/lang/String;Ljava/lang/String;)Z

    .line 188
    iget-object v1, p0, Lcom/studentenwerk/activities/UserLogin$getTokenThread;->this$0:Lcom/studentenwerk/activities/UserLogin;

    iget-object v1, v1, Lcom/studentenwerk/activities/UserLogin;->passwordField:Landroid/widget/EditText;

    const-string v2, ""

    sget-object v3, Landroid/widget/TextView$BufferType;->EDITABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v1, v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 189
    iget-object v1, p0, Lcom/studentenwerk/activities/UserLogin$getTokenThread;->this$0:Lcom/studentenwerk/activities/UserLogin;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/studentenwerk/activities/UserLogin;->isUserLoggedIn:Z

    .line 192
    iget-object v1, p0, Lcom/studentenwerk/activities/UserLogin$getTokenThread;->this$0:Lcom/studentenwerk/activities/UserLogin;

    iget-object v1, v1, Lcom/studentenwerk/activities/UserLogin;->checkCredentialsButton:Landroid/widget/Button;

    const v2, 0x7f05001a

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    .line 193
    iget-object v1, p0, Lcom/studentenwerk/activities/UserLogin$getTokenThread;->this$0:Lcom/studentenwerk/activities/UserLogin;

    iget-object v1, v1, Lcom/studentenwerk/activities/UserLogin;->checkCredentialsButton:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const v2, -0xff0100

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 196
    iget-object v1, p0, Lcom/studentenwerk/activities/UserLogin$getTokenThread;->this$0:Lcom/studentenwerk/activities/UserLogin;

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Lcom/studentenwerk/activities/UserLogin;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 197
    .local v0, "inputManager":Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/studentenwerk/activities/UserLogin$getTokenThread;->this$0:Lcom/studentenwerk/activities/UserLogin;

    invoke-virtual {v1}, Lcom/studentenwerk/activities/UserLogin;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 208
    .end local v0    # "inputManager":Landroid/view/inputmethod/InputMethodManager;
    :goto_0
    return-void

    .line 201
    :cond_0
    iget-object v1, p0, Lcom/studentenwerk/activities/UserLogin$getTokenThread;->this$0:Lcom/studentenwerk/activities/UserLogin;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/studentenwerk/activities/UserLogin;->isUserLoggedIn:Z

    .line 202
    iget-object v1, p0, Lcom/studentenwerk/activities/UserLogin$getTokenThread;->this$0:Lcom/studentenwerk/activities/UserLogin;

    iget-object v2, p0, Lcom/studentenwerk/activities/UserLogin$getTokenThread;->this$0:Lcom/studentenwerk/activities/UserLogin;

    iget-object v2, v2, Lcom/studentenwerk/activities/UserLogin;->alertTitle:Ljava/lang/String;

    iget-object v3, p0, Lcom/studentenwerk/activities/UserLogin$getTokenThread;->this$0:Lcom/studentenwerk/activities/UserLogin;

    iget-object v3, v3, Lcom/studentenwerk/activities/UserLogin;->alertMessage:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/studentenwerk/activities/UserLogin;->showAlert(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    iget-object v1, p0, Lcom/studentenwerk/activities/UserLogin$getTokenThread;->this$0:Lcom/studentenwerk/activities/UserLogin;

    iget-object v1, v1, Lcom/studentenwerk/activities/UserLogin;->checkCredentialsButton:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/16 v2, -0x100

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 206
    iget-object v1, p0, Lcom/studentenwerk/activities/UserLogin$getTokenThread;->this$0:Lcom/studentenwerk/activities/UserLogin;

    invoke-virtual {v1}, Lcom/studentenwerk/activities/UserLogin;->resetLogin()V

    goto :goto_0
.end method
