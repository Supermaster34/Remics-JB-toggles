.class Lcom/android/systemui/statusbar/policy/CircleBattery$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "CircleBattery.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/CircleBattery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/CircleBattery;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/CircleBattery;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "handler"

    .prologue
    .line 93
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/CircleBattery$SettingsObserver;->this$0:Lcom/android/systemui/statusbar/policy/CircleBattery;

    .line 94
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 95
    return-void
.end method


# virtual methods
.method public observe()V
    .locals 3

    .prologue
    .line 98
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/CircleBattery$SettingsObserver;->this$0:Lcom/android/systemui/statusbar/policy/CircleBattery;

    #getter for: Lcom/android/systemui/statusbar/policy/CircleBattery;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/CircleBattery;->access$200(Lcom/android/systemui/statusbar/policy/CircleBattery;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 99
    .local v0, resolver:Landroid/content/ContentResolver;
    const-string v1, "status_bar_battery"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 101
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/policy/CircleBattery$SettingsObserver;->onChange(Z)V

    .line 102
    return-void
.end method

.method public onChange(Z)V
    .locals 6
    .parameter "selfChange"

    .prologue
    const/4 v5, 0x3

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 110
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/CircleBattery$SettingsObserver;->this$0:Lcom/android/systemui/statusbar/policy/CircleBattery;

    #getter for: Lcom/android/systemui/statusbar/policy/CircleBattery;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/CircleBattery;->access$200(Lcom/android/systemui/statusbar/policy/CircleBattery;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "status_bar_battery"

    invoke-static {v1, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 113
    .local v0, batteryStyle:I
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/CircleBattery$SettingsObserver;->this$0:Lcom/android/systemui/statusbar/policy/CircleBattery;

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    if-ne v0, v5, :cond_3

    :cond_0
    move v1, v3

    :goto_0
    #setter for: Lcom/android/systemui/statusbar/policy/CircleBattery;->mActivated:Z
    invoke-static {v4, v1}, Lcom/android/systemui/statusbar/policy/CircleBattery;->access$002(Lcom/android/systemui/statusbar/policy/CircleBattery;Z)Z

    .line 114
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/CircleBattery$SettingsObserver;->this$0:Lcom/android/systemui/statusbar/policy/CircleBattery;

    if-ne v0, v5, :cond_4

    :goto_1
    #setter for: Lcom/android/systemui/statusbar/policy/CircleBattery;->mPercentage:Z
    invoke-static {v1, v3}, Lcom/android/systemui/statusbar/policy/CircleBattery;->access$302(Lcom/android/systemui/statusbar/policy/CircleBattery;Z)Z

    .line 116
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/CircleBattery$SettingsObserver;->this$0:Lcom/android/systemui/statusbar/policy/CircleBattery;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/CircleBattery$SettingsObserver;->this$0:Lcom/android/systemui/statusbar/policy/CircleBattery;

    #getter for: Lcom/android/systemui/statusbar/policy/CircleBattery;->mActivated:Z
    invoke-static {v3}, Lcom/android/systemui/statusbar/policy/CircleBattery;->access$000(Lcom/android/systemui/statusbar/policy/CircleBattery;)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/CircleBattery$SettingsObserver;->this$0:Lcom/android/systemui/statusbar/policy/CircleBattery;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/policy/CircleBattery;->isBatteryPresent()Z

    move-result v3

    if-eqz v3, :cond_5

    :goto_2
    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/policy/CircleBattery;->setVisibility(I)V

    .line 117
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/CircleBattery$SettingsObserver;->this$0:Lcom/android/systemui/statusbar/policy/CircleBattery;

    #getter for: Lcom/android/systemui/statusbar/policy/CircleBattery;->mBatteryReceiver:Lcom/android/systemui/statusbar/policy/CircleBattery$BatteryReceiver;
    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/CircleBattery;->access$400(Lcom/android/systemui/statusbar/policy/CircleBattery;)Lcom/android/systemui/statusbar/policy/CircleBattery$BatteryReceiver;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 118
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/CircleBattery$SettingsObserver;->this$0:Lcom/android/systemui/statusbar/policy/CircleBattery;

    #getter for: Lcom/android/systemui/statusbar/policy/CircleBattery;->mBatteryReceiver:Lcom/android/systemui/statusbar/policy/CircleBattery$BatteryReceiver;
    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/CircleBattery;->access$400(Lcom/android/systemui/statusbar/policy/CircleBattery;)Lcom/android/systemui/statusbar/policy/CircleBattery$BatteryReceiver;

    move-result-object v1

    #calls: Lcom/android/systemui/statusbar/policy/CircleBattery$BatteryReceiver;->updateRegistration()V
    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/CircleBattery$BatteryReceiver;->access$500(Lcom/android/systemui/statusbar/policy/CircleBattery$BatteryReceiver;)V

    .line 121
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/CircleBattery$SettingsObserver;->this$0:Lcom/android/systemui/statusbar/policy/CircleBattery;

    #getter for: Lcom/android/systemui/statusbar/policy/CircleBattery;->mActivated:Z
    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/CircleBattery;->access$000(Lcom/android/systemui/statusbar/policy/CircleBattery;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/CircleBattery$SettingsObserver;->this$0:Lcom/android/systemui/statusbar/policy/CircleBattery;

    #getter for: Lcom/android/systemui/statusbar/policy/CircleBattery;->mAttached:Z
    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/CircleBattery;->access$100(Lcom/android/systemui/statusbar/policy/CircleBattery;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 122
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/CircleBattery$SettingsObserver;->this$0:Lcom/android/systemui/statusbar/policy/CircleBattery;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/CircleBattery;->invalidate()V

    .line 124
    :cond_2
    return-void

    :cond_3
    move v1, v2

    .line 113
    goto :goto_0

    :cond_4
    move v3, v2

    .line 114
    goto :goto_1

    .line 116
    :cond_5
    const/16 v2, 0x8

    goto :goto_2
.end method

.method public unobserve()V
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/CircleBattery$SettingsObserver;->this$0:Lcom/android/systemui/statusbar/policy/CircleBattery;

    #getter for: Lcom/android/systemui/statusbar/policy/CircleBattery;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/CircleBattery;->access$200(Lcom/android/systemui/statusbar/policy/CircleBattery;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 106
    return-void
.end method
