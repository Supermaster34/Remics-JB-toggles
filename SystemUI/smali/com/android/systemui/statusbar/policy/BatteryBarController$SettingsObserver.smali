.class Lcom/android/systemui/statusbar/policy/BatteryBarController$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "BatteryBarController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/BatteryBarController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/BatteryBarController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/policy/BatteryBarController;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "handler"

    .prologue
    .line 61
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/BatteryBarController$SettingsObserver;->this$0:Lcom/android/systemui/statusbar/policy/BatteryBarController;

    .line 62
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 63
    return-void
.end method


# virtual methods
.method observe()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 66
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BatteryBarController$SettingsObserver;->this$0:Lcom/android/systemui/statusbar/policy/BatteryBarController;

    #getter for: Lcom/android/systemui/statusbar/policy/BatteryBarController;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/BatteryBarController;->access$000(Lcom/android/systemui/statusbar/policy/BatteryBarController;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 67
    .local v0, resolver:Landroid/content/ContentResolver;
    const-string v1, "statusbar_battery_bar"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 70
    const-string v1, "statusbar_battery_bar_style"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 73
    const-string v1, "statusbar_battery_bar_thickness"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 76
    return-void
.end method

.method public onChange(Z)V
    .locals 1
    .parameter "selfChange"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BatteryBarController$SettingsObserver;->this$0:Lcom/android/systemui/statusbar/policy/BatteryBarController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/BatteryBarController;->updateSettings()V

    .line 81
    return-void
.end method
