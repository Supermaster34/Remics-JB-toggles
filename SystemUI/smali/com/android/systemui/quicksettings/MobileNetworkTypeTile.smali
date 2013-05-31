.class public Lcom/android/systemui/quicksettings/MobileNetworkTypeTile;
.super Lcom/android/systemui/quicksettings/QuickSettingsTile;
.source "MobileNetworkTypeTile.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/NetworkController$NetworkSignalChangedCallback;


# instance fields
.field private mController:Lcom/android/systemui/statusbar/policy/NetworkController;

.field private mIntendedMode:I

.field private mInternalState:I

.field private mMode:I

.field private mState:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/QuickSettingsController;Lcom/android/systemui/statusbar/policy/NetworkController;)V
    .locals 1
    .parameter "context"
    .parameter "qsc"
    .parameter "controller"

    .prologue
    const/16 v0, -0x63

    .line 48
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/quicksettings/QuickSettingsTile;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/QuickSettingsController;)V

    .line 42
    iput v0, p0, Lcom/android/systemui/quicksettings/MobileNetworkTypeTile;->mMode:I

    .line 43
    iput v0, p0, Lcom/android/systemui/quicksettings/MobileNetworkTypeTile;->mIntendedMode:I

    .line 44
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/systemui/quicksettings/MobileNetworkTypeTile;->mInternalState:I

    .line 50
    iput-object p3, p0, Lcom/android/systemui/quicksettings/MobileNetworkTypeTile;->mController:Lcom/android/systemui/statusbar/policy/NetworkController;

    .line 52
    new-instance v0, Lcom/android/systemui/quicksettings/MobileNetworkTypeTile$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/quicksettings/MobileNetworkTypeTile$1;-><init>(Lcom/android/systemui/quicksettings/MobileNetworkTypeTile;)V

    iput-object v0, p0, Lcom/android/systemui/quicksettings/MobileNetworkTypeTile;->mOnClick:Landroid/view/View$OnClickListener;

    .line 94
    new-instance v0, Lcom/android/systemui/quicksettings/MobileNetworkTypeTile$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/quicksettings/MobileNetworkTypeTile$2;-><init>(Lcom/android/systemui/quicksettings/MobileNetworkTypeTile;)V

    iput-object v0, p0, Lcom/android/systemui/quicksettings/MobileNetworkTypeTile;->mOnLongClick:Landroid/view/View$OnLongClickListener;

    .line 105
    const-string v0, "com.android.internal.telephony.NETWORK_MODE_CHANGED"

    invoke-virtual {p2, v0, p0}, Lcom/android/systemui/statusbar/phone/QuickSettingsController;->registerAction(Ljava/lang/Object;Lcom/android/systemui/quicksettings/QuickSettingsTile;)V

    .line 106
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/quicksettings/MobileNetworkTypeTile;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/android/systemui/quicksettings/MobileNetworkTypeTile;->getCurrentCMMode()I

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/systemui/quicksettings/MobileNetworkTypeTile;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget v0, p0, Lcom/android/systemui/quicksettings/MobileNetworkTypeTile;->mMode:I

    return v0
.end method

