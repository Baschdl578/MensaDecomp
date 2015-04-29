.class Lcom/studentenwerk/activities/MensaMealList$3;
.super Ljava/lang/Thread;
.source "MensaMealList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/studentenwerk/activities/MensaMealList;->startThread(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/studentenwerk/activities/MensaMealList;


# direct methods
.method constructor <init>(Lcom/studentenwerk/activities/MensaMealList;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/studentenwerk/activities/MensaMealList$3;->this$0:Lcom/studentenwerk/activities/MensaMealList;

    .line 148
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/studentenwerk/activities/MensaMealList$3;->this$0:Lcom/studentenwerk/activities/MensaMealList;

    # invokes: Lcom/studentenwerk/activities/MensaMealList;->loadData()V
    invoke-static {v0}, Lcom/studentenwerk/activities/MensaMealList;->access$9(Lcom/studentenwerk/activities/MensaMealList;)V

    .line 152
    return-void
.end method
