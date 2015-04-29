.class public Lcom/studentenwerk/views/MensaList;
.super Landroid/app/ListActivity;
.source "MensaList.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 15
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 16
    const/16 v2, 0xa

    new-array v1, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "Android"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "iPhone"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "WindowsMobile"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    .line 17
    const-string v3, "Blackberry"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "WebOS"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "Ubuntu"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "Windows7"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "Max OS X"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    .line 18
    const-string v3, "Linux"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "OS/2"

    aput-object v3, v1, v2

    .line 19
    .local v1, "values":[Ljava/lang/String;
    new-instance v0, Landroid/widget/ArrayAdapter;

    .line 20
    const v2, 0x7f03000f

    .line 19
    invoke-direct {v0, p0, v2, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 21
    .local v0, "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    invoke-virtual {p0, v0}, Lcom/studentenwerk/views/MensaList;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 22
    return-void
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 3
    .param p1, "l"    # Landroid/widget/ListView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .prologue
    .line 26
    invoke-virtual {p0}, Lcom/studentenwerk/views/MensaList;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    invoke-interface {v1, p3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 27
    .local v0, "item":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " selected"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 28
    return-void
.end method
