.class public Lcom/android/systemui/quicksettings/UsbTetherTile;
.super Lcom/android/systemui/quicksettings/QuickSettingsTile;
.source "UsbTetherTile.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mMassStorageActive:Z

.field private mUsbConnected:Z

.field private mUsbRegexs:[Ljava/lang/String;

.field private mUsbTethered:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/QuickSettingsController;)V
    .locals 1
    .parameter "context"
    .parameter "qsc"

    .prologue
    const/4 v0, 0x0

    .line 24
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/quicksettings/QuickSettingsTile;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/QuickSettingsController;)V

    .line 16
    iput-boolean v0, p0, Lcom/android/systemui/quicksettings/UsbTetherTile;->mUsbTethered:Z

    .line 17
    iput-boolean v0, p0, Lcom/android/systemui/quicksettings/UsbTetherTile;->mUsbConnected:Z

    .line 18
    iput-boolean v0, p0, Lcom/android/systemui/quicksettings/UsbTetherTile;->mMassStorageActive:Z

    .line 21
    const-string v0, "UsbTetherTile"

    iput-object v0, p0, Lcom/android/systemui/quicksettings/UsbTetherTile;->TAG:Ljava/lang/String;

    .line 26
    new-instance v0, Lcom/android/systemui/quicksettings/UsbTetherTile$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/quicksettings/UsbTetherTile$1;-><init>(Lcom/android/systemui/quicksettings/UsbTetherTile;)V

    iput-object v0, p0, Lcom/android/systemui/quicksettings/UsbTetherTile;->mOnClick:Landroid/view/View$OnClickListener;

    .line 34
    new-instance v0, Lcom/android/systemui/quicksettings/UsbTetherTile$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/quicksettings/UsbTetherTile$2;-><init>(Lcom/android/systemui/quicksettings/UsbTetherTile;)V

    iput-object v0, p0, Lcom/android/systemui/quicksettings/UsbTetherTile;->mOnLongClick:Landroid/view/View$OnLongClickListener;

    .line 43
    const-string v0, "android.net.conn.TETHER_STATE_CHANGED"

    invoke-virtual {p2, v0, p0}, Lcom/android/systemui/statusbar/phone/QuickSettingsController;->registerAction(Ljava/lang/Object;Lcom/android/systemui/quicksettings/QuickSettingsTile;)V

    .line 44
    const-string v0, "android.hardware.usb.action.USB_STATE"

    invoke-virtual {p2, v0, p0}, Lcom/android/systemui/statusbar/phone/QuickSettingsController;->registerAction(Ljava/lang/Object;Lcom/android/systemui/quicksettings/QuickSettingsTile;)V

    .line 45
    const-string v0, "android.intent.action.MEDIA_SHARED"

    invoke-virtual {p2, v0, p0}, Lcom/android/systemui/statusbar/phone/QuickSettingsController;->registerAction(Ljava/lang/Object;Lcom/android/systemui/quicksettings/QuickSettingsTile;)V

    .line 46
    const-string v0, "android.intent.action.MEDIA_UNSHARED"

    invoke-virtual {p2, v0, p0}, Lcom/android/systemui/statusbar/phone/QuickSettingsController;->registerAction(Ljava/lang/Object;Lcom/android/systemui/quicksettings/QuickSettingsTile;)V

    .line 47
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/quicksettings/UsbTetherTile;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 14
    iget-boolean v0, p0, Lcom/android/systemui/quicksettings/UsbTetherTile;->mUsbConnected:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/systemui/quicksettings/UsbTetherTile;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 14
    iget-boolean v0, p0, Lcom/android/systemui/quicksettings/UsbTetherTile;->mUsbTethered:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/systemui/quicksettings/UsbTetherTile;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14
    invoke-direct {p0, p1}, Lcom/android/systemui/quicksettings/UsbTetherTile;->setUsbTethering(Z)V

    return-void
.end method

.method private setUsbTethering(Z)V
    .locals 3
    .parameter "enabled"

    .prologue
    .line 130
    iget-object v1, p0, Lcom/android/systemui/quicksettings/UsbTetherTile;->mContext:Landroid/content/Context;

    const-string v2, "connectivity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 131
    .local v0, cm:Landroid/net/ConnectivityManager;
    invoke-virtual {v0, p1}, Landroid/net/ConnectivityManager;->setUsbTethering(Z)I

    move-result v1

    if-eqz v1, :cond_0

    .line 134
    :cond_0
    return-void
.end method

