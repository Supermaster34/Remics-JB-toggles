.class public Lcom/android/systemui/quicksettings/LteTile;
.super Lcom/android/systemui/quicksettings/QuickSettingsTile;
.source "LteTile.java"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/QuickSettingsController;)V
    .locals 1
    .parameter "context"
    .parameter "qsc"

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/quicksettings/QuickSettingsTile;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/QuickSettingsController;)V

    .line 27
    iput-object p1, p0, Lcom/android/systemui/quicksettings/LteTile;->mContext:Landroid/content/Context;

    .line 29
    new-instance v0, Lcom/android/systemui/quicksettings/LteTile$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/quicksettings/LteTile$1;-><init>(Lcom/android/systemui/quicksettings/LteTile;)V

    iput-object v0, p0, Lcom/android/systemui/quicksettings/LteTile;->mOnClick:Landroid/view/View$OnClickListener;

    .line 37
    new-instance v0, Lcom/android/systemui/quicksettings/LteTile$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/quicksettings/LteTile$2;-><init>(Lcom/android/systemui/quicksettings/LteTile;)V

    iput-object v0, p0, Lcom/android/systemui/quicksettings/LteTile;->mOnLongClick:Landroid/view/View$OnLongClickListener;

    .line 48
    const-string v0, "preferred_network_mode"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p2, v0, p0}, Lcom/android/systemui/statusbar/phone/QuickSettingsController;->registerObservedContent(Landroid/net/Uri;Lcom/android/systemui/quicksettings/QuickSettingsTile;)V

    .line 49
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/quicksettings/LteTile;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/android/systemui/quicksettings/LteTile;->toggleLteState()V

    return-void
.end method

.method private static getCurrentPreferredNetworkMode(Landroid/content/Context;)I
    .locals 4
    .parameter "context"

    .prologue
    .line 107
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "preferred_network_mode"

    const/4 v3, -0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 109
    .local v0, network:I
    return v0
.end method

.method private toggleLteState()V
    .locals 4

    .prologue
    .line 88
    iget-object v2, p0, Lcom/android/systemui/quicksettings/LteTile;->mContext:Landroid/content/Context;

    const-string v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 90
    .local v1, tm:Landroid/telephony/TelephonyManager;
    iget-object v2, p0, Lcom/android/systemui/quicksettings/LteTile;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/systemui/quicksettings/LteTile;->getCurrentPreferredNetworkMode(Landroid/content/Context;)I

    move-result v0

    .line 91
    .local v0, network:I
    packed-switch v0, :pswitch_data_0

    .line 101
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/telephony/TelephonyManager;->toggleLTE(Z)V

    .line 104
    :goto_0
    return-void

    .line 98
    :pswitch_0
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/telephony/TelephonyManager;->toggleLTE(Z)V

    goto :goto_0

    .line 91
    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private declared-synchronized updateTile()V
    .locals 3

    .prologue
    .line 69
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/quicksettings/LteTile;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/quicksettings/LteTile;->getCurrentPreferredNetworkMode(Landroid/content/Context;)I

    move-result v0

    .line 70
    .local v0, network:I
    packed-switch v0, :pswitch_data_0

    .line 81
    const v1, 0x7f02007b

    iput v1, p0, Lcom/android/systemui/quicksettings/LteTile;->mDrawable:I

    .line 82
    iget-object v1, p0, Lcom/android/systemui/quicksettings/LteTile;->mContext:Landroid/content/Context;

    const v2, 0x7f0a0028

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/quicksettings/LteTile;->mLabel:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    :goto_0
    monitor-exit p0

    return-void

    .line 77
    :pswitch_0
    const v1, 0x7f02007c

    :try_start_1
    iput v1, p0, Lcom/android/systemui/quicksettings/LteTile;->mDrawable:I

    .line 78
    iget-object v1, p0, Lcom/android/systemui/quicksettings/LteTile;->mContext:Landroid/content/Context;

    const v2, 0x7f0a0027

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/quicksettings/LteTile;->mLabel:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 69
    .end local v0           #network:I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 70
    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public onChangeUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V
    .locals 0
    .parameter "resolver"
    .parameter "uri"

    .prologue
    .line 59
    invoke-virtual {p0}, Lcom/android/systemui/quicksettings/LteTile;->updateResources()V

    .line 60
    return-void
.end method

.method onPostCreate()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/android/systemui/quicksettings/LteTile;->updateTile()V

    .line 54
    invoke-super {p0}, Lcom/android/systemui/quicksettings/QuickSettingsTile;->onPostCreate()V

    .line 55
    return-void
.end method

.method public updateResources()V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/android/systemui/quicksettings/LteTile;->updateTile()V

    .line 65
    invoke-super {p0}, Lcom/android/systemui/quicksettings/QuickSettingsTile;->updateResources()V

    .line 66
    return-void
.end method
