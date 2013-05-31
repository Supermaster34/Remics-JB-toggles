.class Lcom/android/systemui/statusbar/policy/BatteryBar$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "BatteryBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/BatteryBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/BatteryBar;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/policy/BatteryBar;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "handler"

    .prologue
    .line 67
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/BatteryBar$SettingsObserver;->this$0:Lcom/android/systemui/statusbar/policy/BatteryBar;

    .line 68
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 69
    return-void
.end method


# virtual methods
.method observe()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 72
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BatteryBar$SettingsObserver;->this$0:Lcom/android/systemui/statusbar/policy/BatteryBar;

    #getter for: Lcom/android/systemui/statusbar/policy/BatteryBar;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/BatteryBar;->access$000(Lcom/android/systemui/statusbar/policy/BatteryBar;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 73
    .local v0, resolver:Landroid/content/ContentResolver;
    const-string v1, "statusbar_battery_bar_color"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 76
    const-string v1, "statusbar_battery_bar_animate"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 79
    return-void
.end method

.method public onChange(Z)V
    .locals 1
    .parameter "selfChange"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BatteryBar$SettingsObserver;->this$0:Lcom/android/systemui/statusbar/policy/BatteryBar;

    #calls: Lcom/android/systemui/statusbar/policy/BatteryBar;->updateSettings()V
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/BatteryBar;->access$100(Lcom/android/systemui/statusbar/policy/BatteryBar;)V

    .line 84
    return-void
.end method
