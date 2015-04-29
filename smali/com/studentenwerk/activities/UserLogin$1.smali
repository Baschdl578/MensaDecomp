.class Lcom/studentenwerk/activities/UserLogin$1;
.super Ljava/lang/Object;
.source "UserLogin.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/studentenwerk/activities/UserLogin;->showAlert(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/studentenwerk/activities/UserLogin;

.field private final synthetic val$alertDialog:Landroid/app/AlertDialog;


# direct methods
.method constructor <init>(Lcom/studentenwerk/activities/UserLogin;Landroid/app/AlertDialog;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/studentenwerk/activities/UserLogin$1;->this$0:Lcom/studentenwerk/activities/UserLogin;

    iput-object p2, p0, Lcom/studentenwerk/activities/UserLogin$1;->val$alertDialog:Landroid/app/AlertDialog;

    .line 356
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 358
    iget-object v0, p0, Lcom/studentenwerk/activities/UserLogin$1;->val$alertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 359
    return-void
.end method
