.class Lcom/android/systemui/statusbar/policy/CircleBattery$BatteryReceiver;
.super Landroid/content/BroadcastReceiver;
.source "CircleBattery.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/CircleBattery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BatteryReceiver"
.end annotation


# instance fields
.field private mIsRegistered:Z

.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/CircleBattery;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/policy/CircleBattery;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter "context"

    .prologue
    .line 131
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/CircleBattery$BatteryReceiver;->this$0:Lcom/android/systemui/statusbar/policy/CircleBattery;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 129
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/CircleBattery$BatteryReceiver;->mIsRegistered:Z

    .line 132
    return-void
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/policy/CircleBattery$BatteryReceiver;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 128
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/CircleBattery$BatteryReceiver;->updateRegistration()V

    return-void
.end method

.method private registerSelf()V
    .locals 3

    .prologue
    .line 156
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/CircleBattery$BatteryReceiver;->mIsRegistered:Z

    if-nez v1, :cond_0

    .line 157
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/CircleBattery$BatteryReceiver;->mIsRegistered:Z

    .line 159
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 160
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 161
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/CircleBattery$BatteryReceiver;->this$0:Lcom/android/systemui/statusbar/policy/CircleBattery;

    #getter for: Lcom/android/systemui/statusbar/policy/CircleBattery;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/CircleBattery;->access$200(Lcom/android/systemui/statusbar/policy/CircleBattery;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/CircleBattery$BatteryReceiver;->this$0:Lcom/android/systemui/statusbar/policy/CircleBattery;

    #getter for: Lcom/android/systemui/statusbar/policy/CircleBattery;->mBatteryReceiver:Lcom/android/systemui/statusbar/policy/CircleBattery$BatteryReceiver;
    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/CircleBattery;->access$400(Lcom/android/systemui/statusbar/policy/CircleBattery;)Lcom/android/systemui/statusbar/policy/CircleBattery$BatteryReceiver;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 163
    .end local v0           #filter:Landroid/content/IntentFilter;
    :cond_0
    return-void
.end method

.method private unregisterSelf()V
    .locals 1

    .prologue
    .line 166
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/CircleBattery$BatteryReceiver;->mIsRegistered:Z

    if-eqz v0, :cond_0

    .line 167
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/CircleBattery$BatteryReceiver;->mIsRegistered:Z

    .line 168
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/CircleBattery$BatteryReceiver;->this$0:Lcom/android/systemui/statusbar/policy/CircleBattery;

    #getter for: Lcom/android/systemui/statusbar/policy/CircleBattery;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/CircleBattery;->access$200(Lcom/android/systemui/statusbar/policy/CircleBattery;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 170
    :cond_0
    return-void
.end method

.method private updateRegistration()V
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/CircleBattery$BatteryReceiver;->this$0:Lcom/android/systemui/statusbar/policy/CircleBattery;

    #getter for: Lcom/android/systemui/statusbar/policy/CircleBattery;->mActivated:Z
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/CircleBattery;->access$000(Lcom/android/systemui/statusbar/policy/CircleBattery;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/CircleBattery$BatteryReceiver;->this$0:Lcom/android/systemui/statusbar/policy/CircleBattery;

    #getter for: Lcom/android/systemui/statusbar/policy/CircleBattery;->mAttached:Z
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/CircleBattery;->access$100(Lcom/android/systemui/statusbar/policy/CircleBattery;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 174
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/CircleBattery$BatteryReceiver;->registerSelf()V

    .line 178
    :goto_0
    return-void

    .line 176
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/CircleBattery$BatteryReceiver;->unregisterSelf()V

    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 136
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 137
    .local v0, action:Ljava/lang/String;
    const-string v3, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 138
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/CircleBattery$BatteryReceiver;->this$0:Lcom/android/systemui/statusbar/policy/CircleBattery;

    invoke-virtual {v3, p2}, Lcom/android/systemui/statusbar/policy/CircleBattery;->onBatteryStatusChange(Landroid/content/Intent;)V

    .line 140
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/CircleBattery$BatteryReceiver;->this$0:Lcom/android/systemui/statusbar/policy/CircleBattery;

    #getter for: Lcom/android/systemui/statusbar/policy/CircleBattery;->mActivated:Z
    invoke-static {v3}, Lcom/android/systemui/statusbar/policy/CircleBattery;->access$000(Lcom/android/systemui/statusbar/policy/CircleBattery;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/CircleBattery$BatteryReceiver;->this$0:Lcom/android/systemui/statusbar/policy/CircleBattery;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/policy/CircleBattery;->isBatteryPresent()Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v2, 0x0

    .line 141
    .local v2, visibility:I
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/CircleBattery$BatteryReceiver;->this$0:Lcom/android/systemui/statusbar/policy/CircleBattery;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/policy/CircleBattery;->getVisibility()I

    move-result v3

    if-eq v3, v2, :cond_0

    .line 142
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/CircleBattery$BatteryReceiver;->this$0:Lcom/android/systemui/statusbar/policy/CircleBattery;

    invoke-virtual {v3, v2}, Lcom/android/systemui/statusbar/policy/CircleBattery;->setVisibility(I)V

    .line 145
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/CircleBattery$BatteryReceiver;->this$0:Lcom/android/systemui/statusbar/policy/CircleBattery;

    #getter for: Lcom/android/systemui/statusbar/policy/CircleBattery;->mActivated:Z
    invoke-static {v3}, Lcom/android/systemui/statusbar/policy/CircleBattery;->access$000(Lcom/android/systemui/statusbar/policy/CircleBattery;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/CircleBattery$BatteryReceiver;->this$0:Lcom/android/systemui/statusbar/policy/CircleBattery;

    #getter for: Lcom/android/systemui/statusbar/policy/CircleBattery;->mAttached:Z
    invoke-static {v3}, Lcom/android/systemui/statusbar/policy/CircleBattery;->access$100(Lcom/android/systemui/statusbar/policy/CircleBattery;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 146
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/CircleBattery$BatteryReceiver;->this$0:Lcom/android/systemui/statusbar/policy/CircleBattery;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/policy/CircleBattery;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 147
    .local v1, l:Landroid/view/ViewGroup$LayoutParams;
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/CircleBattery$BatteryReceiver;->this$0:Lcom/android/systemui/statusbar/policy/CircleBattery;

    #getter for: Lcom/android/systemui/statusbar/policy/CircleBattery;->mCircleSize:I
    invoke-static {v3}, Lcom/android/systemui/statusbar/policy/CircleBattery;->access$600(Lcom/android/systemui/statusbar/policy/CircleBattery;)I

    move-result v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/CircleBattery$BatteryReceiver;->this$0:Lcom/android/systemui/statusbar/policy/CircleBattery;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/policy/CircleBattery;->getPaddingLeft()I

    move-result v4

    add-int/2addr v3, v4

    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 148
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/CircleBattery$BatteryReceiver;->this$0:Lcom/android/systemui/statusbar/policy/CircleBattery;

    invoke-virtual {v3, v1}, Lcom/android/systemui/statusbar/policy/CircleBattery;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 150
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/CircleBattery$BatteryReceiver;->this$0:Lcom/android/systemui/statusbar/policy/CircleBattery;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/policy/CircleBattery;->invalidate()V

    .line 153
    .end local v1           #l:Landroid/view/ViewGroup$LayoutParams;
    .end local v2           #visibility:I
    :cond_1
    return-void

    .line 140
    :cond_2
    const/16 v2, 0x8

    goto :goto_0
.end method
