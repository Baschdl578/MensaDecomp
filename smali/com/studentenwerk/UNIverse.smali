.class public Lcom/studentenwerk/UNIverse;
.super Landroid/app/Application;
.source "UNIverse.java"


# static fields
.field public static final DATA_GENERAL:I = 0x0

.field public static final DATA_MEALS:I = 0x1

.field public static final DATA_NEWS:I = 0x2

.field public static final DATA_NEWS_ORDER:I = 0x3

.field static final cacheFiles:[Ljava/lang/String;

.field static final jsonUrls:[Ljava/lang/String;

.field public static final urlAds:Ljava/lang/String; = "http://www.studentenwerk-karlsruhe.de/mobile/ads/"

.field public static final urlBase:Ljava/lang/String; = "https://www.studentenwerk-karlsruhe.de/de/"


# instance fields
.field private chosenDate:Ljava/util/Calendar;

.field private generalData:Lorg/json/JSONObject;

.field private mealData:Lorg/json/JSONObject;

.field private newsData:Lorg/json/JSONObject;

.field private newsDataOrder:Lorg/json/JSONArray;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 52
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "generalData.json"

    aput-object v1, v0, v2

    const-string v1, "meals_%s.json"

    aput-object v1, v0, v3

    const-string v1, "news.json"

    aput-object v1, v0, v4

    const-string v1, "news_order.json"

    aput-object v1, v0, v5

    sput-object v0, Lcom/studentenwerk/UNIverse;->cacheFiles:[Ljava/lang/String;

    .line 53
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "/json_interface/general/"

    aput-object v1, v0, v2

    const-string v1, "/json_interface/canteen/"

    aput-object v1, v0, v3

    const-string v1, "/json_interface/news/"

    aput-object v1, v0, v4

    const-string v1, "/json_interface/news/?sorted_dates=1"

    aput-object v1, v0, v5

    sput-object v0, Lcom/studentenwerk/UNIverse;->jsonUrls:[Ljava/lang/String;

    .line 37
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 82
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 59
    iput-object v0, p0, Lcom/studentenwerk/UNIverse;->generalData:Lorg/json/JSONObject;

    .line 60
    iput-object v0, p0, Lcom/studentenwerk/UNIverse;->mealData:Lorg/json/JSONObject;

    .line 61
    iput-object v0, p0, Lcom/studentenwerk/UNIverse;->newsData:Lorg/json/JSONObject;

    .line 62
    iput-object v0, p0, Lcom/studentenwerk/UNIverse;->newsDataOrder:Lorg/json/JSONArray;

    .line 64
    iput-object v0, p0, Lcom/studentenwerk/UNIverse;->chosenDate:Ljava/util/Calendar;

    .line 83
    return-void
.end method

.method public static connect(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;
    .locals 11
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
    .line 373
    .local p1, "postParams":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v2, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v2}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 375
    .local v2, "httpclient":Lorg/apache/http/impl/client/DefaultHttpClient;
    invoke-virtual {v2}, Lorg/apache/http/impl/client/DefaultHttpClient;->getCredentialsProvider()Lorg/apache/http/client/CredentialsProvider;

    move-result-object v6

    .line 376
    new-instance v7, Lorg/apache/http/auth/AuthScope;

    sget-object v8, Lorg/apache/http/auth/AuthScope;->ANY_HOST:Ljava/lang/String;

    const/4 v9, -0x1

    invoke-direct {v7, v8, v9}, Lorg/apache/http/auth/AuthScope;-><init>(Ljava/lang/String;I)V

    .line 377
    new-instance v8, Lorg/apache/http/auth/UsernamePasswordCredentials;

    const-string v9, "jsonapi"

    const-string v10, "AhVai6OoCh3Quoo6ji"

    invoke-direct {v8, v9, v10}, Lorg/apache/http/auth/UsernamePasswordCredentials;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    invoke-interface {v6, v7, v8}, Lorg/apache/http/client/CredentialsProvider;->setCredentials(Lorg/apache/http/auth/AuthScope;Lorg/apache/http/auth/Credentials;)V

    .line 379
    new-instance v1, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v1, p0}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 383
    .local v1, "httpType":Lorg/apache/http/client/methods/HttpPost;
    if-eqz p1, :cond_0

    .line 384
    :try_start_0
    new-instance v6, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    invoke-direct {v6, p1}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;)V

    invoke-virtual {v1, v6}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 386
    :cond_0
    invoke-virtual {v2, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v4

    .line 387
    .local v4, "response":Lorg/apache/http/HttpResponse;
    invoke-interface {v4}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    .line 388
    .local v0, "entity":Lorg/apache/http/HttpEntity;
    if-eqz v0, :cond_1

    .line 389
    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v3

    .line 390
    .local v3, "instream":Ljava/io/InputStream;
    invoke-static {v3}, Lcom/studentenwerk/UNIverse;->convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v5

    .line 392
    .local v5, "result":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 400
    .end local v0    # "entity":Lorg/apache/http/HttpEntity;
    .end local v3    # "instream":Ljava/io/InputStream;
    .end local v4    # "response":Lorg/apache/http/HttpResponse;
    .end local v5    # "result":Ljava/lang/String;
    :goto_0
    return-object v5

    .line 397
    :catch_0
    move-exception v6

    .line 400
    :cond_1
    :goto_1
    const/4 v5, 0x0

    goto :goto_0

    .line 395
    :catch_1
    move-exception v6

    goto :goto_1
.end method

.method public static convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 6
    .param p0, "is"    # Ljava/io/InputStream;

    .prologue
    .line 455
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-direct {v4, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 456
    .local v2, "reader":Ljava/io/BufferedReader;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 458
    .local v3, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 460
    .local v1, "line":Ljava/lang/String;
    :goto_0
    :try_start_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    if-nez v1, :cond_0

    .line 467
    :try_start_1
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 472
    :goto_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 461
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

    .line 463
    :catch_0
    move-exception v0

    .line 464
    .local v0, "e":Ljava/io/IOException;
    :try_start_3
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 467
    :try_start_4
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 468
    :catch_1
    move-exception v0

    .line 469
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 465
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    .line 467
    :try_start_5
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 471
    :goto_2
    throw v4

    .line 468
    :catch_2
    move-exception v0

    .line 469
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 468
    .end local v0    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v0

    .line 469
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method private createCache(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "cache"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;

    .prologue
    .line 353
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/studentenwerk/UNIverse;->deleteFile(Ljava/lang/String;)Z

    .line 354
    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2}, Lcom/studentenwerk/UNIverse;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v1

    .line 355
    .local v1, "fos":Ljava/io/FileOutputStream;
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/FileOutputStream;->write([B)V

    .line 356
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 362
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    :goto_0
    return-void

    .line 357
    :catch_0
    move-exception v0

    .line 358
    .local v0, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 359
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v0

    .line 360
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private getJsonArray(Ljava/lang/String;)Lorg/json/JSONArray;
    .locals 4
    .param p1, "URL"    # Ljava/lang/String;

    .prologue
    .line 434
    const/4 v3, 0x0

    invoke-static {p1, v3}, Lcom/studentenwerk/UNIverse;->connect(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    .line 435
    .local v0, "JsonResponse":Ljava/lang/String;
    const/4 v1, 0x0

    .line 438
    .local v1, "json":Lorg/json/JSONArray;
    :try_start_0
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "json":Lorg/json/JSONArray;
    .local v2, "json":Lorg/json/JSONArray;
    move-object v1, v2

    .line 443
    .end local v2    # "json":Lorg/json/JSONArray;
    .restart local v1    # "json":Lorg/json/JSONArray;
    :goto_0
    return-object v1

    .line 439
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method private getJsonObject(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 4
    .param p1, "URL"    # Ljava/lang/String;

    .prologue
    .line 413
    const/4 v3, 0x0

    invoke-static {p1, v3}, Lcom/studentenwerk/UNIverse;->connect(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    .line 414
    .local v0, "JsonResponse":Ljava/lang/String;
    const/4 v1, 0x0

    .line 417
    .local v1, "json":Lorg/json/JSONObject;
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "json":Lorg/json/JSONObject;
    .local v2, "json":Lorg/json/JSONObject;
    move-object v1, v2

    .line 422
    .end local v2    # "json":Lorg/json/JSONObject;
    .restart local v1    # "json":Lorg/json/JSONObject;
    :goto_0
    return-object v1

    .line 418
    :catch_0
    move-exception v3

    goto :goto_0
.end method


# virtual methods
.method public checkNetwork()Z
    .locals 3

    .prologue
    .line 477
    const-string v2, "connectivity"

    invoke-virtual {p0, v2}, Lcom/studentenwerk/UNIverse;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 478
    .local v1, "connectivityManager":Landroid/net/ConnectivityManager;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 479
    .local v0, "activeNetworkInfo":Landroid/net/NetworkInfo;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public deleteCache(ILjava/lang/String;)V
    .locals 4
    .param p1, "type"    # I
    .param p2, "cacheAdd"    # Ljava/lang/String;

    .prologue
    .line 225
    sget-object v2, Lcom/studentenwerk/UNIverse;->cacheFiles:[Ljava/lang/String;

    aget-object v0, v2, p1

    .line 227
    .local v0, "cache":Ljava/lang/String;
    if-eqz p2, :cond_0

    .line 228
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 230
    :cond_0
    invoke-virtual {p0, v0}, Lcom/studentenwerk/UNIverse;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 232
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 233
    return-void
.end method

.method public getChosenDate()Ljava/util/Calendar;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/studentenwerk/UNIverse;->chosenDate:Ljava/util/Calendar;

    return-object v0
.end method

.method public getData(I)Lorg/json/JSONObject;
    .locals 2
    .param p1, "type"    # I

    .prologue
    .line 173
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    iget-object v0, p0, Lcom/studentenwerk/UNIverse;->mealData:Lorg/json/JSONObject;

    .line 177
    .local v0, "result":Lorg/json/JSONObject;
    :goto_0
    return-object v0

    .line 174
    .end local v0    # "result":Lorg/json/JSONObject;
    :cond_0
    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    iget-object v0, p0, Lcom/studentenwerk/UNIverse;->newsData:Lorg/json/JSONObject;

    .restart local v0    # "result":Lorg/json/JSONObject;
    goto :goto_0

    .line 175
    .end local v0    # "result":Lorg/json/JSONObject;
    :cond_1
    iget-object v0, p0, Lcom/studentenwerk/UNIverse;->generalData:Lorg/json/JSONObject;

    .restart local v0    # "result":Lorg/json/JSONObject;
    goto :goto_0
.end method

.method public getDataArray(I)Lorg/json/JSONArray;
    .locals 2
    .param p1, "type"    # I

    .prologue
    .line 182
    const/4 v0, 0x0

    .line 184
    .local v0, "result":Lorg/json/JSONArray;
    const/4 v1, 0x3

    if-ne p1, v1, :cond_0

    iget-object v0, p0, Lcom/studentenwerk/UNIverse;->newsDataOrder:Lorg/json/JSONArray;

    .line 186
    :cond_0
    return-object v0
.end method

.method public getOrderedCanteenList(Z)Ljava/util/LinkedHashMap;
    .locals 12
    .param p1, "isFiltered"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 98
    iget-object v10, p0, Lcom/studentenwerk/UNIverse;->generalData:Lorg/json/JSONObject;

    if-nez v10, :cond_0

    const/4 v10, 0x0

    invoke-virtual {p0, v10}, Lcom/studentenwerk/UNIverse;->loadData(I)V

    .line 101
    :cond_0
    new-instance v9, Ljava/util/LinkedHashMap;

    invoke-direct {v9}, Ljava/util/LinkedHashMap;-><init>()V

    .line 109
    .local v9, "orderedCanteenList":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    iget-object v7, p0, Lcom/studentenwerk/UNIverse;->generalData:Lorg/json/JSONObject;

    .line 110
    .local v7, "json":Lorg/json/JSONObject;
    const-string v10, "mensa_sort"

    invoke-virtual {v7, v10}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 111
    .local v4, "canteens":Lorg/json/JSONArray;
    const-string v10, "mensa"

    invoke-virtual {v7, v10}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 112
    .local v0, "allDetails":Lorg/json/JSONObject;
    const-string v10, "mensen"

    invoke-virtual {p0, v10}, Lcom/studentenwerk/UNIverse;->getSettingArr(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v8

    .line 115
    .local v8, "mensaBlacklist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v6, 0x0

    .local v6, "index":I
    :goto_0
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v10

    if-lt v6, v10, :cond_1

    .line 132
    .end local v0    # "allDetails":Lorg/json/JSONObject;
    .end local v4    # "canteens":Lorg/json/JSONArray;
    .end local v6    # "index":I
    .end local v7    # "json":Lorg/json/JSONObject;
    .end local v8    # "mensaBlacklist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_1
    return-object v9

    .line 117
    .restart local v0    # "allDetails":Lorg/json/JSONObject;
    .restart local v4    # "canteens":Lorg/json/JSONArray;
    .restart local v6    # "index":I
    .restart local v7    # "json":Lorg/json/JSONObject;
    .restart local v8    # "mensaBlacklist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_1
    invoke-virtual {v4, v6}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 118
    .local v3, "canteenShortName":Ljava/lang/String;
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 119
    .local v1, "canteenDetails":Lorg/json/JSONObject;
    const-string v10, "name"

    invoke-virtual {v1, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 122
    .local v2, "canteenFullName":Ljava/lang/String;
    if-eqz p1, :cond_2

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-nez v10, :cond_4

    :cond_2
    invoke-virtual {v9, v3, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    :cond_3
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 123
    :cond_4
    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 124
    invoke-virtual {v9, v3, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 127
    .end local v0    # "allDetails":Lorg/json/JSONObject;
    .end local v1    # "canteenDetails":Lorg/json/JSONObject;
    .end local v2    # "canteenFullName":Ljava/lang/String;
    .end local v3    # "canteenShortName":Ljava/lang/String;
    .end local v4    # "canteens":Lorg/json/JSONArray;
    .end local v6    # "index":I
    .end local v7    # "json":Lorg/json/JSONObject;
    .end local v8    # "mensaBlacklist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catch_0
    move-exception v5

    .line 128
    .local v5, "e":Lorg/json/JSONException;
    const-string v10, "1"

    const-string v11, "ERROR"

    invoke-virtual {v9, v10, v11}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method public getSettingArr(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 7
    .param p1, "prefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 86
    const-string v4, "settings"

    invoke-virtual {p0, v4, v6}, Lcom/studentenwerk/UNIverse;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 87
    .local v2, "sp":Landroid/content/SharedPreferences;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 89
    .local v3, "tmpBlackList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "count_"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 90
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, v0, :cond_0

    .line 93
    return-object v3

    .line 91
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 90
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public loadData(I)V
    .locals 1
    .param p1, "type"    # I

    .prologue
    const/4 v0, 0x0

    .line 220
    invoke-virtual {p0, p1, v0, v0}, Lcom/studentenwerk/UNIverse;->loadData(ILjava/lang/String;Ljava/lang/String;)V

    .line 221
    return-void
.end method

.method public loadData(ILjava/lang/String;Ljava/lang/String;)V
    .locals 23
    .param p1, "type"    # I
    .param p2, "urlAdd"    # Ljava/lang/String;
    .param p3, "cacheAdd"    # Ljava/lang/String;

    .prologue
    .line 248
    const/4 v4, 0x0

    .line 251
    .local v4, "cacheReload":Z
    sget-object v21, Lcom/studentenwerk/UNIverse;->cacheFiles:[Ljava/lang/String;

    aget-object v3, v21, p1

    .line 252
    .local v3, "cacheFile":Ljava/lang/String;
    if-eqz p3, :cond_0

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aput-object p3, v21, v22

    move-object/from16 v0, v21

    invoke-static {v3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 253
    :cond_0
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/studentenwerk/UNIverse;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v9

    .line 256
    .local v9, "file":Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v21

    if-nez v21, :cond_7

    .line 257
    const/4 v4, 0x1

    .line 277
    :goto_0
    :try_start_0
    invoke-virtual/range {p0 .. p1}, Lcom/studentenwerk/UNIverse;->getData(I)Lorg/json/JSONObject;

    move-result-object v21

    const-string v22, "date"

    invoke-virtual/range {v21 .. v22}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v18

    .line 278
    .local v18, "unixTime":J
    const-wide/16 v21, 0x3e8

    mul-long v16, v18, v21

    .line 280
    .local v16, "timestamp":J
    new-instance v2, Ljava/util/Date;

    move-wide/from16 v0, v16

    invoke-direct {v2, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 281
    .local v2, "cacheDate":Ljava/util/Date;
    new-instance v7, Ljava/util/Date;

    invoke-direct {v7}, Ljava/util/Date;-><init>()V

    .line 283
    .local v7, "currentDate":Ljava/util/Date;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    .line 284
    .local v5, "calendar":Ljava/util/Calendar;
    invoke-virtual {v5, v2}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 286
    if-eqz p1, :cond_1

    const/16 v21, 0x2

    move/from16 v0, p1

    move/from16 v1, v21

    if-ne v0, v1, :cond_2

    :cond_1
    const/16 v21, 0x6

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v5, v0, v1}, Ljava/util/Calendar;->add(II)V

    .line 287
    :cond_2
    const/16 v21, 0x1

    move/from16 v0, p1

    move/from16 v1, v21

    if-ne v0, v1, :cond_3

    const/16 v21, 0xc

    const/16 v22, 0x5

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v5, v0, v1}, Ljava/util/Calendar;->add(II)V

    .line 289
    :cond_3
    invoke-virtual {v5}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v15

    .line 291
    .local v15, "newCacheDate":Ljava/util/Date;
    invoke-virtual {v15, v7}, Ljava/util/Date;->before(Ljava/util/Date;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v21

    if-eqz v21, :cond_4

    .line 292
    const/4 v4, 0x1

    .line 305
    .end local v2    # "cacheDate":Ljava/util/Date;
    .end local v5    # "calendar":Ljava/util/Calendar;
    .end local v7    # "currentDate":Ljava/util/Date;
    .end local v15    # "newCacheDate":Ljava/util/Date;
    .end local v16    # "timestamp":J
    .end local v18    # "unixTime":J
    :cond_4
    :goto_1
    if-eqz v4, :cond_6

    .line 307
    new-instance v21, Ljava/lang/StringBuilder;

    const-string v22, "https://www.studentenwerk-karlsruhe.de/de/"

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v22, Lcom/studentenwerk/UNIverse;->jsonUrls:[Ljava/lang/String;

    aget-object v22, v22, p1

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 309
    .local v20, "url":Ljava/lang/String;
    if-eqz p2, :cond_5

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v21

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 312
    :cond_5
    const/16 v21, 0x3

    move/from16 v0, p1

    move/from16 v1, v21

    if-ne v0, v1, :cond_8

    .line 314
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/studentenwerk/UNIverse;->getJsonArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v13

    .line 317
    .local v13, "jsonArray":Lorg/json/JSONArray;
    if-eqz v13, :cond_6

    .line 318
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual {v0, v1, v13}, Lcom/studentenwerk/UNIverse;->setDataArray(ILorg/json/JSONArray;)V

    .line 319
    invoke-virtual {v13}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v3, v1}, Lcom/studentenwerk/UNIverse;->createCache(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    .end local v13    # "jsonArray":Lorg/json/JSONArray;
    .end local v20    # "url":Ljava/lang/String;
    :cond_6
    :goto_2
    return-void

    .line 262
    :cond_7
    :try_start_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/studentenwerk/UNIverse;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v10

    .line 263
    .local v10, "fis":Ljava/io/FileInputStream;
    invoke-static {v10}, Lcom/studentenwerk/UNIverse;->convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v6

    .line 264
    .local v6, "content":Ljava/lang/String;
    const/4 v11, 0x0

    .line 266
    .local v11, "json":Lorg/json/JSONObject;
    :try_start_2
    new-instance v12, Lorg/json/JSONObject;

    invoke-direct {v12, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    .end local v11    # "json":Lorg/json/JSONObject;
    .local v12, "json":Lorg/json/JSONObject;
    move-object v11, v12

    .line 269
    .end local v12    # "json":Lorg/json/JSONObject;
    .restart local v11    # "json":Lorg/json/JSONObject;
    :goto_3
    :try_start_3
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual {v0, v1, v11}, Lcom/studentenwerk/UNIverse;->setDataObject(ILorg/json/JSONObject;)V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    .line 270
    .end local v6    # "content":Ljava/lang/String;
    .end local v10    # "fis":Ljava/io/FileInputStream;
    .end local v11    # "json":Lorg/json/JSONObject;
    :catch_0
    move-exception v8

    .line 271
    .local v8, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v8}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto/16 :goto_0

    .line 297
    .end local v8    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v8

    .line 298
    .local v8, "e":Ljava/lang/Exception;
    const/4 v4, 0x1

    goto :goto_1

    .line 325
    .end local v8    # "e":Ljava/lang/Exception;
    .restart local v20    # "url":Ljava/lang/String;
    :cond_8
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/studentenwerk/UNIverse;->getJsonObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v14

    .line 328
    .local v14, "jsonObject":Lorg/json/JSONObject;
    if-eqz v14, :cond_6

    .line 329
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual {v0, v1, v14}, Lcom/studentenwerk/UNIverse;->setDataObject(ILorg/json/JSONObject;)V

    .line 330
    invoke-virtual {v14}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v3, v1}, Lcom/studentenwerk/UNIverse;->createCache(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 267
    .end local v14    # "jsonObject":Lorg/json/JSONObject;
    .end local v20    # "url":Ljava/lang/String;
    .restart local v6    # "content":Ljava/lang/String;
    .restart local v10    # "fis":Ljava/io/FileInputStream;
    .restart local v11    # "json":Lorg/json/JSONObject;
    :catch_2
    move-exception v21

    goto :goto_3
.end method

.method public setChosenDate(Ljava/util/Calendar;)V
    .locals 0
    .param p1, "curDate"    # Ljava/util/Calendar;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/studentenwerk/UNIverse;->chosenDate:Ljava/util/Calendar;

    .line 72
    return-void
.end method

.method public setDataArray(ILorg/json/JSONArray;)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "json"    # Lorg/json/JSONArray;

    .prologue
    .line 210
    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    iput-object p2, p0, Lcom/studentenwerk/UNIverse;->newsDataOrder:Lorg/json/JSONArray;

    .line 211
    :cond_0
    return-void
.end method

.method public setDataObject(ILorg/json/JSONObject;)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "json"    # Lorg/json/JSONObject;

    .prologue
    .line 203
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iput-object p2, p0, Lcom/studentenwerk/UNIverse;->mealData:Lorg/json/JSONObject;

    .line 206
    :goto_0
    return-void

    .line 204
    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    iput-object p2, p0, Lcom/studentenwerk/UNIverse;->newsData:Lorg/json/JSONObject;

    goto :goto_0

    .line 205
    :cond_1
    iput-object p2, p0, Lcom/studentenwerk/UNIverse;->generalData:Lorg/json/JSONObject;

    goto :goto_0
.end method
