.class Lcom/android/systemui/statusbar/policy/PieController$3;
.super Landroid/content/BroadcastReceiver;
.source "PieController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/PieController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/PieController;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/PieController;)V
    .locals 0
    .parameter

    .prologue
    .line 244
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/PieController$3;->this$0:Lcom/android/systemui/statusbar/policy/PieController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 247
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 248
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 249
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/PieController$3;->this$0:Lcom/android/systemui/statusbar/policy/PieController;

    const-string v2, "level"

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    #setter for: Lcom/android/systemui/statusbar/policy/PieController;->mBatteryLevel:I
    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/policy/PieController;->access$1102(Lcom/android/systemui/statusbar/policy/PieController;I)I

    .line 250
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/PieController$3;->this$0:Lcom/android/systemui/statusbar/policy/PieController;

    const-string v2, "status"

    const/4 v3, 0x1

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    #setter for: Lcom/android/systemui/statusbar/policy/PieController;->mBatteryStatus:I
    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/policy/PieController;->access$1202(Lcom/android/systemui/statusbar/policy/PieController;I)I

    .line 258
    :cond_0
    :goto_0
    return-void

    .line 252
    :cond_1
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 254
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/PieController$3;->this$0:Lcom/android/systemui/statusbar/policy/PieController;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/PieController;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 255
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/PieController$3;->this$0:Lcom/android/systemui/statusbar/policy/PieController;

    #getter for: Lcom/android/systemui/statusbar/policy/PieController;->mPieContainer:Lcom/android/systemui/statusbar/pie/PieView;
    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/PieController;->access$200(Lcom/android/systemui/statusbar/policy/PieController;)Lcom/android/systemui/statusbar/pie/PieView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/pie/PieView;->exit()V

    goto :goto_0
.end method
