.class public Lcom/android/systemui/quicksettings/MobileNetworkTile;
.super Lcom/android/systemui/quicksettings/QuickSettingsTile;
.source "MobileNetworkTile.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/NetworkController$NetworkSignalChangedCallback;


# instance fields
.field private dataContentDescription:Ljava/lang/String;

.field private mCm:Landroid/net/ConnectivityManager;

.field private mController:Lcom/android/systemui/statusbar/policy/NetworkController;

.field private mDataTypeIconId:I

.field private mDescription:Ljava/lang/String;

.field private mEnabled:Z

.field private signalContentDescription:Ljava/lang/String;

.field private wifiOn:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/QuickSettingsController;Lcom/android/systemui/statusbar/policy/NetworkController;)V
    .locals 2
    .parameter "context"
    .parameter "qsc"
    .parameter "controller"

    .prologue
    const/4 v1, 0x0

    .line 39
    const v0, 0x7f04001a

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/quicksettings/QuickSettingsTile;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/QuickSettingsController;I)V

    .line 31
    iput v1, p0, Lcom/android/systemui/quicksettings/MobileNetworkTile;->mDataTypeIconId:I

    .line 34
    iput-boolean v1, p0, Lcom/android/systemui/quicksettings/MobileNetworkTile;->wifiOn:Z

    .line 41
    iput-object p3, p0, Lcom/android/systemui/quicksettings/MobileNetworkTile;->mController:Lcom/android/systemui/statusbar/policy/NetworkController;

    .line 42
    iget-object v0, p0, Lcom/android/systemui/quicksettings/MobileNetworkTile;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/android/systemui/quicksettings/MobileNetworkTile;->mCm:Landroid/net/ConnectivityManager;

    .line 44
    new-instance v0, Lcom/android/systemui/quicksettings/MobileNetworkTile$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/quicksettings/MobileNetworkTile$1;-><init>(Lcom/android/systemui/quicksettings/MobileNetworkTile;)V

    iput-object v0, p0, Lcom/android/systemui/quicksettings/MobileNetworkTile;->mOnClick:Landroid/view/View$OnClickListener;

    .line 57
    new-instance v0, Lcom/android/systemui/quicksettings/MobileNetworkTile$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/quicksettings/MobileNetworkTile$2;-><init>(Lcom/android/systemui/quicksettings/MobileNetworkTile;)V

    iput-object v0, p0, Lcom/android/systemui/quicksettings/MobileNetworkTile;->mOnLongClick:Landroid/view/View$OnLongClickListener;

    .line 68
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/quicksettings/MobileNetworkTile;)Landroid/net/ConnectivityManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/android/systemui/quicksettings/MobileNetworkTile;->mCm:Landroid/net/ConnectivityManager;

    return-object v0
.end method

