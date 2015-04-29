.class public Lcom/studentenwerk/classes/SettingsAdapter;
.super Landroid/widget/SimpleExpandableListAdapter;
.source "SettingsAdapter.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/SimpleExpandableListAdapter;",
        "Landroid/widget/AdapterView$OnItemSelectedListener;"
    }
.end annotation


# instance fields
.field private appObj:Lcom/studentenwerk/UNIverse;

.field private cont:Landroid/content/Context;

.field private priceType:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[ILjava/util/List;I[Ljava/lang/String;[I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "groupLayout"    # I
    .param p4, "groupFrom"    # [Ljava/lang/String;
    .param p5, "groupTo"    # [I
    .param p7, "childLayout"    # I
    .param p8, "childFrom"    # [Ljava/lang/String;
    .param p9, "childTo"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<+",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;>;I[",
            "Ljava/lang/String;",
            "[I",
            "Ljava/util/List",
            "<+",
            "Ljava/util/List",
            "<+",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;>;>;I[",
            "Ljava/lang/String;",
            "[I)V"
        }
    .end annotation

    .prologue
    .line 43
    .local p2, "groupData":Ljava/util/List;, "Ljava/util/List<+Ljava/util/Map<Ljava/lang/String;*>;>;"
    .local p6, "childData":Ljava/util/List;, "Ljava/util/List<+Ljava/util/List<+Ljava/util/Map<Ljava/lang/String;*>;>;>;"
    invoke-direct/range {p0 .. p9}, Landroid/widget/SimpleExpandableListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[ILjava/util/List;I[Ljava/lang/String;[I)V

    .line 45
    iput-object p1, p0, Lcom/studentenwerk/classes/SettingsAdapter;->cont:Landroid/content/Context;

    .line 46
    return-void
.end method


# virtual methods
.method public getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 14
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I
    .param p3, "isLastChild"    # Z
    .param p4, "convertView"    # Landroid/view/View;
    .param p5, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 53
    invoke-super/range {p0 .. p5}, Landroid/widget/SimpleExpandableListAdapter;->getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v10

    .line 54
    .local v10, "v":Landroid/view/View;
    const v11, 0x7f090001

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    .line 55
    .local v2, "cb":Landroid/widget/CheckBox;
    const v11, 0x7f090002

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Spinner;

    .line 56
    .local v7, "sp":Landroid/widget/Spinner;
    const/high16 v11, 0x7f090000

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 57
    .local v9, "tv":Landroid/widget/TextView;
    const v11, 0x7f090003

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    .line 59
    .local v6, "loginButton":Landroid/widget/Button;
    invoke-virtual {v6}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v11

    const/16 v12, -0x100

    sget-object v13, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v11, v12, v13}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 62
    invoke-virtual/range {p0 .. p2}, Lcom/studentenwerk/classes/SettingsAdapter;->getChild(II)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/HashMap;

    .line 65
    .local v5, "key":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget v11, p0, Lcom/studentenwerk/classes/SettingsAdapter;->priceType:I

    add-int/lit8 v11, v11, -0x1

    invoke-virtual {v7, v11}, Landroid/widget/Spinner;->setSelection(I)V

    .line 67
    const/4 v11, 0x3

    if-ne p1, v11, :cond_1

    .line 68
    const/16 v11, 0x8

    invoke-virtual {v2, v11}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 69
    const/16 v11, 0x8

    invoke-virtual {v7, v11}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 70
    const/16 v11, 0x8

    invoke-virtual {v9, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 71
    const/4 v11, 0x0

    invoke-virtual {v6, v11}, Landroid/widget/Button;->setVisibility(I)V

    .line 106
    :cond_0
    :goto_0
    return-object v10

    .line 73
    :cond_1
    const/4 v11, 0x2

    if-ne p1, v11, :cond_2

    .line 75
    iget-object v11, p0, Lcom/studentenwerk/classes/SettingsAdapter;->cont:Landroid/content/Context;

    const/high16 v12, 0x7f060000

    const v13, 0x7f03000e

    invoke-static {v11, v12, v13}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v0

    .line 76
    .local v0, "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    const v11, 0x7f03000d

    invoke-virtual {v0, v11}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 77
    invoke-virtual {v7, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 78
    invoke-virtual {v7, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 79
    iget-object v11, p0, Lcom/studentenwerk/classes/SettingsAdapter;->cont:Landroid/content/Context;

    const-string v12, "settings"

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v8

    .line 80
    .local v8, "spp":Landroid/content/SharedPreferences;
    const-string v11, "defaultPrice"

    const-string v12, "1"

    invoke-interface {v8, v11, v12}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 81
    .local v4, "choice":Ljava/lang/String;
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 82
    .local v3, "cho":I
    add-int/lit8 v11, v3, -0x1

    invoke-virtual {v7, v11}, Landroid/widget/Spinner;->setSelection(I)V

    .line 83
    const/16 v11, 0x8

    invoke-virtual {v2, v11}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 84
    const/4 v11, 0x0

    invoke-virtual {v7, v11}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 85
    const/16 v11, 0x8

    invoke-virtual {v9, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 86
    const/16 v11, 0x8

    invoke-virtual {v6, v11}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 88
    .end local v0    # "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    .end local v3    # "cho":I
    .end local v4    # "choice":Ljava/lang/String;
    .end local v8    # "spp":Landroid/content/SharedPreferences;
    :cond_2
    const/4 v11, 0x1

    if-ne p1, v11, :cond_3

    .line 89
    iget-object v11, p0, Lcom/studentenwerk/classes/SettingsAdapter;->appObj:Lcom/studentenwerk/UNIverse;

    const-string v12, "blacklists"

    invoke-virtual {v11, v12}, Lcom/studentenwerk/UNIverse;->getSettingArr(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 90
    .local v1, "bl":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v11, "key"

    invoke-virtual {v5, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v11

    invoke-virtual {v2, v11}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 91
    const/4 v11, 0x0

    invoke-virtual {v2, v11}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 92
    const/16 v11, 0x8

    invoke-virtual {v7, v11}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 93
    const/4 v11, 0x0

    invoke-virtual {v9, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 94
    const/16 v11, 0x8

    invoke-virtual {v6, v11}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 97
    .end local v1    # "bl":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_3
    if-nez p1, :cond_0

    .line 98
    iget-object v11, p0, Lcom/studentenwerk/classes/SettingsAdapter;->appObj:Lcom/studentenwerk/UNIverse;

    const-string v12, "mensen"

    invoke-virtual {v11, v12}, Lcom/studentenwerk/UNIverse;->getSettingArr(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 99
    .restart local v1    # "bl":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v11, "key"

    invoke-virtual {v5, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v11

    invoke-virtual {v2, v11}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 100
    const/4 v11, 0x0

    invoke-virtual {v2, v11}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 101
    const/16 v11, 0x8

    invoke-virtual {v7, v11}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 102
    const/4 v11, 0x0

    invoke-virtual {v9, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 103
    const/16 v11, 0x8

    invoke-virtual {v6, v11}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
    .param p2, "view"    # Landroid/view/View;
    .param p3, "pos"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 111
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    add-int/lit8 p3, p3, 0x1

    .line 113
    iget-object v2, p0, Lcom/studentenwerk/classes/SettingsAdapter;->cont:Landroid/content/Context;

    const-string v3, "settings"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 114
    .local v0, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 115
    .local v1, "spe":Landroid/content/SharedPreferences$Editor;
    const-string v2, "defaultPrice"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 116
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 117
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/studentenwerk/classes/SettingsAdapter;->setPriceType(Ljava/lang/String;)V

    .line 118
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 124
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method

.method public setApp(Lcom/studentenwerk/UNIverse;)V
    .locals 0
    .param p1, "ap"    # Lcom/studentenwerk/UNIverse;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/studentenwerk/classes/SettingsAdapter;->appObj:Lcom/studentenwerk/UNIverse;

    .line 50
    return-void
.end method

.method public setPriceType(Ljava/lang/String;)V
    .locals 1
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    .line 121
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/studentenwerk/classes/SettingsAdapter;->priceType:I

    .line 122
    return-void
.end method
