.class Lcom/android/systemui/statusbar/policy/BatteryBar$1;
.super Landroid/content/BroadcastReceiver;
.source "BatteryBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/BatteryBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/BatteryBar;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/BatteryBar;)V
    .locals 0
    .parameter

    .prologue
    .line 168
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/BatteryBar$1;->this$0:Lcom/android/systemui/statusbar/policy/BatteryBar;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    const/16 v5, 0x64

    const/4 v1, 0x0

    .line 171
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 173
    .local v0, action:Ljava/lang/String;
    const-string v2, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 174
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/BatteryBar$1;->this$0:Lcom/android/systemui/statusbar/policy/BatteryBar;

    const-string v3, "level"

    invoke-virtual {p2, v3, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    #setter for: Lcom/android/systemui/statusbar/policy/BatteryBar;->mBatteryLevel:I
    invoke-static {v2, v3}, Lcom/android/systemui/statusbar/policy/BatteryBar;->access$202(Lcom/android/systemui/statusbar/policy/BatteryBar;I)I

    .line 175
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/BatteryBar$1;->this$0:Lcom/android/systemui/statusbar/policy/BatteryBar;

    const-string v3, "status"

    invoke-virtual {p2, v3, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    const/4 v1, 0x1

    :cond_0
    #setter for: Lcom/android/systemui/statusbar/policy/BatteryBar;->mBatteryCharging:Z
    invoke-static {v2, v1}, Lcom/android/systemui/statusbar/policy/BatteryBar;->access$302(Lcom/android/systemui/statusbar/policy/BatteryBar;Z)Z

    .line 176
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BatteryBar$1;->this$0:Lcom/android/systemui/statusbar/policy/BatteryBar;

    #getter for: Lcom/android/systemui/statusbar/policy/BatteryBar;->mBatteryCharging:Z
    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/BatteryBar;->access$300(Lcom/android/systemui/statusbar/policy/BatteryBar;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BatteryBar$1;->this$0:Lcom/android/systemui/statusbar/policy/BatteryBar;

    #getter for: Lcom/android/systemui/statusbar/policy/BatteryBar;->mBatteryLevel:I
    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/BatteryBar;->access$200(Lcom/android/systemui/statusbar/policy/BatteryBar;)I

    move-result v1

    if-ge v1, v5, :cond_2

    .line 177
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BatteryBar$1;->this$0:Lcom/android/systemui/statusbar/policy/BatteryBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/BatteryBar;->start()V

    .line 181
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BatteryBar$1;->this$0:Lcom/android/systemui/statusbar/policy/BatteryBar;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/BatteryBar$1;->this$0:Lcom/android/systemui/statusbar/policy/BatteryBar;

    #getter for: Lcom/android/systemui/statusbar/policy/BatteryBar;->mBatteryLevel:I
    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/BatteryBar;->access$200(Lcom/android/systemui/statusbar/policy/BatteryBar;)I

    move-result v2

    #calls: Lcom/android/systemui/statusbar/policy/BatteryBar;->setProgress(I)V
    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/policy/BatteryBar;->access$400(Lcom/android/systemui/statusbar/policy/BatteryBar;I)V

    .line 189
    :cond_1
    :goto_1
    return-void

    .line 179
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BatteryBar$1;->this$0:Lcom/android/systemui/statusbar/policy/BatteryBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/BatteryBar;->stop()V

    goto :goto_0

    .line 182
    :cond_3
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 183
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BatteryBar$1;->this$0:Lcom/android/systemui/statusbar/policy/BatteryBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/BatteryBar;->stop()V

    goto :goto_1

    .line 184
    :cond_4
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 185
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BatteryBar$1;->this$0:Lcom/android/systemui/statusbar/policy/BatteryBar;

    #getter for: Lcom/android/systemui/statusbar/policy/BatteryBar;->mBatteryCharging:Z
    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/BatteryBar;->access$300(Lcom/android/systemui/statusbar/policy/BatteryBar;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BatteryBar$1;->this$0:Lcom/android/systemui/statusbar/policy/BatteryBar;

    #getter for: Lcom/android/systemui/statusbar/policy/BatteryBar;->mBatteryLevel:I
    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/BatteryBar;->access$200(Lcom/android/systemui/statusbar/policy/BatteryBar;)I

    move-result v1

    if-ge v1, v5, :cond_1

    .line 186
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BatteryBar$1;->this$0:Lcom/android/systemui/statusbar/policy/BatteryBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/BatteryBar;->start()V

    goto :goto_1
.end method
