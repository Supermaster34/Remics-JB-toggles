.class public Lcom/android/systemui/quicksettings/AirplaneModeTile;
.super Lcom/android/systemui/quicksettings/QuickSettingsTile;
.source "AirplaneModeTile.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/NetworkController$NetworkSignalChangedCallback;


# instance fields
.field private enabled:Z

.field private mController:Lcom/android/systemui/statusbar/policy/NetworkController;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/QuickSettingsController;Lcom/android/systemui/statusbar/policy/NetworkController;)V
    .locals 1
    .parameter "context"
    .parameter "qsc"
    .parameter "controller"

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/quicksettings/QuickSettingsTile;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/QuickSettingsController;)V

    .line 18
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/quicksettings/AirplaneModeTile;->enabled:Z

    .line 23
    iput-object p3, p0, Lcom/android/systemui/quicksettings/AirplaneModeTile;->mController:Lcom/android/systemui/statusbar/policy/NetworkController;

    .line 25
    new-instance v0, Lcom/android/systemui/quicksettings/AirplaneModeTile$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/quicksettings/AirplaneModeTile$1;-><init>(Lcom/android/systemui/quicksettings/AirplaneModeTile;)V

    iput-object v0, p0, Lcom/android/systemui/quicksettings/AirplaneModeTile;->mOnClick:Landroid/view/View$OnClickListener;

    .line 38
    new-instance v0, Lcom/android/systemui/quicksettings/AirplaneModeTile$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/quicksettings/AirplaneModeTile$2;-><init>(Lcom/android/systemui/quicksettings/AirplaneModeTile;)V

    iput-object v0, p0, Lcom/android/systemui/quicksettings/AirplaneModeTile;->mOnLongClick:Landroid/view/View$OnLongClickListener;

    .line 46
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/quicksettings/AirplaneModeTile;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 16
    iget-boolean v0, p0, Lcom/android/systemui/quicksettings/AirplaneModeTile;->enabled:Z

    return v0
.end method

.method private declared-synchronized updateTile()V
    .locals 2

    .prologue
    .line 68
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/quicksettings/AirplaneModeTile;->mContext:Landroid/content/Context;

    const v1, 0x7f0a00dc

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/quicksettings/AirplaneModeTile;->mLabel:Ljava/lang/String;

    .line 69
    iget-boolean v0, p0, Lcom/android/systemui/quicksettings/AirplaneModeTile;->enabled:Z

    if-eqz v0, :cond_0

    const v0, 0x7f02003c

    :goto_0
    iput v0, p0, Lcom/android/systemui/quicksettings/AirplaneModeTile;->mDrawable:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    monitor-exit p0

    return-void

    .line 69
    :cond_0
    const v0, 0x7f02003b

    goto :goto_0

    .line 68
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public onAirplaneModeChanged(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 86
    iput-boolean p1, p0, Lcom/android/systemui/quicksettings/AirplaneModeTile;->enabled:Z

    .line 87
    invoke-virtual {p0}, Lcom/android/systemui/quicksettings/AirplaneModeTile;->updateResources()V

    .line 88
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/systemui/quicksettings/AirplaneModeTile;->mController:Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->removeNetworkSignalChangedCallback(Lcom/android/systemui/statusbar/policy/NetworkController$NetworkSignalChangedCallback;)V

    .line 58
    invoke-super {p0}, Lcom/android/systemui/quicksettings/QuickSettingsTile;->onDestroy()V

    .line 59
    return-void
.end method

.method public onMobileDataSignalChanged(ZILjava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "enabled"
    .parameter "mobileSignalIconId"
    .parameter "mobileSignalContentDescriptionId"
    .parameter "dataTypeIconId"
    .parameter "dataTypeContentDescriptionId"
    .parameter "description"

    .prologue
    .line 82
    return-void
.end method

.method onPostCreate()V
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/systemui/quicksettings/AirplaneModeTile;->mController:Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->addNetworkSignalChangedCallback(Lcom/android/systemui/statusbar/policy/NetworkController$NetworkSignalChangedCallback;)V

    .line 51
    invoke-direct {p0}, Lcom/android/systemui/quicksettings/AirplaneModeTile;->updateTile()V

    .line 52
    invoke-super {p0}, Lcom/android/systemui/quicksettings/QuickSettingsTile;->onPostCreate()V

    .line 53
    return-void
.end method

.method public onWifiSignalChanged(ZILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "enabled"
    .parameter "wifiSignalIconId"
    .parameter "wifitSignalContentDescriptionId"
    .parameter "description"

    .prologue
    .line 75
    return-void
.end method

.method public updateResources()V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/android/systemui/quicksettings/AirplaneModeTile;->updateTile()V

    .line 64
    invoke-super {p0}, Lcom/android/systemui/quicksettings/QuickSettingsTile;->updateResources()V

    .line 65
    return-void
.end method
