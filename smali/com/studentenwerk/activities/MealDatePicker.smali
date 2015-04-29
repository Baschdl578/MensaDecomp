.class public Lcom/studentenwerk/activities/MealDatePicker;
.super Landroid/app/ListActivity;
.source "MealDatePicker.java"


# instance fields
.field private dates:[J

.field private final df:Ljava/text/SimpleDateFormat;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 22
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "EEEE, d. MMMM"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/studentenwerk/activities/MealDatePicker;->df:Ljava/text/SimpleDateFormat;

    .line 19
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 12
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v11, 0x1

    .line 26
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 28
    invoke-virtual {p0}, Lcom/studentenwerk/activities/MealDatePicker;->getIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    const-string v7, "aviableDates"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v6

    iput-object v6, p0, Lcom/studentenwerk/activities/MealDatePicker;->dates:[J

    .line 29
    iget-object v6, p0, Lcom/studentenwerk/activities/MealDatePicker;->dates:[J

    array-length v6, v6

    new-array v5, v6, [Ljava/lang/String;

    .line 31
    .local v5, "values":[Ljava/lang/String;
    const/4 v1, 0x0

    .line 32
    .local v1, "c":I
    iget-object v7, p0, Lcom/studentenwerk/activities/MealDatePicker;->dates:[J

    array-length v8, v7

    const/4 v6, 0x0

    :goto_0
    if-lt v6, v8, :cond_1

    .line 38
    new-instance v0, Landroid/widget/ArrayAdapter;

    .line 40
    const v6, 0x7f03000f

    .line 38
    invoke-direct {v0, p0, v6, v5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 44
    .local v0, "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    invoke-virtual {p0, v0}, Lcom/studentenwerk/activities/MealDatePicker;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 46
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0xb

    if-lt v6, v7, :cond_0

    .line 47
    invoke-virtual {p0}, Lcom/studentenwerk/activities/MealDatePicker;->getActionBar()Landroid/app/ActionBar;

    move-result-object v6

    invoke-virtual {v6, v11}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 48
    invoke-virtual {p0}, Lcom/studentenwerk/activities/MealDatePicker;->getActionBar()Landroid/app/ActionBar;

    move-result-object v6

    invoke-virtual {v6, v11}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 49
    invoke-virtual {p0}, Lcom/studentenwerk/activities/MealDatePicker;->getActionBar()Landroid/app/ActionBar;

    move-result-object v6

    new-instance v7, Landroid/graphics/drawable/ColorDrawable;

    const v8, -0x777778

    invoke-direct {v7, v8}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v6, v7}, Landroid/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 52
    :cond_0
    return-void

    .line 32
    .end local v0    # "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    :cond_1
    aget-wide v3, v7, v6

    .line 33
    .local v3, "unixDate":J
    new-instance v2, Ljava/util/Date;

    const-wide/16 v9, 0x3e8

    mul-long/2addr v9, v3

    invoke-direct {v2, v9, v10}, Ljava/util/Date;-><init>(J)V

    .line 34
    .local v2, "da":Ljava/util/Date;
    iget-object v9, p0, Lcom/studentenwerk/activities/MealDatePicker;->df:Ljava/text/SimpleDateFormat;

    invoke-virtual {v9, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v5, v1

    .line 35
    add-int/lit8 v1, v1, 0x1

    .line 32
    add-int/lit8 v6, v6, 0x1

    goto :goto_0
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 2
    .param p1, "l"    # Landroid/widget/ListView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .prologue
    .line 67
    invoke-virtual {p0}, Lcom/studentenwerk/activities/MealDatePicker;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 69
    .local v0, "inte":Landroid/content/Intent;
    const-string v1, "dateKey"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 71
    const/4 v1, 0x2

    invoke-virtual {p0, v1, v0}, Lcom/studentenwerk/activities/MealDatePicker;->setResult(ILandroid/content/Intent;)V

    .line 72
    invoke-virtual {p0}, Lcom/studentenwerk/activities/MealDatePicker;->finish()V

    .line 74
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "menuItem"    # Landroid/view/MenuItem;

    .prologue
    .line 56
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 61
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 58
    :pswitch_0
    invoke-virtual {p0}, Lcom/studentenwerk/activities/MealDatePicker;->finish()V

    .line 59
    const/4 v0, 0x1

    goto :goto_0

    .line 56
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method
