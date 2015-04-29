.class Lcom/studentenwerk/activities/MensaMealList$2;
.super Ljava/lang/Object;
.source "MensaMealList.java"

# interfaces
.implements Landroid/app/ActionBar$OnNavigationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/studentenwerk/activities/MensaMealList;->onCreate(Landroid/os/Bundle;)V
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
    iput-object p1, p0, Lcom/studentenwerk/activities/MensaMealList$2;->this$0:Lcom/studentenwerk/activities/MensaMealList;

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNavigationItemSelected(IJ)Z
    .locals 3
    .param p1, "position"    # I
    .param p2, "itemId"    # J

    .prologue
    .line 126
    iget-object v1, p0, Lcom/studentenwerk/activities/MensaMealList$2;->this$0:Lcom/studentenwerk/activities/MensaMealList;

    # getter for: Lcom/studentenwerk/activities/MensaMealList;->mensenList:Ljava/util/LinkedHashMap;
    invoke-static {v1}, Lcom/studentenwerk/activities/MensaMealList;->access$6(Lcom/studentenwerk/activities/MensaMealList;)Ljava/util/LinkedHashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v0

    .line 127
    .local v0, "mensenKeys":[Ljava/lang/Object;
    iget-object v2, p0, Lcom/studentenwerk/activities/MensaMealList$2;->this$0:Lcom/studentenwerk/activities/MensaMealList;

    aget-object v1, v0, p1

    check-cast v1, Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/studentenwerk/activities/MensaMealList;->access$7(Lcom/studentenwerk/activities/MensaMealList;Ljava/lang/String;)V

    .line 129
    iget-object v1, p0, Lcom/studentenwerk/activities/MensaMealList$2;->this$0:Lcom/studentenwerk/activities/MensaMealList;

    const/4 v2, 0x0

    # invokes: Lcom/studentenwerk/activities/MensaMealList;->startThread(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/studentenwerk/activities/MensaMealList;->access$8(Lcom/studentenwerk/activities/MensaMealList;Ljava/lang/String;)V

    .line 131
    const/4 v1, 0x1

    return v1
.end method
