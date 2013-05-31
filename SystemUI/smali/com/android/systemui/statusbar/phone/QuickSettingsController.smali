.class public Lcom/android/systemui/statusbar/phone/QuickSettingsController;
.super Ljava/lang/Object;
.source "QuickSettingsController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/QuickSettingsController$QSBroadcastReceiver;,
        Lcom/android/systemui/statusbar/phone/QuickSettingsController$QuickSettingsObserver;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field public mBar:Lcom/android/systemui/statusbar/phone/PanelBar;

.field private final mContainerView:Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView;

.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private mIMETile:Lcom/android/systemui/quicksettings/InputMethodTile;

.field private mObserver:Landroid/database/ContentObserver;

.field public mObserverMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/net/Uri;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/quicksettings/QuickSettingsTile;",
            ">;>;"
        }
    .end annotation
.end field

.field private mQuickSettingsTiles:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/quicksettings/QuickSettingsTile;",
            ">;"
        }
    .end annotation
.end field

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field public mReceiverMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/quicksettings/QuickSettingsTile;",
            ">;>;"
        }
    .end annotation
.end field

.field public mStatusBarService:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

.field private mTileStatusUris:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 108
    const-string v0, "QuickSettingsController"

    sput-object v0, Lcom/android/systemui/statusbar/phone/QuickSettingsController;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView;Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V
    .locals 1
    .parameter "context"
    .parameter "container"
    .parameter "statusBarService"

    .prologue
    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsController;->mReceiverMap:Ljava/util/HashMap;

    .line 114
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsController;->mObserverMap:Ljava/util/HashMap;

    .line 118
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsController;->mTileStatusUris:Ljava/util/HashSet;

    .line 134
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsController;->mContext:Landroid/content/Context;

    .line 135
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsController;->mContainerView:Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView;

    .line 136
    new-instance v0, Lcom/android/systemui/statusbar/phone/QuickSettingsController$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/QuickSettingsController$1;-><init>(Lcom/android/systemui/statusbar/phone/QuickSettingsController;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsController;->mHandler:Landroid/os/Handler;

    .line 148
    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsController;->mStatusBarService:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .line 149
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsController;->mQuickSettingsTiles:Ljava/util/ArrayList;

    .line 150
    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/phone/QuickSettingsController;)Ljava/util/HashSet;
    .locals 1
    .parameter "x0"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsController;->mTileStatusUris:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/phone/QuickSettingsController;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsController;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/phone/QuickSettingsController;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private loadDockBatteryTile(Landroid/content/ContentResolver;Landroid/view/LayoutInflater;)V
    .locals 3
    .parameter "resolver"
    .parameter "inflater"

    .prologue
    .line 298
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/internal/util/cm/QSUtils;->deviceSupportsDockBattery(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 308
    :cond_0
    :goto_0
    return-void

    .line 301
    :cond_1
    const-string v1, "qs_dyanmic_dock_battery"

    const/4 v2, 0x1

    invoke-static {p1, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    .line 305
    new-instance v0, Lcom/android/systemui/quicksettings/DockBatteryTile;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsController;->mStatusBarService:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDockBatteryController:Lcom/android/systemui/statusbar/policy/DockBatteryController;

    invoke-direct {v0, v1, p0, v2}, Lcom/android/systemui/quicksettings/DockBatteryTile;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/QuickSettingsController;Lcom/android/systemui/statusbar/policy/DockBatteryController;)V

    .line 306
    .local v0, qs:Lcom/android/systemui/quicksettings/QuickSettingsTile;
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsController;->mContainerView:Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView;

    invoke-virtual {v0, p2, v1}, Lcom/android/systemui/quicksettings/QuickSettingsTile;->setupQuickSettingsTile(Landroid/view/LayoutInflater;Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView;)V

    .line 307
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsController;->mQuickSettingsTiles:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private registerInMap(Ljava/lang/Object;Lcom/android/systemui/quicksettings/QuickSettingsTile;Ljava/util/HashMap;)V
    .locals 3
    .parameter "item"
    .parameter "tile"
    .parameter "map"

    .prologue
    .line 375
    invoke-virtual {p3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 376
    invoke-virtual {p3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 377
    .local v0, list:Ljava/util/ArrayList;
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 378
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 385
    .end local v0           #list:Ljava/util/ArrayList;
    :cond_0
    :goto_0
    return-void

    .line 381
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 382
    .local v1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/systemui/quicksettings/QuickSettingsTile;>;"
    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 383
    invoke-virtual {p3, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method


# virtual methods
.method loadTiles()V
    .locals 15

    .prologue
    .line 154
    const/4 v12, 0x0

    iput-object v12, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsController;->mIMETile:Lcom/android/systemui/quicksettings/InputMethodTile;

    .line 157
    invoke-static {}, Lcom/android/internal/util/cm/QSUtils;->deviceSupportsBluetooth()Z

    move-result v1

    .line 158
    .local v1, bluetoothSupported:Z
    iget-object v12, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsController;->mContext:Landroid/content/Context;

    invoke-static {v12}, Lcom/android/internal/util/cm/QSUtils;->deviceSupportsMobileData(Landroid/content/Context;)Z

    move-result v7

    .line 159
    .local v7, mobileDataSupported:Z
    iget-object v12, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsController;->mContext:Landroid/content/Context;

    invoke-static {v12}, Lcom/android/internal/util/cm/QSUtils;->deviceSupportsLte(Landroid/content/Context;)Z

    move-result v6

    .line 161
    .local v6, lteSupported:Z
    if-nez v1, :cond_0

    .line 162
    sget-object v12, Lcom/android/internal/util/cm/QSConstants;->TILES_DEFAULT:Ljava/util/ArrayList;

    const-string v13, "toggleBluetooth"

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 165
    :cond_0
    if-nez v7, :cond_1

    .line 166
    sget-object v12, Lcom/android/internal/util/cm/QSConstants;->TILES_DEFAULT:Ljava/util/ArrayList;

    const-string v13, "toggleWifiAp"

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 167
    sget-object v12, Lcom/android/internal/util/cm/QSConstants;->TILES_DEFAULT:Ljava/util/ArrayList;

    const-string v13, "toggleMobileData"

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 168
    sget-object v12, Lcom/android/internal/util/cm/QSConstants;->TILES_DEFAULT:Ljava/util/ArrayList;

    const-string v13, "toggleNetworkMode"

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 171
    :cond_1
    if-nez v6, :cond_2

    .line 172
    sget-object v12, Lcom/android/internal/util/cm/QSConstants;->TILES_DEFAULT:Ljava/util/ArrayList;

    const-string v13, "toggleLte"

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 176
    :cond_2
    iget-object v12, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsController;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    .line 177
    .local v9, resolver:Landroid/content/ContentResolver;
    iget-object v12, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsController;->mContext:Landroid/content/Context;

    invoke-static {v12}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    .line 178
    .local v4, inflater:Landroid/view/LayoutInflater;
    const-string v12, "quick_settings_tiles"

    invoke-static {v9, v12}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 179
    .local v11, tiles:Ljava/lang/String;
    if-nez v11, :cond_3

    .line 180
    sget-object v12, Lcom/android/systemui/statusbar/phone/QuickSettingsController;->TAG:Ljava/lang/String;

    const-string v13, "Default tiles being loaded"

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    const-string v12, "|"

    sget-object v13, Lcom/android/internal/util/cm/QSConstants;->TILES_DEFAULT:Ljava/util/ArrayList;

    invoke-static {v12, v13}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v11

    .line 184
    :cond_3
    sget-object v12, Lcom/android/systemui/statusbar/phone/QuickSettingsController;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Tiles list: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    const/4 v2, 0x0

    .line 188
    .local v2, dockBatteryLoaded:Z
    const-string v12, "\\|"

    invoke-virtual {v11, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .local v0, arr$:[Ljava/lang/String;
    array-length v5, v0

    .local v5, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v5, :cond_1e

    aget-object v10, v0, v3

    .line 189
    .local v10, tile:Ljava/lang/String;
    const/4 v8, 0x0

    .line 190
    .local v8, qs:Lcom/android/systemui/quicksettings/QuickSettingsTile;
    const-string v12, "toggleUser"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 191
    new-instance v8, Lcom/android/systemui/quicksettings/UserTile;

    .end local v8           #qs:Lcom/android/systemui/quicksettings/QuickSettingsTile;
    iget-object v12, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsController;->mContext:Landroid/content/Context;

    invoke-direct {v8, v12, p0}, Lcom/android/systemui/quicksettings/UserTile;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/QuickSettingsController;)V

    .line 252
    .restart local v8       #qs:Lcom/android/systemui/quicksettings/QuickSettingsTile;
    :cond_4
    :goto_1
    if-eqz v8, :cond_5

    .line 253
    iget-object v12, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsController;->mContainerView:Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView;

    invoke-virtual {v8, v4, v12}, Lcom/android/systemui/quicksettings/QuickSettingsTile;->setupQuickSettingsTile(Landroid/view/LayoutInflater;Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView;)V

    .line 254
    iget-object v12, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsController;->mQuickSettingsTiles:Ljava/util/ArrayList;

    invoke-virtual {v12, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 257
    instance-of v12, v8, Lcom/android/systemui/quicksettings/BatteryTile;

    if-eqz v12, :cond_5

    .line 258
    invoke-direct {p0, v9, v4}, Lcom/android/systemui/statusbar/phone/QuickSettingsController;->loadDockBatteryTile(Landroid/content/ContentResolver;Landroid/view/LayoutInflater;)V

    .line 259
    const/4 v2, 0x1

    .line 188
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 192
    :cond_6
    const-string v12, "toggleBattery"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_7

    .line 193
    new-instance v8, Lcom/android/systemui/quicksettings/BatteryTile;

    .end local v8           #qs:Lcom/android/systemui/quicksettings/QuickSettingsTile;
    iget-object v12, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsController;->mContext:Landroid/content/Context;

    iget-object v13, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsController;->mStatusBarService:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v13, v13, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    invoke-direct {v8, v12, p0, v13}, Lcom/android/systemui/quicksettings/BatteryTile;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/QuickSettingsController;Lcom/android/systemui/statusbar/policy/BatteryController;)V

    .restart local v8       #qs:Lcom/android/systemui/quicksettings/QuickSettingsTile;
    goto :goto_1

    .line 194
    :cond_7
    const-string v12, "toggleSettings"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_8

    .line 195
    new-instance v8, Lcom/android/systemui/quicksettings/PreferencesTile;

    .end local v8           #qs:Lcom/android/systemui/quicksettings/QuickSettingsTile;
    iget-object v12, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsController;->mContext:Landroid/content/Context;

    invoke-direct {v8, v12, p0}, Lcom/android/systemui/quicksettings/PreferencesTile;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/QuickSettingsController;)V

    .restart local v8       #qs:Lcom/android/systemui/quicksettings/QuickSettingsTile;
    goto :goto_1

    .line 196
    :cond_8
    const-string v12, "toggleWifi"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_9

    .line 197
    new-instance v8, Lcom/android/systemui/quicksettings/WiFiTile;

    .end local v8           #qs:Lcom/android/systemui/quicksettings/QuickSettingsTile;
    iget-object v12, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsController;->mContext:Landroid/content/Context;

    iget-object v13, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsController;->mStatusBarService:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v13, v13, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-direct {v8, v12, p0, v13}, Lcom/android/systemui/quicksettings/WiFiTile;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/QuickSettingsController;Lcom/android/systemui/statusbar/policy/NetworkController;)V

    .restart local v8       #qs:Lcom/android/systemui/quicksettings/QuickSettingsTile;
    goto :goto_1

    .line 198
    :cond_9
    const-string v12, "toggleGPS"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_a

    .line 199
    new-instance v8, Lcom/android/systemui/quicksettings/GPSTile;

    .end local v8           #qs:Lcom/android/systemui/quicksettings/QuickSettingsTile;
    iget-object v12, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsController;->mContext:Landroid/content/Context;

    invoke-direct {v8, v12, p0}, Lcom/android/systemui/quicksettings/GPSTile;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/QuickSettingsController;)V

    .restart local v8       #qs:Lcom/android/systemui/quicksettings/QuickSettingsTile;
    goto :goto_1

    .line 200
    :cond_a
    const-string v12, "toggleBluetooth"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_b

    if-eqz v1, :cond_b

    .line 201
    new-instance v8, Lcom/android/systemui/quicksettings/BluetoothTile;

    .end local v8           #qs:Lcom/android/systemui/quicksettings/QuickSettingsTile;
    iget-object v12, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsController;->mContext:Landroid/content/Context;

    iget-object v13, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsController;->mStatusBarService:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v13, v13, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBluetoothController:Lcom/android/systemui/statusbar/policy/BluetoothController;

    invoke-direct {v8, v12, p0, v13}, Lcom/android/systemui/quicksettings/BluetoothTile;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/QuickSettingsController;Lcom/android/systemui/statusbar/policy/BluetoothController;)V

    .restart local v8       #qs:Lcom/android/systemui/quicksettings/QuickSettingsTile;
    goto :goto_1

    .line 202
    :cond_b
    const-string v12, "toggleBrightness"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_c

    .line 203
    new-instance v8, Lcom/android/systemui/quicksettings/BrightnessTile;

    .end local v8           #qs:Lcom/android/systemui/quicksettings/QuickSettingsTile;
    iget-object v12, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsController;->mContext:Landroid/content/Context;

    iget-object v13, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsController;->mHandler:Landroid/os/Handler;

    invoke-direct {v8, v12, p0, v13}, Lcom/android/systemui/quicksettings/BrightnessTile;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/QuickSettingsController;Landroid/os/Handler;)V

    .restart local v8       #qs:Lcom/android/systemui/quicksettings/QuickSettingsTile;
    goto/16 :goto_1

    .line 204
    :cond_c
    const-string v12, "toggleSound"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_d

    .line 205
    new-instance v8, Lcom/android/systemui/quicksettings/RingerModeTile;

    .end local v8           #qs:Lcom/android/systemui/quicksettings/QuickSettingsTile;
    iget-object v12, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsController;->mContext:Landroid/content/Context;

    invoke-direct {v8, v12, p0}, Lcom/android/systemui/quicksettings/RingerModeTile;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/QuickSettingsController;)V

    .restart local v8       #qs:Lcom/android/systemui/quicksettings/QuickSettingsTile;
    goto/16 :goto_1

    .line 206
    :cond_d
    const-string v12, "toggleSync"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_e

    .line 207
    new-instance v8, Lcom/android/systemui/quicksettings/SyncTile;

    .end local v8           #qs:Lcom/android/systemui/quicksettings/QuickSettingsTile;
    iget-object v12, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsController;->mContext:Landroid/content/Context;

    invoke-direct {v8, v12, p0}, Lcom/android/systemui/quicksettings/SyncTile;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/QuickSettingsController;)V

    .restart local v8       #qs:Lcom/android/systemui/quicksettings/QuickSettingsTile;
    goto/16 :goto_1

    .line 208
    :cond_e
    const-string v12, "toggleWifiAp"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_f

    if-eqz v7, :cond_f

    .line 209
    new-instance v8, Lcom/android/systemui/quicksettings/WifiAPTile;

    .end local v8           #qs:Lcom/android/systemui/quicksettings/QuickSettingsTile;
    iget-object v12, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsController;->mContext:Landroid/content/Context;

    invoke-direct {v8, v12, p0}, Lcom/android/systemui/quicksettings/WifiAPTile;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/QuickSettingsController;)V

    .restart local v8       #qs:Lcom/android/systemui/quicksettings/QuickSettingsTile;
    goto/16 :goto_1

    .line 210
    :cond_f
    const-string v12, "toggleScreenTimeout"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_10

    .line 211
    new-instance v8, Lcom/android/systemui/quicksettings/ScreenTimeoutTile;

    .end local v8           #qs:Lcom/android/systemui/quicksettings/QuickSettingsTile;
    iget-object v12, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsController;->mContext:Landroid/content/Context;

    invoke-direct {v8, v12, p0}, Lcom/android/systemui/quicksettings/ScreenTimeoutTile;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/QuickSettingsController;)V

    .restart local v8       #qs:Lcom/android/systemui/quicksettings/QuickSettingsTile;
    goto/16 :goto_1

    .line 212
    :cond_10
    const-string v12, "toggleMobileData"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_11

    if-eqz v7, :cond_11

    .line 213
    new-instance v8, Lcom/android/systemui/quicksettings/MobileNetworkTile;

    .end local v8           #qs:Lcom/android/systemui/quicksettings/QuickSettingsTile;
    iget-object v12, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsController;->mContext:Landroid/content/Context;

    iget-object v13, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsController;->mStatusBarService:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v13, v13, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-direct {v8, v12, p0, v13}, Lcom/android/systemui/quicksettings/MobileNetworkTile;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/QuickSettingsController;Lcom/android/systemui/statusbar/policy/NetworkController;)V

    .restart local v8       #qs:Lcom/android/systemui/quicksettings/QuickSettingsTile;
    goto/16 :goto_1

    .line 214
    :cond_11
    const-string v12, "toggleLockScreen"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_12

    .line 215
    new-instance v8, Lcom/android/systemui/quicksettings/ToggleLockscreenTile;

    .end local v8           #qs:Lcom/android/systemui/quicksettings/QuickSettingsTile;
    iget-object v12, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsController;->mContext:Landroid/content/Context;

    invoke-direct {v8, v12, p0}, Lcom/android/systemui/quicksettings/ToggleLockscreenTile;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/QuickSettingsController;)V

    .restart local v8       #qs:Lcom/android/systemui/quicksettings/QuickSettingsTile;
    goto/16 :goto_1

    .line 216
    :cond_12
    const-string v12, "toggleNetworkMode"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_13

    if-eqz v7, :cond_13

    .line 217
    new-instance v8, Lcom/android/systemui/quicksettings/MobileNetworkTypeTile;

    .end local v8           #qs:Lcom/android/systemui/quicksettings/QuickSettingsTile;
    iget-object v12, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsController;->mContext:Landroid/content/Context;

    iget-object v13, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsController;->mStatusBarService:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v13, v13, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-direct {v8, v12, p0, v13}, Lcom/android/systemui/quicksettings/MobileNetworkTypeTile;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/QuickSettingsController;Lcom/android/systemui/statusbar/policy/NetworkController;)V

    .restart local v8       #qs:Lcom/android/systemui/quicksettings/QuickSettingsTile;
    goto/16 :goto_1

    .line 218
    :cond_13
    const-string v12, "toggleAutoRotate"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_14

    .line 219
    new-instance v8, Lcom/android/systemui/quicksettings/AutoRotateTile;

    .end local v8           #qs:Lcom/android/systemui/quicksettings/QuickSettingsTile;
    iget-object v12, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsController;->mContext:Landroid/content/Context;

    iget-object v13, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsController;->mHandler:Landroid/os/Handler;

    invoke-direct {v8, v12, p0, v13}, Lcom/android/systemui/quicksettings/AutoRotateTile;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/QuickSettingsController;Landroid/os/Handler;)V

    .restart local v8       #qs:Lcom/android/systemui/quicksettings/QuickSettingsTile;
    goto/16 :goto_1

    .line 220
    :cond_14
    const-string v12, "toggleAirplane"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_15

    .line 221
    new-instance v8, Lcom/android/systemui/quicksettings/AirplaneModeTile;

    .end local v8           #qs:Lcom/android/systemui/quicksettings/QuickSettingsTile;
    iget-object v12, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsController;->mContext:Landroid/content/Context;

    iget-object v13, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsController;->mStatusBarService:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v13, v13, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-direct {v8, v12, p0, v13}, Lcom/android/systemui/quicksettings/AirplaneModeTile;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/QuickSettingsController;Lcom/android/systemui/statusbar/policy/NetworkController;)V

    .restart local v8       #qs:Lcom/android/systemui/quicksettings/QuickSettingsTile;
    goto/16 :goto_1

    .line 222
    :cond_15
    const-string v12, "toggleFlashlight"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_16

    .line 223
    new-instance v8, Lcom/android/systemui/quicksettings/TorchTile;

    .end local v8           #qs:Lcom/android/systemui/quicksettings/QuickSettingsTile;
    iget-object v12, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsController;->mContext:Landroid/content/Context;

    iget-object v13, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsController;->mHandler:Landroid/os/Handler;

    invoke-direct {v8, v12, p0, v13}, Lcom/android/systemui/quicksettings/TorchTile;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/QuickSettingsController;Landroid/os/Handler;)V

    .restart local v8       #qs:Lcom/android/systemui/quicksettings/QuickSettingsTile;
    goto/16 :goto_1

    .line 224
    :cond_16
    const-string v12, "toggleSleepMode"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_17

    .line 225
    new-instance v8, Lcom/android/systemui/quicksettings/SleepScreenTile;

    .end local v8           #qs:Lcom/android/systemui/quicksettings/QuickSettingsTile;
    iget-object v12, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsController;->mContext:Landroid/content/Context;

    invoke-direct {v8, v12, p0}, Lcom/android/systemui/quicksettings/SleepScreenTile;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/QuickSettingsController;)V

    .restart local v8       #qs:Lcom/android/systemui/quicksettings/QuickSettingsTile;
    goto/16 :goto_1

    .line 226
    :cond_17
    const-string v12, "toggleProfile"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_18

    .line 227
    iget-object v12, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsController;->mTileStatusUris:Ljava/util/HashSet;

    const-string v13, "system_profiles_enabled"

    invoke-static {v13}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 228
    invoke-static {v9}, Lcom/android/internal/util/cm/QSUtils;->systemProfilesEnabled(Landroid/content/ContentResolver;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 229
    new-instance v8, Lcom/android/systemui/quicksettings/ProfileTile;

    .end local v8           #qs:Lcom/android/systemui/quicksettings/QuickSettingsTile;
    iget-object v12, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsController;->mContext:Landroid/content/Context;

    invoke-direct {v8, v12, p0}, Lcom/android/systemui/quicksettings/ProfileTile;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/QuickSettingsController;)V

    .restart local v8       #qs:Lcom/android/systemui/quicksettings/QuickSettingsTile;
    goto/16 :goto_1

    .line 231
    :cond_18
    const-string v12, "toggleNfc"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_19

    .line 234
    new-instance v8, Lcom/android/systemui/quicksettings/NfcTile;

    .end local v8           #qs:Lcom/android/systemui/quicksettings/QuickSettingsTile;
    iget-object v12, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsController;->mContext:Landroid/content/Context;

    invoke-direct {v8, v12, p0}, Lcom/android/systemui/quicksettings/NfcTile;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/QuickSettingsController;)V

    .restart local v8       #qs:Lcom/android/systemui/quicksettings/QuickSettingsTile;
    goto/16 :goto_1

    .line 235
    :cond_19
    const-string v12, "toggleFCharge"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1a

    .line 236
    new-instance v8, Lcom/android/systemui/quicksettings/FChargeTile;

    .end local v8           #qs:Lcom/android/systemui/quicksettings/QuickSettingsTile;
    iget-object v12, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsController;->mContext:Landroid/content/Context;

    iget-object v13, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsController;->mHandler:Landroid/os/Handler;

    invoke-direct {v8, v12, p0, v13}, Lcom/android/systemui/quicksettings/FChargeTile;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/QuickSettingsController;Landroid/os/Handler;)V

    .restart local v8       #qs:Lcom/android/systemui/quicksettings/QuickSettingsTile;
    goto/16 :goto_1

    .line 237
    :cond_1a
    const-string v12, "toggleWimax"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_4

    .line 239
    const-string v12, "toggleLte"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1b

    .line 240
    new-instance v8, Lcom/android/systemui/quicksettings/LteTile;

    .end local v8           #qs:Lcom/android/systemui/quicksettings/QuickSettingsTile;
    iget-object v12, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsController;->mContext:Landroid/content/Context;

    invoke-direct {v8, v12, p0}, Lcom/android/systemui/quicksettings/LteTile;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/QuickSettingsController;)V

    .restart local v8       #qs:Lcom/android/systemui/quicksettings/QuickSettingsTile;
    goto/16 :goto_1

    .line 241
    :cond_1b
    const-string v12, "toggleQuietHours"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1c

    .line 242
    new-instance v8, Lcom/android/systemui/quicksettings/QuietHoursTile;

    .end local v8           #qs:Lcom/android/systemui/quicksettings/QuickSettingsTile;
    iget-object v12, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsController;->mContext:Landroid/content/Context;

    invoke-direct {v8, v12, p0}, Lcom/android/systemui/quicksettings/QuietHoursTile;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/QuickSettingsController;)V

    .restart local v8       #qs:Lcom/android/systemui/quicksettings/QuickSettingsTile;
    goto/16 :goto_1

    .line 243
    :cond_1c
    const-string v12, "toggleVolume"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1d

    .line 244
    new-instance v8, Lcom/android/systemui/quicksettings/VolumeTile;

    .end local v8           #qs:Lcom/android/systemui/quicksettings/QuickSettingsTile;
    iget-object v12, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsController;->mContext:Landroid/content/Context;

    iget-object v13, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsController;->mHandler:Landroid/os/Handler;

    invoke-direct {v8, v12, p0, v13}, Lcom/android/systemui/quicksettings/VolumeTile;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/QuickSettingsController;Landroid/os/Handler;)V

    .restart local v8       #qs:Lcom/android/systemui/quicksettings/QuickSettingsTile;
    goto/16 :goto_1

    .line 245
    :cond_1d
    const-string v12, "toggleExpandedDesktop"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 246
    iget-object v12, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsController;->mTileStatusUris:Ljava/util/HashSet;

    const-string v13, "expanded_desktop_style"

    invoke-static {v13}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 247
    invoke-static {v9}, Lcom/android/internal/util/cm/QSUtils;->expandedDesktopEnabled(Landroid/content/ContentResolver;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 248
    new-instance v8, Lcom/android/systemui/quicksettings/ExpandedDesktopTile;

    .end local v8           #qs:Lcom/android/systemui/quicksettings/QuickSettingsTile;
    iget-object v12, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsController;->mContext:Landroid/content/Context;

    iget-object v13, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsController;->mHandler:Landroid/os/Handler;

    invoke-direct {v8, v12, p0, v13}, Lcom/android/systemui/quicksettings/ExpandedDesktopTile;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/QuickSettingsController;Landroid/os/Handler;)V

    .restart local v8       #qs:Lcom/android/systemui/quicksettings/QuickSettingsTile;
    goto/16 :goto_1

    .line 267
    .end local v8           #qs:Lcom/android/systemui/quicksettings/QuickSettingsTile;
    .end local v10           #tile:Ljava/lang/String;
    :cond_1e
    const-string v12, "qs_dyanmic_alarm"

    const/4 v13, 0x1

    invoke-static {v9, v12, v13}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_1f

    .line 268
    new-instance v8, Lcom/android/systemui/quicksettings/AlarmTile;

    iget-object v12, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsController;->mContext:Landroid/content/Context;

    iget-object v13, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsController;->mHandler:Landroid/os/Handler;

    invoke-direct {v8, v12, p0, v13}, Lcom/android/systemui/quicksettings/AlarmTile;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/QuickSettingsController;Landroid/os/Handler;)V

    .line 269
    .restart local v8       #qs:Lcom/android/systemui/quicksettings/QuickSettingsTile;
    iget-object v12, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsController;->mContainerView:Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView;

    invoke-virtual {v8, v4, v12}, Lcom/android/systemui/quicksettings/QuickSettingsTile;->setupQuickSettingsTile(Landroid/view/LayoutInflater;Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView;)V

    .line 270
    iget-object v12, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsController;->mQuickSettingsTiles:Ljava/util/ArrayList;

    invoke-virtual {v12, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 272
    .end local v8           #qs:Lcom/android/systemui/quicksettings/QuickSettingsTile;
    :cond_1f
    const-string v12, "qs_dyanmic_bugreport"

    const/4 v13, 0x1

    invoke-static {v9, v12, v13}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_20

    .line 273
    new-instance v8, Lcom/android/systemui/quicksettings/BugReportTile;

    iget-object v12, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsController;->mContext:Landroid/content/Context;

    iget-object v13, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsController;->mHandler:Landroid/os/Handler;

    invoke-direct {v8, v12, p0, v13}, Lcom/android/systemui/quicksettings/BugReportTile;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/QuickSettingsController;Landroid/os/Handler;)V

    .line 274
    .restart local v8       #qs:Lcom/android/systemui/quicksettings/QuickSettingsTile;
    iget-object v12, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsController;->mContainerView:Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView;

    invoke-virtual {v8, v4, v12}, Lcom/android/systemui/quicksettings/QuickSettingsTile;->setupQuickSettingsTile(Landroid/view/LayoutInflater;Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView;)V

    .line 275
    iget-object v12, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsController;->mQuickSettingsTiles:Ljava/util/ArrayList;

    invoke-virtual {v12, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 277
    .end local v8           #qs:Lcom/android/systemui/quicksettings/QuickSettingsTile;
    :cond_20
    if-nez v2, :cond_21

    .line 278
    invoke-direct {p0, v9, v4}, Lcom/android/systemui/statusbar/phone/QuickSettingsController;->loadDockBatteryTile(Landroid/content/ContentResolver;Landroid/view/LayoutInflater;)V

    .line 280
    :cond_21
    const-string v12, "qs_dyanmic_wifi"

    const/4 v13, 0x1

    invoke-static {v9, v12, v13}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_22

    .line 281
    new-instance v8, Lcom/android/systemui/quicksettings/WiFiDisplayTile;

    iget-object v12, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsController;->mContext:Landroid/content/Context;

    invoke-direct {v8, v12, p0}, Lcom/android/systemui/quicksettings/WiFiDisplayTile;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/QuickSettingsController;)V

    .line 282
    .restart local v8       #qs:Lcom/android/systemui/quicksettings/QuickSettingsTile;
    iget-object v12, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsController;->mContainerView:Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView;

    invoke-virtual {v8, v4, v12}, Lcom/android/systemui/quicksettings/QuickSettingsTile;->setupQuickSettingsTile(Landroid/view/LayoutInflater;Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView;)V

    .line 283
    iget-object v12, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsController;->mQuickSettingsTiles:Ljava/util/ArrayList;

    invoke-virtual {v12, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 285
    .end local v8           #qs:Lcom/android/systemui/quicksettings/QuickSettingsTile;
    :cond_22
    iget-object v12, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsController;->mContext:Landroid/content/Context;

    invoke-static {v12}, Lcom/android/internal/util/cm/QSUtils;->deviceSupportsImeSwitcher(Landroid/content/Context;)Z

    move-result v12

    if-eqz v12, :cond_23

    const-string v12, "qs_dyanmic_ime"

    const/4 v13, 0x1

    invoke-static {v9, v12, v13}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_23

    .line 286
    new-instance v12, Lcom/android/systemui/quicksettings/InputMethodTile;

    iget-object v13, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsController;->mContext:Landroid/content/Context;

    invoke-direct {v12, v13, p0}, Lcom/android/systemui/quicksettings/InputMethodTile;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/QuickSettingsController;)V

    iput-object v12, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsController;->mIMETile:Lcom/android/systemui/quicksettings/InputMethodTile;

    .line 287
    iget-object v12, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsController;->mIMETile:Lcom/android/systemui/quicksettings/InputMethodTile;

    iget-object v13, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsController;->mContainerView:Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView;

    invoke-virtual {v12, v4, v13}, Lcom/android/systemui/quicksettings/InputMethodTile;->setupQuickSettingsTile(Landroid/view/LayoutInflater;Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView;)V

    .line 288
    iget-object v12, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsController;->mQuickSettingsTiles:Ljava/util/ArrayList;

    iget-object v13, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsController;->mIMETile:Lcom/android/systemui/quicksettings/InputMethodTile;

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 290
    :cond_23
    iget-object v12, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsController;->mContext:Landroid/content/Context;

    invoke-static {v12}, Lcom/android/internal/util/cm/QSUtils;->deviceSupportsUsbTether(Landroid/content/Context;)Z

    move-result v12

    if-eqz v12, :cond_24

    const-string v12, "qs_dyanmic_usbtether"

    const/4 v13, 0x1

    invoke-static {v9, v12, v13}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_24

    .line 291
    new-instance v8, Lcom/android/systemui/quicksettings/UsbTetherTile;

    iget-object v12, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsController;->mContext:Landroid/content/Context;

    invoke-direct {v8, v12, p0}, Lcom/android/systemui/quicksettings/UsbTetherTile;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/QuickSettingsController;)V

    .line 292
    .restart local v8       #qs:Lcom/android/systemui/quicksettings/QuickSettingsTile;
    iget-object v12, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsController;->mContainerView:Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView;

    invoke-virtual {v8, v4, v12}, Lcom/android/systemui/quicksettings/QuickSettingsTile;->setupQuickSettingsTile(Landroid/view/LayoutInflater;Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView;)V

    .line 293
    iget-object v12, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsController;->mQuickSettingsTiles:Ljava/util/ArrayList;

    invoke-virtual {v12, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 295
    .end local v8           #qs:Lcom/android/systemui/quicksettings/QuickSettingsTile;
    :cond_24
    return-void
.end method

.method public registerAction(Ljava/lang/Object;Lcom/android/systemui/quicksettings/QuickSettingsTile;)V
    .locals 1
    .parameter "action"
    .parameter "tile"

    .prologue
    .line 388
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsController;->mReceiverMap:Ljava/util/HashMap;

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/phone/QuickSettingsController;->registerInMap(Ljava/lang/Object;Lcom/android/systemui/quicksettings/QuickSettingsTile;Ljava/util/HashMap;)V

    .line 389
    return-void
.end method

.method public registerObservedContent(Landroid/net/Uri;Lcom/android/systemui/quicksettings/QuickSettingsTile;)V
    .locals 1
    .parameter "uri"
    .parameter "tile"

    .prologue
    .line 392
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsController;->mObserverMap:Ljava/util/HashMap;

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/phone/QuickSettingsController;->registerInMap(Ljava/lang/Object;Lcom/android/systemui/quicksettings/QuickSettingsTile;Ljava/util/HashMap;)V

    .line 393
    return-void
.end method

.method setBar(Lcom/android/systemui/statusbar/phone/PanelBar;)V
    .locals 0
    .parameter "bar"

    .prologue
    .line 407
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsController;->mBar:Lcom/android/systemui/statusbar/phone/PanelBar;

    .line 408
    return-void
.end method

.method public setImeWindowStatus(Z)V
    .locals 1
    .parameter "visible"

    .prologue
    .line 415
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsController;->mIMETile:Lcom/android/systemui/quicksettings/InputMethodTile;

    if-eqz v0, :cond_0

    .line 416
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsController;->mIMETile:Lcom/android/systemui/quicksettings/InputMethodTile;

    invoke-virtual {v0, p1}, Lcom/android/systemui/quicksettings/InputMethodTile;->toggleVisibility(Z)V

    .line 418
    :cond_0
    return-void
.end method

.method public setService(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V
    .locals 0
    .parameter "phoneStatusBar"

    .prologue
    .line 411
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsController;->mStatusBarService:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .line 412
    return-void
.end method

.method setupBroadcastReceiver()V
    .locals 5

    .prologue
    .line 366
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 367
    .local v1, filter:Landroid/content/IntentFilter;
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsController;->mReceiverMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 368
    .local v0, action:Ljava/lang/String;
    invoke-virtual {v1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    goto :goto_0

    .line 370
    .end local v0           #action:Ljava/lang/String;
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsController;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsController;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 371
    return-void
.end method

.method setupContentObserver()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 337
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 338
    .local v1, resolver:Landroid/content/ContentResolver;
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsController;->mObserverMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    .line 339
    .local v2, uri:Landroid/net/Uri;
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsController;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    goto :goto_0

    .line 341
    .end local v2           #uri:Landroid/net/Uri;
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsController;->mTileStatusUris:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    .line 342
    .restart local v2       #uri:Landroid/net/Uri;
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsController;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    goto :goto_1

    .line 344
    .end local v2           #uri:Landroid/net/Uri;
    :cond_1
    return-void
.end method

.method protected setupQuickSettings()V
    .locals 2

    .prologue
    .line 325
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/QuickSettingsController;->shutdown()V

    .line 326
    new-instance v0, Lcom/android/systemui/statusbar/phone/QuickSettingsController$QSBroadcastReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/phone/QuickSettingsController$QSBroadcastReceiver;-><init>(Lcom/android/systemui/statusbar/phone/QuickSettingsController;Lcom/android/systemui/statusbar/phone/QuickSettingsController$1;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsController;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 327
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsController;->mReceiverMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 328
    new-instance v0, Lcom/android/systemui/statusbar/phone/QuickSettingsController$QuickSettingsObserver;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsController;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/phone/QuickSettingsController$QuickSettingsObserver;-><init>(Lcom/android/systemui/statusbar/phone/QuickSettingsController;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsController;->mObserver:Landroid/database/ContentObserver;

    .line 329
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsController;->mObserverMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 330
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsController;->mTileStatusUris:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 331
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/QuickSettingsController;->loadTiles()V

    .line 332
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/QuickSettingsController;->setupBroadcastReceiver()V

    .line 333
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/QuickSettingsController;->setupContentObserver()V

    .line 334
    return-void
.end method

.method public shutdown()V
    .locals 4

    .prologue
    .line 311
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsController;->mObserver:Landroid/database/ContentObserver;

    if-eqz v2, :cond_0

    .line 312
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsController;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v3}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 314
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsController;->mReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v2, :cond_1

    .line 315
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsController;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsController;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 317
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsController;->mQuickSettingsTiles:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/quicksettings/QuickSettingsTile;

    .line 318
    .local v1, qs:Lcom/android/systemui/quicksettings/QuickSettingsTile;
    invoke-virtual {v1}, Lcom/android/systemui/quicksettings/QuickSettingsTile;->onDestroy()V

    goto :goto_0

    .line 320
    .end local v1           #qs:Lcom/android/systemui/quicksettings/QuickSettingsTile;
    :cond_2
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsController;->mQuickSettingsTiles:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 321
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsController;->mContainerView:Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView;->removeAllViews()V

    .line 322
    return-void
.end method

.method public updateResources()V
    .locals 3

    .prologue
    .line 421
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsController;->mContainerView:Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView;->updateResources()V

    .line 422
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsController;->mQuickSettingsTiles:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/quicksettings/QuickSettingsTile;

    .line 423
    .local v1, t:Lcom/android/systemui/quicksettings/QuickSettingsTile;
    invoke-virtual {v1}, Lcom/android/systemui/quicksettings/QuickSettingsTile;->updateResources()V

    goto :goto_0

    .line 425
    .end local v1           #t:Lcom/android/systemui/quicksettings/QuickSettingsTile;
    :cond_0
    return-void
.end method