.method private updateState()V
    .locals 6

    .prologue
    .line 101
    iget-object v4, p0, Lcom/android/systemui/quicksettings/UsbTetherTile;->mContext:Landroid/content/Context;

    const-string v5, "connectivity"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 103
    .local v1, cm:Landroid/net/ConnectivityManager;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getTetherableUsbRegexs()[Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/quicksettings/UsbTetherTile;->mUsbRegexs:[Ljava/lang/String;

    .line 105
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getTetherableIfaces()[Ljava/lang/String;

    move-result-object v0

    .line 106
    .local v0, available:[Ljava/lang/String;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getTetheredIfaces()[Ljava/lang/String;

    move-result-object v3

    .line 107
    .local v3, tethered:[Ljava/lang/String;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getTetheringErroredIfaces()[Ljava/lang/String;

    move-result-object v2

    .line 108
    .local v2, errored:[Ljava/lang/String;
    invoke-direct {p0, v0, v3, v2}, Lcom/android/systemui/quicksettings/UsbTetherTile;->updateState([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 109
    return-void
.end method

.method private updateState([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0
    .parameter "available"
    .parameter "tethered"
    .parameter "errored"

    .prologue
    .line 113
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/quicksettings/UsbTetherTile;->updateUsbState([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 114
    return-void
.end method

.method private declared-synchronized updateTile()V
    .locals 2

    .prologue
    .line 85
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/android/systemui/quicksettings/UsbTetherTile;->updateState()V

    .line 86
    iget-boolean v0, p0, Lcom/android/systemui/quicksettings/UsbTetherTile;->mUsbConnected:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/quicksettings/UsbTetherTile;->mMassStorageActive:Z

    if-nez v0, :cond_1

    .line 87
    iget-boolean v0, p0, Lcom/android/systemui/quicksettings/UsbTetherTile;->mUsbTethered:Z

    if-eqz v0, :cond_0

    .line 88
    const v0, 0x7f0200b2

    iput v0, p0, Lcom/android/systemui/quicksettings/UsbTetherTile;->mDrawable:I

    .line 89
    iget-object v0, p0, Lcom/android/systemui/quicksettings/UsbTetherTile;->mContext:Landroid/content/Context;

    const v1, 0x7f0a0022

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/quicksettings/UsbTetherTile;->mLabel:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    :goto_0
    monitor-exit p0

    return-void

    .line 91
    :cond_0
    const v0, 0x7f0200b0

    :try_start_1
    iput v0, p0, Lcom/android/systemui/quicksettings/UsbTetherTile;->mDrawable:I

    .line 92
    iget-object v0, p0, Lcom/android/systemui/quicksettings/UsbTetherTile;->mContext:Landroid/content/Context;

    const v1, 0x7f0a0021

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/quicksettings/UsbTetherTile;->mLabel:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 85
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 95
    :cond_1
    const v0, 0x7f0200b1

    :try_start_2
    iput v0, p0, Lcom/android/systemui/quicksettings/UsbTetherTile;->mDrawable:I

    .line 96
    iget-object v0, p0, Lcom/android/systemui/quicksettings/UsbTetherTile;->mContext:Landroid/content/Context;

    const v1, 0x7f0a0020

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/quicksettings/UsbTetherTile;->mLabel:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method private updateUsbState([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 9
    .parameter "available"
    .parameter "tethered"
    .parameter "errored"

    .prologue
    .line 120
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/systemui/quicksettings/UsbTetherTile;->mUsbTethered:Z

    .line 121
    move-object v0, p2

    .local v0, arr$:[Ljava/lang/String;
    array-length v4, v0

    .local v4, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    move v3, v2

    .end local v0           #arr$:[Ljava/lang/String;
    .end local v2           #i$:I
    .end local v4           #len$:I
    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_2

    aget-object v7, v0, v3

    .line 122
    .local v7, s:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/systemui/quicksettings/UsbTetherTile;->mUsbRegexs:[Ljava/lang/String;

    .local v1, arr$:[Ljava/lang/String;
    array-length v5, v1

    .local v5, len$:I
    const/4 v2, 0x0

    .end local v3           #i$:I
    .restart local v2       #i$:I
    :goto_1
    if-ge v2, v5, :cond_1

    aget-object v6, v1, v2

    .line 123
    .local v6, regex:Ljava/lang/String;
    invoke-virtual {v7, v6}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/android/systemui/quicksettings/UsbTetherTile;->mUsbTethered:Z

    .line 122
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 121
    .end local v6           #regex:Ljava/lang/String;
    :cond_1
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    .end local v2           #i$:I
    .restart local v3       #i$:I
    goto :goto_0

    .line 127
    .end local v1           #arr$:[Ljava/lang/String;
    .end local v5           #len$:I
    .end local v7           #s:Ljava/lang/String;
    :cond_2
    return-void
.end method


# virtual methods
.method onPostCreate()V
    .locals 0

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/android/systemui/quicksettings/UsbTetherTile;->updateTile()V

    .line 69
    invoke-super {p0}, Lcom/android/systemui/quicksettings/QuickSettingsTile;->onPostCreate()V

    .line 70
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v2, 0x0

    .line 51
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.hardware.usb.action.USB_STATE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    const-string v0, "connected"

    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/quicksettings/UsbTetherTile;->mUsbConnected:Z

    .line 55
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.MEDIA_SHARED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 56
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/quicksettings/UsbTetherTile;->mMassStorageActive:Z

    .line 59
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.MEDIA_UNSHARED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 60
    iput-boolean v2, p0, Lcom/android/systemui/quicksettings/UsbTetherTile;->mMassStorageActive:Z

    .line 63
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/quicksettings/UsbTetherTile;->updateResources()V

    .line 64
    return-void
.end method

.method updateQuickSettings()V
    .locals 2

    .prologue
    .line 74
    iget-object v1, p0, Lcom/android/systemui/quicksettings/UsbTetherTile;->mTile:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;

    iget-boolean v0, p0, Lcom/android/systemui/quicksettings/UsbTetherTile;->mUsbConnected:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->setVisibility(I)V

    .line 75
    invoke-super {p0}, Lcom/android/systemui/quicksettings/QuickSettingsTile;->updateQuickSettings()V

    .line 76
    return-void

    .line 74
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public updateResources()V
    .locals 0

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/android/systemui/quicksettings/UsbTetherTile;->updateTile()V

    .line 81
    invoke-super {p0}, Lcom/android/systemui/quicksettings/QuickSettingsTile;->updateResources()V

    .line 82
    return-void
.end method
