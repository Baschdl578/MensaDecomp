.class Lcom/studentenwerk/activities/MensaMealList$1;
.super Ljava/lang/Object;
.source "MensaMealList.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/studentenwerk/activities/MensaMealList;
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
    iput-object p1, p0, Lcom/studentenwerk/activities/MensaMealList$1;->this$0:Lcom/studentenwerk/activities/MensaMealList;

    .line 262
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 264
    iget-object v1, p0, Lcom/studentenwerk/activities/MensaMealList$1;->this$0:Lcom/studentenwerk/activities/MensaMealList;

    # getter for: Lcom/studentenwerk/activities/MensaMealList;->dialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/studentenwerk/activities/MensaMealList;->access$0(Lcom/studentenwerk/activities/MensaMealList;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 266
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 267
    .local v0, "actDate":Ljava/util/Calendar;
    iget-object v1, p0, Lcom/studentenwerk/activities/MensaMealList$1;->this$0:Lcom/studentenwerk/activities/MensaMealList;

    # getter for: Lcom/studentenwerk/activities/MensaMealList;->aviableDates:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/studentenwerk/activities/MensaMealList;->access$1(Lcom/studentenwerk/activities/MensaMealList;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/studentenwerk/activities/MensaMealList$1;->this$0:Lcom/studentenwerk/activities/MensaMealList;

    # getter for: Lcom/studentenwerk/activities/MensaMealList;->actDateKey:I
    invoke-static {v2}, Lcom/studentenwerk/activities/MensaMealList;->access$2(Lcom/studentenwerk/activities/MensaMealList;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    mul-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 269
    iget-object v1, p0, Lcom/studentenwerk/activities/MensaMealList$1;->this$0:Lcom/studentenwerk/activities/MensaMealList;

    const v2, 0x7f090010

    invoke-virtual {v1, v2}, Lcom/studentenwerk/activities/MensaMealList;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/studentenwerk/activities/MensaMealList$1;->this$0:Lcom/studentenwerk/activities/MensaMealList;

    # getter for: Lcom/studentenwerk/activities/MensaMealList;->df:Ljava/text/SimpleDateFormat;
    invoke-static {v2}, Lcom/studentenwerk/activities/MensaMealList;->access$3(Lcom/studentenwerk/activities/MensaMealList;)Ljava/text/SimpleDateFormat;

    move-result-object v2

    .line 270
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    .line 269
    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 272
    iget-object v1, p0, Lcom/studentenwerk/activities/MensaMealList$1;->this$0:Lcom/studentenwerk/activities/MensaMealList;

    const v2, 0x7f090013

    invoke-virtual {v1, v2}, Lcom/studentenwerk/activities/MensaMealList;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/studentenwerk/activities/MensaMealList$1;->this$0:Lcom/studentenwerk/activities/MensaMealList;

    # getter for: Lcom/studentenwerk/activities/MensaMealList;->formatedDate:Ljava/lang/String;
    invoke-static {v2}, Lcom/studentenwerk/activities/MensaMealList;->access$4(Lcom/studentenwerk/activities/MensaMealList;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 274
    iget-object v1, p0, Lcom/studentenwerk/activities/MensaMealList$1;->this$0:Lcom/studentenwerk/activities/MensaMealList;

    # getter for: Lcom/studentenwerk/activities/MensaMealList;->listAdapter:Lcom/studentenwerk/classes/GroupedListAdapter;
    invoke-static {v1}, Lcom/studentenwerk/activities/MensaMealList;->access$5(Lcom/studentenwerk/activities/MensaMealList;)Lcom/studentenwerk/classes/GroupedListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/studentenwerk/classes/GroupedListAdapter;->notifyDataSetChanged()V

    .line 275
    return-void
.end method
