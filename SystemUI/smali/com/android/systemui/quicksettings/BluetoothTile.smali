.class public Lcom/android/systemui/quicksettings/BluetoothTile;
.super Lcom/android/systemui/quicksettings/QuickSettingsTile;
.source "BluetoothTile.java"

# interfaces
.implements Landroid/bluetooth/BluetoothAdapter$BluetoothStateChangeCallback;


# instance fields
.field private connected:Z

.field private enabled:Z

.field private mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mController:Lcom/android/systemui/statusbar/policy/BluetoothController;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/QuickSettingsController;Lcom/android/systemui/statusbar/policy/BluetoothController;)V
    .locals 3
    .parameter "context"
    .parameter "qsc"
    .parameter "controller"

    .prologue
    const/4 v0, 0x0

    .line 25
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/quicksettings/QuickSettingsTile;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/QuickSettingsController;)V

    .line 19
    iput-boolean v0, p0, Lcom/android/systemui/quicksettings/BluetoothTile;->enabled:Z

    .line 20
    iput-boolean v0, p0, Lcom/android/systemui/quicksettings/BluetoothTile;->connected:Z

    .line 26
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/quicksettings/BluetoothTile;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 27
    iput-object p3, p0, Lcom/android/systemui/quicksettings/BluetoothTile;->mController:Lcom/android/systemui/statusbar/policy/BluetoothController;

    .line 28
    iget-object v1, p0, Lcom/android/systemui/quicksettings/BluetoothTile;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/quicksettings/BluetoothTile;->enabled:Z

    .line 29
    iget-object v1, p0, Lcom/android/systemui/quicksettings/BluetoothTile;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getConnectionState()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/android/systemui/quicksettings/BluetoothTile;->connected:Z

    .line 31
    new-instance v0, Lcom/android/systemui/quicksettings/BluetoothTile$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/quicksettings/BluetoothTile$1;-><init>(Lcom/android/systemui/quicksettings/BluetoothTile;)V

    iput-object v0, p0, Lcom/android/systemui/quicksettings/BluetoothTile;->mOnClick:Landroid/view/View$OnClickListener;

    .line 43
    new-instance v0, Lcom/android/systemui/quicksettings/BluetoothTile$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/quicksettings/BluetoothTile$2;-><init>(Lcom/android/systemui/quicksettings/BluetoothTile;)V

    iput-object v0, p0, Lcom/android/systemui/quicksettings/BluetoothTile;->mOnLongClick:Landroid/view/View$OnLongClickListener;

    .line 51
    const-string v0, "android.bluetooth.adapter.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {p2, v0, p0}, Lcom/android/systemui/statusbar/phone/QuickSettingsController;->registerAction(Ljava/lang/Object;Lcom/android/systemui/quicksettings/QuickSettingsTile;)V

    .line 52
    const-string v0, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {p2, v0, p0}, Lcom/android/systemui/statusbar/phone/QuickSettingsController;->registerAction(Ljava/lang/Object;Lcom/android/systemui/quicksettings/QuickSettingsTile;)V

    .line 53
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/quicksettings/BluetoothTile;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 17
    iget-boolean v0, p0, Lcom/android/systemui/quicksettings/BluetoothTile;->enabled:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/systemui/quicksettings/BluetoothTile;)Landroid/bluetooth/BluetoothAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 17
    iget-object v0, p0, Lcom/android/systemui/quicksettings/BluetoothTile;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    return-object v0
.end method

.method private declared-synchronized updateTile()V
    .locals 2

    .prologue
    .line 89
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/systemui/quicksettings/BluetoothTile;->enabled:Z

    if-eqz v0, :cond_1

    .line 90
    iget-boolean v0, p0, Lcom/android/systemui/quicksettings/BluetoothTile;->connected:Z

    if-eqz v0, :cond_0

    .line 91
    const v0, 0x7f020059

    iput v0, p0, Lcom/android/systemui/quicksettings/BluetoothTile;->mDrawable:I

    .line 95
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/quicksettings/BluetoothTile;->mContext:Landroid/content/Context;

    const v1, 0x7f0a00de

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/quicksettings/BluetoothTile;->mLabel:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 100
    :goto_1
    monitor-exit p0

    return-void

    .line 93
    :cond_0
    const v0, 0x7f020057

    :try_start_1
    iput v0, p0, Lcom/android/systemui/quicksettings/BluetoothTile;->mDrawable:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 89
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 97
    :cond_1
    const v0, 0x7f020058

    :try_start_2
    iput v0, p0, Lcom/android/systemui/quicksettings/BluetoothTile;->mDrawable:I

    .line 98
    iget-object v0, p0, Lcom/android/systemui/quicksettings/BluetoothTile;->mContext:Landroid/content/Context;

    const v1, 0x7f0a00e0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/quicksettings/BluetoothTile;->mLabel:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method


