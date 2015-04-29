.class public final Lcom/studentenwerk/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/studentenwerk/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final mainbutton:[I

.field public static final mainbutton_subText:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 206
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    .line 207
    const/high16 v2, 0x7f010000

    aput v2, v0, v1

    .line 206
    sput-object v0, Lcom/studentenwerk/R$styleable;->mainbutton:[I

    .line 195
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