.method static synthetic access$102(Lcom/android/systemui/quicksettings/MobileNetworkTypeTile;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 19
    iput p1, p0, Lcom/android/systemui/quicksettings/MobileNetworkTypeTile;->mMode:I

    return p1
.end method

.method static synthetic access$202(Lcom/android/systemui/quicksettings/MobileNetworkTypeTile;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 19
    iput p1, p0, Lcom/android/systemui/quicksettings/MobileNetworkTypeTile;->mInternalState:I

    return p1
.end method

.method static synthetic access$302(Lcom/android/systemui/quicksettings/MobileNetworkTypeTile;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 19
    iput p1, p0, Lcom/android/systemui/quicksettings/MobileNetworkTypeTile;->mIntendedMode:I

    return p1
.end method

.method private static get2G3G(Landroid/content/Context;)I
    .locals 3
    .parameter "context"

    .prologue
    .line 175
    const/16 v0, 0x63

    .line 177
    .local v0, state:I
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "preferred_network_mode"

    invoke-static {v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 182
    :goto_0
    return v0

    .line 179
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private getCurrentCMMode()I
    .locals 3

    .prologue
    .line 209
    iget-object v0, p0, Lcom/android/systemui/quicksettings/MobileNetworkTypeTile;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "expanded_network_mode"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private networkModeToState()I
    .locals 3

    .prologue
    const/4 v0, 0x5

    .line 186
    iget v1, p0, Lcom/android/systemui/quicksettings/MobileNetworkTypeTile;->mInternalState:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/android/systemui/quicksettings/MobileNetworkTypeTile;->mInternalState:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    .line 205
    :cond_0
    :goto_0
    return v0

    .line 190
    :cond_1
    iget v1, p0, Lcom/android/systemui/quicksettings/MobileNetworkTypeTile;->mMode:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 194
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 196
    :pswitch_1
    const/4 v0, 0x2

    goto :goto_0

    .line 202
    :pswitch_2
    const-string v0, "NetworkModeQuickSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected network mode ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/quicksettings/MobileNetworkTypeTile;->mMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    const/4 v0, 0x6

    goto :goto_0

    .line 190
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method private declared-synchronized updateTile()V
    .locals 3

    .prologue
    const/4 v2, 0x2

    .line 141
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/quicksettings/MobileNetworkTypeTile;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/quicksettings/MobileNetworkTypeTile;->get2G3G(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/quicksettings/MobileNetworkTypeTile;->mMode:I

    .line 142
    invoke-direct {p0}, Lcom/android/systemui/quicksettings/MobileNetworkTypeTile;->networkModeToState()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/quicksettings/MobileNetworkTypeTile;->mState:I

    .line 144
    iget-object v0, p0, Lcom/android/systemui/quicksettings/MobileNetworkTypeTile;->mContext:Landroid/content/Context;

    const v1, 0x7f0a0016

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/quicksettings/MobileNetworkTypeTile;->mLabel:Ljava/lang/String;

    .line 146
    iget v0, p0, Lcom/android/systemui/quicksettings/MobileNetworkTypeTile;->mState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    packed-switch v0, :pswitch_data_0

    .line 172
    :goto_0
    :pswitch_0
    monitor-exit p0

    return-void

    .line 148
    :pswitch_1
    const v0, 0x7f0200ae

    :try_start_1
    iput v0, p0, Lcom/android/systemui/quicksettings/MobileNetworkTypeTile;->mDrawable:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 141
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 151
    :pswitch_2
    const v0, 0x7f020039

    :try_start_2
    iput v0, p0, Lcom/android/systemui/quicksettings/MobileNetworkTypeTile;->mDrawable:I

    goto :goto_0

    .line 154
    :pswitch_3
    iget v0, p0, Lcom/android/systemui/quicksettings/MobileNetworkTypeTile;->mMode:I

    if-ne v0, v2, :cond_0

    .line 155
    const v0, 0x7f02003a

    iput v0, p0, Lcom/android/systemui/quicksettings/MobileNetworkTypeTile;->mDrawable:I

    goto :goto_0

    .line 157
    :cond_0
    const v0, 0x7f020038

    iput v0, p0, Lcom/android/systemui/quicksettings/MobileNetworkTypeTile;->mDrawable:I

    goto :goto_0

    .line 161
    :pswitch_4
    iget v0, p0, Lcom/android/systemui/quicksettings/MobileNetworkTypeTile;->mInternalState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 162
    iget v0, p0, Lcom/android/systemui/quicksettings/MobileNetworkTypeTile;->mIntendedMode:I

    if-ne v0, v2, :cond_1

    .line 163
    const v0, 0x7f02003a

    iput v0, p0, Lcom/android/systemui/quicksettings/MobileNetworkTypeTile;->mDrawable:I

    goto :goto_0

    .line 165
    :cond_1
    const v0, 0x7f020038

    iput v0, p0, Lcom/android/systemui/quicksettings/MobileNetworkTypeTile;->mDrawable:I

    goto :goto_0

    .line 168
    :cond_2
    const v0, 0x7f020039

    iput v0, p0, Lcom/android/systemui/quicksettings/MobileNetworkTypeTile;->mDrawable:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 146
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public onAirplaneModeChanged(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 229
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/systemui/quicksettings/MobileNetworkTypeTile;->mController:Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->removeNetworkSignalChangedCallback(Lcom/android/systemui/statusbar/policy/NetworkController$NetworkSignalChangedCallback;)V

    .line 131
    invoke-super {p0}, Lcom/android/systemui/quicksettings/QuickSettingsTile;->onDestroy()V

    .line 132
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
    .line 224
    invoke-virtual {p0}, Lcom/android/systemui/quicksettings/MobileNetworkTypeTile;->updateResources()V

    .line 225
    return-void
.end method

.method onPostCreate()V
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/android/systemui/quicksettings/MobileNetworkTypeTile;->mController:Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->addNetworkSignalChangedCallback(Lcom/android/systemui/statusbar/policy/NetworkController$NetworkSignalChangedCallback;)V

    .line 124
    invoke-direct {p0}, Lcom/android/systemui/quicksettings/MobileNetworkTypeTile;->updateTile()V

    .line 125
    invoke-super {p0}, Lcom/android/systemui/quicksettings/QuickSettingsTile;->onPostCreate()V

    .line 126
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 110
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 111
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "networkMode"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/quicksettings/MobileNetworkTypeTile;->mMode:I

    .line 113
    iget v0, p0, Lcom/android/systemui/quicksettings/MobileNetworkTypeTile;->mMode:I

    iput v0, p0, Lcom/android/systemui/quicksettings/MobileNetworkTypeTile;->mIntendedMode:I

    .line 117
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/quicksettings/MobileNetworkTypeTile;->networkModeToState()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/quicksettings/MobileNetworkTypeTile;->mInternalState:I

    .line 118
    invoke-virtual {p0}, Lcom/android/systemui/quicksettings/MobileNetworkTypeTile;->updateResources()V

    .line 119
    return-void
.end method

.method public onWifiSignalChanged(ZILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "enabled"
    .parameter "wifiSignalIconId"
    .parameter "wifitSignalContentDescriptionId"
    .parameter "description"

    .prologue
    .line 217
    return-void
.end method

.method public updateResources()V
    .locals 0

    .prologue
    .line 136
    invoke-direct {p0}, Lcom/android/systemui/quicksettings/MobileNetworkTypeTile;->updateTile()V

    .line 137
    invoke-super {p0}, Lcom/android/systemui/quicksettings/QuickSettingsTile;->updateResources()V

    .line 138
    return-void
.end method