.method public static removeTrailingPeriod(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "string"

    .prologue
    .line 167
    if-nez p0, :cond_1

    const/4 p0, 0x0

    .line 172
    .local v0, length:I
    :cond_0
    :goto_0
    return-object p0

    .line 168
    .end local v0           #length:I
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 169
    .restart local v0       #length:I
    const-string v1, "."

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 170
    const/4 v1, 0x0

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    goto :goto_0
.end method

.method private declared-synchronized updateTile()V
    .locals 2

    .prologue
    .line 90
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/quicksettings/MobileNetworkTile;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 91
    .local v0, r:Landroid/content/res/Resources;
    iget-boolean v1, p0, Lcom/android/systemui/quicksettings/MobileNetworkTile;->mEnabled:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/systemui/quicksettings/MobileNetworkTile;->mDataTypeIconId:I

    if-lez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/quicksettings/MobileNetworkTile;->wifiOn:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/quicksettings/MobileNetworkTile;->dataContentDescription:Ljava/lang/String;

    :goto_0
    iput-object v1, p0, Lcom/android/systemui/quicksettings/MobileNetworkTile;->dataContentDescription:Ljava/lang/String;

    .line 94
    iget-boolean v1, p0, Lcom/android/systemui/quicksettings/MobileNetworkTile;->mEnabled:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/quicksettings/MobileNetworkTile;->mDescription:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/systemui/quicksettings/MobileNetworkTile;->removeTrailingPeriod(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_1
    iput-object v1, p0, Lcom/android/systemui/quicksettings/MobileNetworkTile;->mLabel:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 97
    monitor-exit p0

    return-void

    .line 91
    :cond_0
    const v1, 0x7f0a008c

    :try_start_1
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 94
    :cond_1
    const v1, 0x7f0a00e8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    goto :goto_1

    .line 90
    .end local v0           #r:Landroid/content/res/Resources;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method


# virtual methods
.method public onAirplaneModeChanged(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 138
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/systemui/quicksettings/MobileNetworkTile;->mController:Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->removeNetworkSignalChangedCallback(Lcom/android/systemui/statusbar/policy/NetworkController$NetworkSignalChangedCallback;)V

    .line 80
    invoke-super {p0}, Lcom/android/systemui/quicksettings/QuickSettingsTile;->onDestroy()V

    .line 81
    return-void
.end method

.method public onMobileDataSignalChanged(ZILjava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "enabled"
    .parameter "mobileSignalIconId"
    .parameter "mobileSignalContentDescriptionId"
    .parameter "dataTypeIconId"
    .parameter "dataTypeContentDescriptionId"
    .parameter "description"

    .prologue
    .line 110
    iget-object v1, p0, Lcom/android/systemui/quicksettings/MobileNetworkTile;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/internal/util/cm/QSUtils;->deviceSupportsMobileData(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 112
    iget-object v1, p0, Lcom/android/systemui/quicksettings/MobileNetworkTile;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 113
    .local v0, r:Landroid/content/res/Resources;
    if-eqz p1, :cond_1

    if-lez p2, :cond_1

    move v1, p2

    :goto_0
    iput v1, p0, Lcom/android/systemui/quicksettings/MobileNetworkTile;->mDrawable:I

    .line 116
    if-eqz p1, :cond_2

    if-lez p2, :cond_2

    iget-object v1, p0, Lcom/android/systemui/quicksettings/MobileNetworkTile;->signalContentDescription:Ljava/lang/String;

    :goto_1
    iput-object v1, p0, Lcom/android/systemui/quicksettings/MobileNetworkTile;->signalContentDescription:Ljava/lang/String;

    .line 121
    if-eqz p1, :cond_3

    if-lez p4, :cond_3

    iget-boolean v1, p0, Lcom/android/systemui/quicksettings/MobileNetworkTile;->wifiOn:Z

    if-nez v1, :cond_3

    .line 122
    iput p4, p0, Lcom/android/systemui/quicksettings/MobileNetworkTile;->mDataTypeIconId:I

    .line 129
    :goto_2
    iput-boolean p1, p0, Lcom/android/systemui/quicksettings/MobileNetworkTile;->mEnabled:Z

    .line 130
    iput-object p6, p0, Lcom/android/systemui/quicksettings/MobileNetworkTile;->mDescription:Ljava/lang/String;

    .line 132
    invoke-virtual {p0}, Lcom/android/systemui/quicksettings/MobileNetworkTile;->updateResources()V

    .line 134
    .end local v0           #r:Landroid/content/res/Resources;
    :cond_0
    return-void

    .line 113
    .restart local v0       #r:Landroid/content/res/Resources;
    :cond_1
    const v1, 0x7f0200a6

    goto :goto_0

    .line 116
    :cond_2
    const v1, 0x7f0a009c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 123
    :cond_3
    iget-object v1, p0, Lcom/android/systemui/quicksettings/MobileNetworkTile;->mCm:Landroid/net/ConnectivityManager;

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v1

    if-nez v1, :cond_4

    .line 124
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/systemui/quicksettings/MobileNetworkTile;->mDataTypeIconId:I

    goto :goto_2

    .line 126
    :cond_4
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/systemui/quicksettings/MobileNetworkTile;->mDataTypeIconId:I

    goto :goto_2
.end method

.method onPostCreate()V
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/systemui/quicksettings/MobileNetworkTile;->mController:Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->addNetworkSignalChangedCallback(Lcom/android/systemui/statusbar/policy/NetworkController$NetworkSignalChangedCallback;)V

    .line 73
    invoke-direct {p0}, Lcom/android/systemui/quicksettings/MobileNetworkTile;->updateTile()V

    .line 74
    invoke-super {p0}, Lcom/android/systemui/quicksettings/QuickSettingsTile;->onPostCreate()V

    .line 75
    return-void
.end method

.method public onWifiSignalChanged(ZILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "enabled"
    .parameter "wifiSignalIconId"
    .parameter "wifitSignalContentDescriptionId"
    .parameter "description"

    .prologue
    .line 102
    iput-boolean p1, p0, Lcom/android/systemui/quicksettings/MobileNetworkTile;->wifiOn:Z

    .line 103
    return-void
.end method

.method updateOverlayImage(I)V
    .locals 3
    .parameter "dataTypeIconId"

    .prologue
    .line 155
    iget-object v1, p0, Lcom/android/systemui/quicksettings/MobileNetworkTile;->mTile:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;

    const v2, 0x7f090038

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 156
    .local v0, iov:Landroid/widget/ImageView;
    if-lez p1, :cond_0

    .line 157
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 163
    :goto_0
    return-void

    .line 158
    :cond_0
    const/4 v1, -0x1

    if-ne p1, v1, :cond_1

    .line 159
    const v1, 0x7f020093

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 161
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method updateQuickSettings()V
    .locals 8

    .prologue
    .line 142
    iget-object v2, p0, Lcom/android/systemui/quicksettings/MobileNetworkTile;->mTile:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;

    const v3, 0x7f090039

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 143
    .local v1, tv:Landroid/widget/TextView;
    iget-object v2, p0, Lcom/android/systemui/quicksettings/MobileNetworkTile;->mTile:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;

    const v3, 0x7f090037

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 145
    .local v0, iv:Landroid/widget/ImageView;
    iget v2, p0, Lcom/android/systemui/quicksettings/MobileNetworkTile;->mDrawable:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 146
    iget v2, p0, Lcom/android/systemui/quicksettings/MobileNetworkTile;->mDataTypeIconId:I

    invoke-virtual {p0, v2}, Lcom/android/systemui/quicksettings/MobileNetworkTile;->updateOverlayImage(I)V

    .line 147
    iget-object v2, p0, Lcom/android/systemui/quicksettings/MobileNetworkTile;->mLabel:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 148
    iget-object v2, p0, Lcom/android/systemui/quicksettings/MobileNetworkTile;->mTile:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;

    iget-object v3, p0, Lcom/android/systemui/quicksettings/MobileNetworkTile;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a00c2

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/android/systemui/quicksettings/MobileNetworkTile;->signalContentDescription:Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    iget-object v7, p0, Lcom/android/systemui/quicksettings/MobileNetworkTile;->dataContentDescription:Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x2

    iget-object v7, p0, Lcom/android/systemui/quicksettings/MobileNetworkTile;->mLabel:Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 152
    return-void
.end method

.method public updateResources()V
    .locals 0

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/android/systemui/quicksettings/MobileNetworkTile;->updateTile()V

    .line 86
    invoke-super {p0}, Lcom/android/systemui/quicksettings/QuickSettingsTile;->updateResources()V

    .line 87
    return-void
.end method
