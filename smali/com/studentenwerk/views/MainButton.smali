.class public Lcom/studentenwerk/views/MainButton;
.super Landroid/widget/Button;
.source "MainButton.java"


# instance fields
.field private subText:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 16
    const-string v0, ""

    iput-object v0, p0, Lcom/studentenwerk/views/MainButton;->subText:Ljava/lang/String;

    .line 25
    invoke-direct {p0, p2}, Lcom/studentenwerk/views/MainButton;->initMyButton(Landroid/util/AttributeSet;)V

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 19
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 16
    const-string v0, ""

    iput-object v0, p0, Lcom/studentenwerk/views/MainButton;->subText:Ljava/lang/String;

    .line 20
    invoke-direct {p0, p2}, Lcom/studentenwerk/views/MainButton;->initMyButton(Landroid/util/AttributeSet;)V

    .line 21
    return-void
.end method

.method private initMyButton(Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 29
    invoke-virtual {p0}, Lcom/studentenwerk/views/MainButton;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/studentenwerk/R$styleable;->mainbutton:[I

    invoke-virtual {v1, p1, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 30
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/studentenwerk/views/MainButton;->subText:Ljava/lang/String;

    .line 31
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 32
    return-void
.end method


# virtual methods
.method public getSubText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/studentenwerk/views/MainButton;->subText:Ljava/lang/String;

    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/16 v4, 0xb

    const/high16 v3, 0x41a00000    # 20.0f

    .line 39
    invoke-virtual {p0}, Lcom/studentenwerk/views/MainButton;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    .line 43
    .local v0, "t":Landroid/text/TextPaint;
    const/high16 v1, 0x41b00000    # 22.0f

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 44
    sget-object v1, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 46
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v4, :cond_0

    .line 47
    invoke-virtual {p0}, Lcom/studentenwerk/views/MainButton;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v2, 0x7f070000

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 48
    invoke-virtual {p0}, Lcom/studentenwerk/views/MainButton;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/high16 v2, 0x420c0000    # 35.0f

    invoke-virtual {p1, v1, v3, v2, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 53
    :goto_0
    const/high16 v1, 0x41900000    # 18.0f

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 54
    sget-object v1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 56
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v4, :cond_1

    .line 57
    invoke-virtual {p0}, Lcom/studentenwerk/views/MainButton;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070001

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 58
    invoke-virtual {p0}, Lcom/studentenwerk/views/MainButton;->getSubText()Ljava/lang/String;

    move-result-object v1

    const/high16 v2, 0x425c0000    # 55.0f

    invoke-virtual {p1, v1, v3, v2, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 63
    :goto_1
    return-void

    .line 50
    :cond_0
    invoke-virtual {p0}, Lcom/studentenwerk/views/MainButton;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070002

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 51
    invoke-virtual {p0}, Lcom/studentenwerk/views/MainButton;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/high16 v2, 0x41f00000    # 30.0f

    invoke-virtual {p1, v1, v3, v2, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 60
    :cond_1
    invoke-virtual {p0}, Lcom/studentenwerk/views/MainButton;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070003

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 61
    invoke-virtual {p0}, Lcom/studentenwerk/views/MainButton;->getSubText()Ljava/lang/String;

    move-result-object v1

    const/high16 v2, 0x42480000    # 50.0f

    invoke-virtual {p1, v1, v3, v2, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_1
.end method

.method public setSubText(Ljava/lang/String;)V
    .locals 0
    .param p1, "t"    # Ljava/lang/String;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/studentenwerk/views/MainButton;->subText:Ljava/lang/String;

    .line 67
    return-void
.end method
