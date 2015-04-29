.class public Lcom/studentenwerk/activities/MensaList;
.super Landroid/app/ListActivity;
.source "MensaList.java"


# static fields
.field static final MEAL_REQUEST:I = 0x1


# instance fields
.field orderedCanteenList:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    return-void
.end method

.method private openMensa(I)V
    .locals 5
    .param p1, "pos"    # I

    .prologue
    const/4 v4, 0x1

    .line 75
    iget-object v2, p0, Lcom/studentenwerk/activities/MensaList;->orderedCanteenList:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v2

    aget-object v0, v2, p1

    check-cast v0, Ljava/lang/String;

    .line 76
    .local v0, "lastKey":Ljava/lang/String;
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/studentenwerk/activities/MensaMealList;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 79
    .local v1, "nextIntent":Landroid/content/Intent;
    const-string v2, "actMensa"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 80
    const-string v2, "mensaList"

    iget-object v3, p0, Lcom/studentenwerk/activities/MensaList;->orderedCanteenList:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 81
    invoke-virtual {p0, v1, v4}, Lcom/studentenwerk/activities/MensaList;->startActivityForResult(Landroid/content/Intent;I)V

    .line 83
    iget-object v2, p0, Lcom/studentenwerk/activities/MensaList;->orderedCanteenList:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->size()I

    move-result v2

    if-ne v2, v4, :cond_0

    invoke-virtual {p0}, Lcom/studentenwerk/activities/MensaList;->finish()V

    .line 84
    :cond_0
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v1, 0x1

    .line 106
    if-ne p1, v1, :cond_0

    .line 107
    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    .line 108
    const-string v0, "Daten konnten nicht geladen werden!"

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 111
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const v9, -0x777778

    const/4 v8, 0x1

    .line 37
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 38
    const v5, 0x7f030003

    invoke-virtual {p0, v5}, Lcom/studentenwerk/activities/MensaList;->setContentView(I)V

    .line 41
    invoke-virtual {p0}, Lcom/studentenwerk/activities/MensaList;->getListView()Landroid/widget/ListView;

    move-result-object v1

    .line 42
    .local v1, "listView":Landroid/widget/ListView;
    invoke-virtual {v1, v9}, Landroid/widget/ListView;->setBackgroundColor(I)V

    .line 45
    invoke-virtual {p0}, Lcom/studentenwerk/activities/MensaList;->getApplication()Landroid/app/Application;

    move-result-object v5

    check-cast v5, Lcom/studentenwerk/UNIverse;

    invoke-virtual {v5, v8}, Lcom/studentenwerk/UNIverse;->getOrderedCanteenList(Z)Ljava/util/LinkedHashMap;

    move-result-object v5

    iput-object v5, p0, Lcom/studentenwerk/activities/MensaList;->orderedCanteenList:Ljava/util/LinkedHashMap;

    .line 48
    iget-object v5, p0, Lcom/studentenwerk/activities/MensaList;->orderedCanteenList:Ljava/util/LinkedHashMap;

    invoke-virtual {v5}, Ljava/util/LinkedHashMap;->size()I

    move-result v5

    if-ne v5, v8, :cond_0

    const/4 v5, 0x0

    invoke-direct {p0, v5}, Lcom/studentenwerk/activities/MensaList;->openMensa(I)V

    .line 51
    :cond_0
    iget-object v5, p0, Lcom/studentenwerk/activities/MensaList;->orderedCanteenList:Ljava/util/LinkedHashMap;

    invoke-virtual {v5}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v3

    .line 52
    .local v3, "values":[Ljava/lang/Object;
    new-instance v0, Landroid/widget/ArrayAdapter;

    .line 54
    const v6, 0x7f03000f

    .line 55
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    array-length v7, v3

    new-array v7, v7, [Ljava/lang/String;

    invoke-interface {v5, v7}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    .line 52
    invoke-direct {v0, p0, v6, v5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 57
    .local v0, "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    invoke-virtual {p0, v0}, Lcom/studentenwerk/activities/MensaList;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 60
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0xb

    if-lt v5, v6, :cond_1

    .line 61
    invoke-virtual {p0}, Lcom/studentenwerk/activities/MensaList;->getActionBar()Landroid/app/ActionBar;

    move-result-object v5

    new-instance v6, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v6, v9}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v5, v6}, Landroid/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 62
    invoke-virtual {p0}, Lcom/studentenwerk/activities/MensaList;->getActionBar()Landroid/app/ActionBar;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 63
    invoke-virtual {p0}, Lcom/studentenwerk/activities/MensaList;->getActionBar()Landroid/app/ActionBar;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 65
    :cond_1
    invoke-virtual {p0}, Lcom/studentenwerk/activities/MensaList;->getApplication()Landroid/app/Application;

    move-result-object v2

    check-cast v2, Lcom/studentenwerk/UNIverse;

    .line 66
    .local v2, "universe":Lcom/studentenwerk/UNIverse;
    invoke-virtual {v2}, Lcom/studentenwerk/UNIverse;->checkNetwork()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 67
    const v5, 0x7f090005

    invoke-virtual {p0, v5}, Lcom/studentenwerk/activities/MensaList;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/webkit/WebView;

    .line 68
    .local v4, "webview":Landroid/webkit/WebView;
    invoke-virtual {v4}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 69
    const-string v5, "http://www.studentenwerk-karlsruhe.de/mobile/ads/"

    invoke-virtual {v4, v5}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 71
    .end local v4    # "webview":Landroid/webkit/WebView;
    :cond_2
    return-void
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 0
    .param p1, "l"    # Landroid/widget/ListView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .prologue
    .line 89
    invoke-direct {p0, p3}, Lcom/studentenwerk/activities/MensaList;->openMensa(I)V

    .line 90
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "menuItem"    # Landroid/view/MenuItem;

    .prologue
    .line 96
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 101
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 98
    :pswitch_0
    invoke-virtual {p0}, Lcom/studentenwerk/activities/MensaList;->finish()V

    .line 99
    const/4 v0, 0x1

    goto :goto_0

    .line 96
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method
