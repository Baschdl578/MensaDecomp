.class public Lcom/studentenwerk/classes/NewsAdapter;
.super Landroid/widget/BaseAdapter;
.source "NewsAdapter.java"


# instance fields
.field private final headers:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private inflater:Landroid/view/LayoutInflater;

.field private final sections:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "[",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 20
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/studentenwerk/classes/NewsAdapter;->sections:Ljava/util/Map;

    .line 22
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/studentenwerk/classes/NewsAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 25
    new-instance v0, Landroid/widget/ArrayAdapter;

    .line 26
    const v1, 0x7f030006

    invoke-direct {v0, p1, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 25
    iput-object v0, p0, Lcom/studentenwerk/classes/NewsAdapter;->headers:Landroid/widget/ArrayAdapter;

    .line 27
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/studentenwerk/classes/NewsAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 28
    return-void
.end method


# virtual methods
.method public addSection(JLjava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "section"    # J
    .param p3, "title"    # Ljava/lang/String;
    .param p4, "content"    # Ljava/lang/String;

    .prologue
    .line 37
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v5, "dd.MM.yyyy"

    invoke-direct {v1, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 39
    .local v1, "datef":Ljava/text/SimpleDateFormat;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 40
    .local v0, "actDate":Ljava/util/Calendar;
    const-wide/16 v5, 0x3e8

    mul-long/2addr v5, p1

    invoke-virtual {v0, v5, v6}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 42
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 44
    .local v2, "sect":Ljava/lang/String;
    iget-object v5, p0, Lcom/studentenwerk/classes/NewsAdapter;->headers:Landroid/widget/ArrayAdapter;

    invoke-virtual {v5, v2}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 46
    const/4 v5, 0x1

    new-array v3, v5, [Landroid/view/View;

    .line 48
    .local v3, "tmpViews":[Landroid/view/View;
    iget-object v5, p0, Lcom/studentenwerk/classes/NewsAdapter;->inflater:Landroid/view/LayoutInflater;

    const v6, 0x7f03000b

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 50
    .local v4, "v":Landroid/view/View;
    const v5, 0x7f09002c

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-virtual {v5, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 51
    const v5, 0x7f09002d

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-virtual {v5, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 53
    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 54
    iget-object v5, p0, Lcom/studentenwerk/classes/NewsAdapter;->sections:Ljava/util/Map;

    invoke-interface {v5, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    return-void
.end method

.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 96
    const/4 v0, 0x0

    return v0
.end method

.method public areAllItemsSelectable()Z
    .locals 1

    .prologue
    .line 91
    const/4 v0, 0x0

    return v0
.end method

.method public clearData()V
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/studentenwerk/classes/NewsAdapter;->headers:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->clear()V

    .line 32
    iget-object v0, p0, Lcom/studentenwerk/classes/NewsAdapter;->sections:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 33
    return-void
.end method

.method public getCount()I
    .locals 4

    .prologue
    .line 74
    const/4 v1, 0x0

    .line 75
    .local v1, "total":I
    iget-object v2, p0, Lcom/studentenwerk/classes/NewsAdapter;->sections:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 77
    return v1

    .line 75
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/view/View;

    .line 76
    .local v0, "adapter":[Landroid/view/View;
    array-length v3, v0

    add-int/lit8 v3, v3, 0x1

    add-int/2addr v1, v3

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 5
    .param p1, "position"    # I

    .prologue
    .line 59
    iget-object v3, p0, Lcom/studentenwerk/classes/NewsAdapter;->sections:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 70
    const/4 v1, 0x0

    :cond_0
    :goto_1
    return-object v1

    .line 59
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 60
    .local v1, "section":Ljava/lang/Object;
    iget-object v4, p0, Lcom/studentenwerk/classes/NewsAdapter;->sections:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/view/View;

    .line 61
    .local v0, "adapter":[Landroid/view/View;
    array-length v4, v0

    add-int/lit8 v2, v4, 0x1

    .line 63
    .local v2, "size":I
    if-eqz p1, :cond_0

    .line 65
    if-ge p1, v2, :cond_2

    .line 66
    iget-object v3, p0, Lcom/studentenwerk/classes/NewsAdapter;->sections:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/view/View;

    add-int/lit8 v4, p1, -0x1

    aget-object v1, v3, v4

    goto :goto_1

    .line 68
    :cond_2
    sub-int/2addr p1, v2

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 124
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 87
    const/4 v0, -0x1

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 105
    const/4 v2, 0x0

    .line 106
    .local v2, "sectionnum":I
    iget-object v4, p0, Lcom/studentenwerk/classes/NewsAdapter;->sections:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_0

    .line 120
    const/4 v4, 0x0

    :goto_1
    return-object v4

    .line 106
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 107
    .local v1, "section":Ljava/lang/Object;
    iget-object v5, p0, Lcom/studentenwerk/classes/NewsAdapter;->sections:Ljava/util/Map;

    invoke-interface {v5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/view/View;

    .line 108
    .local v0, "adapter":[Landroid/view/View;
    array-length v5, v0

    add-int/lit8 v3, v5, 0x1

    .line 110
    .local v3, "size":I
    if-nez p1, :cond_1

    .line 111
    iget-object v4, p0, Lcom/studentenwerk/classes/NewsAdapter;->headers:Landroid/widget/ArrayAdapter;

    invoke-virtual {v4, v2, p2, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    goto :goto_1

    .line 113
    :cond_1
    if-ge p1, v3, :cond_2

    .line 114
    iget-object v4, p0, Lcom/studentenwerk/classes/NewsAdapter;->sections:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/view/View;

    add-int/lit8 v5, p1, -0x1

    aget-object v4, v4, v5

    goto :goto_1

    .line 117
    :cond_2
    sub-int/2addr p1, v3

    .line 118
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 82
    const/4 v0, 0x2

    return v0
.end method

.method public isEnabled(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 100
    const/4 v0, 0x0

    return v0
.end method
