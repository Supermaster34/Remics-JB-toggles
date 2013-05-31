.class public Lcom/android/systemui/quicksettings/WiFiTile;
.super Lcom/android/systemui/quicksettings/QuickSettingsTile;
.source "WiFiTile.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/NetworkController$NetworkSignalChangedCallback;


# instance fields
.field private mController:Lcom/android/systemui/statusbar/policy/NetworkController;

.field private mDescription:Ljava/lang/String;

.field private mWifiConnected:Z

.field private mWifiNotConnected:Z

.field private mWifiSignalIconId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/QuickSettingsController;Lcom/android/systemui/statusbar/policy/NetworkController;)V
    .locals 1
    .parameter "context"
    .parameter "qsc"
    .parameter "controller"

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/quicksettings/QuickSettingsTile;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/QuickSettingsController;)V

    .line 25
    iput-object p3, p0, Lcom/android/systemui/quicksettings/WiFiTile;->mController:Lcom/android/systemui/statusbar/policy/NetworkController;

    .line 27
    new-instance v0, Lcom/android/systemui/quicksettings/WiFiTile$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/quicksettings/WiFiTile$1;-><init>(Lcom/android/systemui/quicksettings/WiFiTile;)V

    iput-object v0, p0, Lcom/android/systemui/quicksettings/WiFiTile;->mOnClick:Landroid/view/View$OnClickListener;

    .line 35
    new-instance v0, Lcom/android/systemui/quicksettings/WiFiTile$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/quicksettings/WiFiTile$2;-><init>(Lcom/android/systemui/quicksettings/WiFiTile;)V

    iput-object v0, p0, Lcom/android/systemui/quicksettings/WiFiTile;->mOnLongClick:Landroid/view/View$OnLongClickListener;

    .line 43
    return-void
.end method

.method private declared-synchronized updateTile()V
    .locals 3

    .prologue
    .line 65
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/systemui/quicksettings/WiFiTile;->mWifiConnected:Z

    if-eqz v0, :cond_0

    .line 66
    iget v0, p0, Lcom/android/systemui/quicksettings/WiFiTile;->mWifiSignalIconId:I

    iput v0, p0, Lcom/android/systemui/quicksettings/WiFiTile;->mDrawable:I

    .line 67
    iget-object v0, p0, Lcom/android/systemui/quicksettings/WiFiTile;->mDescription:Ljava/lang/String;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/systemui/quicksettings/WiFiTile;->mDescription:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/quicksettings/WiFiTile;->mLabel:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    :goto_0
    monitor-exit p0

    return-void

    .line 68
    :cond_0
    :try_start_1
    iget-boolean v0, p0, Lcom/android/systemui/quicksettings/WiFiTile;->mWifiNotConnected:Z

    if-eqz v0, :cond_1

    .line 69
    const v0, 0x7f0200b6

    iput v0, p0, Lcom/android/systemui/quicksettings/WiFiTile;->mDrawable:I

    .line 70
    iget-object v0, p0, Lcom/android/systemui/quicksettings/WiFiTile;->mContext:Landroid/content/Context;

    const v1, 0x7f0a00ec

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/quicksettings/WiFiTile;->mLabel:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 65
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 72
    :cond_1
    const v0, 0x7f0200c4

    :try_start_2
    iput v0, p0, Lcom/android/systemui/quicksettings/WiFiTile;->mDrawable:I

    .line 73
    iget-object v0, p0, Lcom/android/systemui/quicksettings/WiFiTile;->mContext:Landroid/content/Context;

    const v1, 0x7f0a00ef

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/quicksettings/WiFiTile;->mLabel:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method


# virtual methods
.method public onAirplaneModeChanged(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 96
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/systemui/quicksettings/WiFiTile;->mController:Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->removeNetworkSignalChangedCallback(Lcom/android/systemui/statusbar/policy/NetworkController$NetworkSignalChangedCallback;)V

    .line 55
    invoke-super {p0}, Lcom/android/systemui/quicksettings/QuickSettingsTile;->onDestroy()V

    .line 56
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
    .line 92
    return-void
.end method

.method onPostCreate()V
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/systemui/quicksettings/WiFiTile;->mController:Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->addNetworkSignalChangedCallback(Lcom/android/systemui/statusbar/policy/NetworkController$NetworkSignalChangedCallback;)V

    .line 48
    invoke-direct {p0}, Lcom/android/systemui/quicksettings/WiFiTile;->updateTile()V

    .line 49
    invoke-super {p0}, Lcom/android/systemui/quicksettings/QuickSettingsTile;->onPostCreate()V

    .line 50
    return-void
.end method

.method public onWifiSignalChanged(ZILjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "enabled"
    .parameter "wifiSignalIconId"
    .parameter "wifiSignalContentDescriptionId"
    .parameter "description"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 80
    if-eqz p1, :cond_0

    if-lez p2, :cond_0

    if-eqz p4, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/quicksettings/WiFiTile;->mWifiConnected:Z

    .line 81
    if-lez p2, :cond_1

    if-nez p4, :cond_1

    :goto_1
    iput-boolean v1, p0, Lcom/android/systemui/quicksettings/WiFiTile;->mWifiNotConnected:Z

    .line 82
    iput p2, p0, Lcom/android/systemui/quicksettings/WiFiTile;->mWifiSignalIconId:I

    .line 83
    iput-object p4, p0, Lcom/android/systemui/quicksettings/WiFiTile;->mDescription:Ljava/lang/String;

    .line 84
    invoke-virtual {p0}, Lcom/android/systemui/quicksettings/WiFiTile;->updateResources()V

    .line 85
    return-void

    :cond_0
    move v0, v2

    .line 80
    goto :goto_0

    :cond_1
    move v1, v2

    .line 81
    goto :goto_1
.end method

.method public updateResources()V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/android/systemui/quicksettings/WiFiTile;->updateTile()V

    .line 61
    invoke-super {p0}, Lcom/android/systemui/quicksettings/QuickSettingsTile;->updateResources()V

    .line 62
    return-void
.end method
