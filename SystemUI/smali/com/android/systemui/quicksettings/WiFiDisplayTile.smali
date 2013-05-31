.class public Lcom/android/systemui/quicksettings/WiFiDisplayTile;
.super Lcom/android/systemui/quicksettings/QuickSettingsTile;
.source "WiFiDisplayTile.java"


# instance fields
.field private connected:Z

.field private enabled:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/QuickSettingsController;)V
    .locals 1
    .parameter "context"
    .parameter "qsc"

    .prologue
    const/4 v0, 0x0

    .line 22
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/quicksettings/QuickSettingsTile;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/QuickSettingsController;)V

    .line 17
    iput-boolean v0, p0, Lcom/android/systemui/quicksettings/WiFiDisplayTile;->enabled:Z

    .line 18
    iput-boolean v0, p0, Lcom/android/systemui/quicksettings/WiFiDisplayTile;->connected:Z

    .line 24
    new-instance v0, Lcom/android/systemui/quicksettings/WiFiDisplayTile$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/quicksettings/WiFiDisplayTile$1;-><init>(Lcom/android/systemui/quicksettings/WiFiDisplayTile;)V

    iput-object v0, p0, Lcom/android/systemui/quicksettings/WiFiDisplayTile;->mOnClick:Landroid/view/View$OnClickListener;

    .line 31
    const-string v0, "android.hardware.display.action.WIFI_DISPLAY_STATUS_CHANGED"

    invoke-virtual {p2, v0, p0}, Lcom/android/systemui/statusbar/phone/QuickSettingsController;->registerAction(Ljava/lang/Object;Lcom/android/systemui/quicksettings/QuickSettingsTile;)V

    .line 32
    return-void
.end method

.method private declared-synchronized updateTile()V
    .locals 2

    .prologue
    .line 55
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/systemui/quicksettings/WiFiDisplayTile;->enabled:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/quicksettings/WiFiDisplayTile;->connected:Z

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/android/systemui/quicksettings/WiFiDisplayTile;->mContext:Landroid/content/Context;

    const v1, 0x7f0a00f0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/quicksettings/WiFiDisplayTile;->mLabel:Ljava/lang/String;

    .line 57
    const v0, 0x7f020083

    iput v0, p0, Lcom/android/systemui/quicksettings/WiFiDisplayTile;->mDrawable:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    :goto_0
    monitor-exit p0

    return-void

    .line 59
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/systemui/quicksettings/WiFiDisplayTile;->mContext:Landroid/content/Context;

    const v1, 0x7f0a00f1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/quicksettings/WiFiDisplayTile;->mLabel:Ljava/lang/String;

    .line 60
    const v0, 0x7f020082

    iput v0, p0, Lcom/android/systemui/quicksettings/WiFiDisplayTile;->mDrawable:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 55
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method onPostCreate()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/android/systemui/quicksettings/WiFiDisplayTile;->updateTile()V

    .line 45
    invoke-super {p0}, Lcom/android/systemui/quicksettings/QuickSettingsTile;->onPostCreate()V

    .line 46
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 36
    const-string v1, "android.hardware.display.extra.WIFI_DISPLAY_STATUS"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/WifiDisplayStatus;

    .line 37
    .local v0, status:Landroid/hardware/display/WifiDisplayStatus;
    invoke-virtual {v0}, Landroid/hardware/display/WifiDisplayStatus;->getFeatureState()I

    move-result v1

    const/4 v4, 0x3

    if-ne v1, v4, :cond_0

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/android/systemui/quicksettings/WiFiDisplayTile;->enabled:Z

    .line 38
    invoke-virtual {v0}, Landroid/hardware/display/WifiDisplayStatus;->getActiveDisplay()Landroid/hardware/display/WifiDisplay;

    move-result-object v1

    if-eqz v1, :cond_1

    :goto_1
    iput-boolean v2, p0, Lcom/android/systemui/quicksettings/WiFiDisplayTile;->connected:Z

    .line 39
    invoke-virtual {p0}, Lcom/android/systemui/quicksettings/WiFiDisplayTile;->updateResources()V

    .line 40
    return-void

    :cond_0
    move v1, v3

    .line 37
    goto :goto_0

    :cond_1
    move v2, v3

    .line 38
    goto :goto_1
.end method

.method updateQuickSettings()V
    .locals 2

    .prologue
    .line 66
    iget-object v1, p0, Lcom/android/systemui/quicksettings/WiFiDisplayTile;->mTile:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;

    iget-boolean v0, p0, Lcom/android/systemui/quicksettings/WiFiDisplayTile;->enabled:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->setVisibility(I)V

    .line 67
    invoke-super {p0}, Lcom/android/systemui/quicksettings/QuickSettingsTile;->updateQuickSettings()V

    .line 68
    return-void

    .line 66
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public updateResources()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/android/systemui/quicksettings/WiFiDisplayTile;->updateTile()V

    .line 51
    invoke-super {p0}, Lcom/android/systemui/quicksettings/QuickSettingsTile;->updateResources()V

    .line 52
    return-void
.end method
