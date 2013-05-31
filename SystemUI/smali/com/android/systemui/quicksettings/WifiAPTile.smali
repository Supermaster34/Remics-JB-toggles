.class public Lcom/android/systemui/quicksettings/WifiAPTile;
.super Lcom/android/systemui/quicksettings/QuickSettingsTile;
.source "WifiAPTile.java"


# static fields
.field private static mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/QuickSettingsController;)V
    .locals 2
    .parameter "context"
    .parameter "qsc"

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/quicksettings/QuickSettingsTile;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/QuickSettingsController;)V

    .line 22
    iget-object v0, p0, Lcom/android/systemui/quicksettings/WifiAPTile;->mContext:Landroid/content/Context;

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    sput-object v0, Lcom/android/systemui/quicksettings/WifiAPTile;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 24
    new-instance v0, Lcom/android/systemui/quicksettings/WifiAPTile$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/quicksettings/WifiAPTile$1;-><init>(Lcom/android/systemui/quicksettings/WifiAPTile;)V

    iput-object v0, p0, Lcom/android/systemui/quicksettings/WifiAPTile;->mOnClick:Landroid/view/View$OnClickListener;

    .line 40
    new-instance v0, Lcom/android/systemui/quicksettings/WifiAPTile$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/quicksettings/WifiAPTile$2;-><init>(Lcom/android/systemui/quicksettings/WifiAPTile;)V

    iput-object v0, p0, Lcom/android/systemui/quicksettings/WifiAPTile;->mOnLongClick:Landroid/view/View$OnLongClickListener;

    .line 49
    const-string v0, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {p2, v0, p0}, Lcom/android/systemui/statusbar/phone/QuickSettingsController;->registerAction(Ljava/lang/Object;Lcom/android/systemui/quicksettings/QuickSettingsTile;)V

    .line 50
    return-void
.end method

.method static synthetic access$000()Landroid/net/wifi/WifiManager;
    .locals 1

    .prologue
    .line 15
    sget-object v0, Lcom/android/systemui/quicksettings/WifiAPTile;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/quicksettings/WifiAPTile;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lcom/android/systemui/quicksettings/WifiAPTile;->setSoftapEnabled(Z)V

    return-void
.end method

.method private setSoftapEnabled(Z)V
    .locals 7
    .parameter "enable"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 87
    iget-object v3, p0, Lcom/android/systemui/quicksettings/WifiAPTile;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 91
    .local v0, cr:Landroid/content/ContentResolver;
    sget-object v3, Lcom/android/systemui/quicksettings/WifiAPTile;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v2

    .line 92
    .local v2, wifiState:I
    if-eqz p1, :cond_1

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    .line 94
    :cond_0
    sget-object v3, Lcom/android/systemui/quicksettings/WifiAPTile;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3, v6}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 95
    const-string v3, "wifi_saved_state"

    invoke-static {v0, v3, v5}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 99
    :cond_1
    sget-object v3, Lcom/android/systemui/quicksettings/WifiAPTile;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, p1}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 104
    if-nez p1, :cond_2

    .line 105
    const/4 v1, 0x0

    .line 107
    .local v1, wifiSavedState:I
    :try_start_0
    const-string v3, "wifi_saved_state"

    invoke-static {v0, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 111
    :goto_0
    if-ne v1, v5, :cond_2

    .line 112
    sget-object v3, Lcom/android/systemui/quicksettings/WifiAPTile;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3, v5}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 113
    const-string v3, "wifi_saved_state"

    invoke-static {v0, v3, v6}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 116
    .end local v1           #wifiSavedState:I
    :cond_2
    return-void

    .line 108
    .restart local v1       #wifiSavedState:I
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method private declared-synchronized updateTile()V
    .locals 3

    .prologue
    .line 70
    monitor-enter p0

    :try_start_0
    sget-object v1, Lcom/android/systemui/quicksettings/WifiAPTile;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v0

    .line 71
    .local v0, state:I
    packed-switch v0, :pswitch_data_0

    .line 80
    const v1, 0x7f0200bc

    iput v1, p0, Lcom/android/systemui/quicksettings/WifiAPTile;->mDrawable:I

    .line 81
    iget-object v1, p0, Lcom/android/systemui/quicksettings/WifiAPTile;->mContext:Landroid/content/Context;

    const v2, 0x7f0a0024

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/quicksettings/WifiAPTile;->mLabel:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    :goto_0
    monitor-exit p0

    return-void

    .line 74
    :pswitch_0
    :try_start_1
    iget-object v1, p0, Lcom/android/systemui/quicksettings/WifiAPTile;->mContext:Landroid/content/Context;

    const v2, 0x7f0a0023

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/quicksettings/WifiAPTile;->mLabel:Ljava/lang/String;

    .line 75
    const v1, 0x7f0200bd

    iput v1, p0, Lcom/android/systemui/quicksettings/WifiAPTile;->mDrawable:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 70
    .end local v0           #state:I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 71
    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method onPostCreate()V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/android/systemui/quicksettings/WifiAPTile;->updateTile()V

    .line 60
    invoke-super {p0}, Lcom/android/systemui/quicksettings/QuickSettingsTile;->onPostCreate()V

    .line 61
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 54
    invoke-virtual {p0}, Lcom/android/systemui/quicksettings/WifiAPTile;->updateResources()V

    .line 55
    return-void
.end method

.method public updateResources()V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/android/systemui/quicksettings/WifiAPTile;->updateTile()V

    .line 66
    invoke-super {p0}, Lcom/android/systemui/quicksettings/QuickSettingsTile;->updateResources()V

    .line 67
    return-void
.end method