# virtual methods
.method checkBluetoothState()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 78
    iget-object v0, p0, Lcom/android/systemui/quicksettings/BluetoothTile;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v0

    const/16 v3, 0xc

    if-ne v0, v3, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/quicksettings/BluetoothTile;->enabled:Z

    .line 79
    iget-object v0, p0, Lcom/android/systemui/quicksettings/BluetoothTile;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getConnectionState()I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_1

    :goto_1
    iput-boolean v1, p0, Lcom/android/systemui/quicksettings/BluetoothTile;->connected:Z

    .line 80
    return-void

    :cond_0
    move v0, v2

    .line 78
    goto :goto_0

    :cond_1
    move v1, v2

    .line 79
    goto :goto_1
.end method

.method public onBluetoothStateChange(Z)V
    .locals 0
    .parameter "on"

    .prologue
    .line 118
    iput-boolean p1, p0, Lcom/android/systemui/quicksettings/BluetoothTile;->enabled:Z

    .line 119
    invoke-virtual {p0}, Lcom/android/systemui/quicksettings/BluetoothTile;->updateResources()V

    .line 120
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/systemui/quicksettings/BluetoothTile;->mController:Lcom/android/systemui/statusbar/policy/BluetoothController;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/policy/BluetoothController;->removeStateChangedCallback(Landroid/bluetooth/BluetoothAdapter$BluetoothStateChangeCallback;)V

    .line 113
    invoke-super {p0}, Lcom/android/systemui/quicksettings/QuickSettingsTile;->onDestroy()V

    .line 114
    return-void
.end method

.method onPostCreate()V
    .locals 1

    .prologue
    .line 104
    invoke-virtual {p0}, Lcom/android/systemui/quicksettings/BluetoothTile;->checkBluetoothState()V

    .line 105
    invoke-direct {p0}, Lcom/android/systemui/quicksettings/BluetoothTile;->updateTile()V

    .line 106
    iget-object v0, p0, Lcom/android/systemui/quicksettings/BluetoothTile;->mController:Lcom/android/systemui/statusbar/policy/BluetoothController;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/policy/BluetoothController;->addStateChangedCallback(Landroid/bluetooth/BluetoothAdapter$BluetoothStateChangeCallback;)V

    .line 107
    invoke-super {p0}, Lcom/android/systemui/quicksettings/QuickSettingsTile;->onPostCreate()V

    .line 108
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 57
    const/4 v1, 0x0

    .line 58
    .local v1, update:Z
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v5, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 59
    const-string v2, "android.bluetooth.adapter.extra.STATE"

    const/high16 v5, -0x8000

    invoke-virtual {p2, v2, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 61
    .local v0, state:I
    const/16 v2, 0xc

    if-ne v0, v2, :cond_3

    move v2, v3

    :goto_0
    iput-boolean v2, p0, Lcom/android/systemui/quicksettings/BluetoothTile;->enabled:Z

    .line 62
    const/4 v1, 0x1

    .line 65
    .end local v0           #state:I
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v5, "android.bluetooth.adapter.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 66
    const-string v2, "android.bluetooth.adapter.extra.CONNECTION_STATE"

    invoke-virtual {p2, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 68
    .restart local v0       #state:I
    const/4 v2, 0x2

    if-ne v0, v2, :cond_4

    :goto_1
    iput-boolean v3, p0, Lcom/android/systemui/quicksettings/BluetoothTile;->connected:Z

    .line 69
    const/4 v1, 0x1

    .line 72
    .end local v0           #state:I
    :cond_1
    if-eqz v1, :cond_2

    .line 73
    invoke-virtual {p0}, Lcom/android/systemui/quicksettings/BluetoothTile;->updateResources()V

    .line 75
    :cond_2
    return-void

    .restart local v0       #state:I
    :cond_3
    move v2, v4

    .line 61
    goto :goto_0

    :cond_4
    move v3, v4

    .line 68
    goto :goto_1
.end method

.method public updateResources()V
    .locals 0

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/android/systemui/quicksettings/BluetoothTile;->updateTile()V

    .line 85
    invoke-super {p0}, Lcom/android/systemui/quicksettings/QuickSettingsTile;->updateResources()V

    .line 86
    return-void
.end method
