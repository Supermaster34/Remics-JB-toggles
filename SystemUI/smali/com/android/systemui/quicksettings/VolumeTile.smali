.class public Lcom/android/systemui/quicksettings/VolumeTile;
.super Lcom/android/systemui/quicksettings/QuickSettingsTile;
.source "VolumeTile.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/QuickSettingsController;Landroid/os/Handler;)V
    .locals 1
    .parameter "context"
    .parameter "qsc"
    .parameter "handler"

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/quicksettings/QuickSettingsTile;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/QuickSettingsController;)V

    .line 20
    new-instance v0, Lcom/android/systemui/quicksettings/VolumeTile$1;

    invoke-direct {v0, p0, p2}, Lcom/android/systemui/quicksettings/VolumeTile$1;-><init>(Lcom/android/systemui/quicksettings/VolumeTile;Lcom/android/systemui/statusbar/phone/QuickSettingsController;)V

    iput-object v0, p0, Lcom/android/systemui/quicksettings/VolumeTile;->mOnClick:Landroid/view/View$OnClickListener;

    .line 30
    new-instance v0, Lcom/android/systemui/quicksettings/VolumeTile$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/quicksettings/VolumeTile$2;-><init>(Lcom/android/systemui/quicksettings/VolumeTile;)V

    iput-object v0, p0, Lcom/android/systemui/quicksettings/VolumeTile;->mOnLongClick:Landroid/view/View$OnLongClickListener;

    .line 38
    return-void
.end method

.method private declared-synchronized updateTile()V
    .locals 2

    .prologue
    .line 53
    monitor-enter p0

    const v0, 0x7f0200b5

    :try_start_0
    iput v0, p0, Lcom/android/systemui/quicksettings/VolumeTile;->mDrawable:I

    .line 54
    iget-object v0, p0, Lcom/android/systemui/quicksettings/VolumeTile;->mContext:Landroid/content/Context;

    const v1, 0x7f0a0029

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/quicksettings/VolumeTile;->mLabel:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    monitor-exit p0

    return-void

    .line 53
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method onPostCreate()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/android/systemui/quicksettings/VolumeTile;->updateTile()V

    .line 43
    invoke-super {p0}, Lcom/android/systemui/quicksettings/QuickSettingsTile;->onPostCreate()V

    .line 44
    return-void
.end method

.method public updateResources()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/android/systemui/quicksettings/VolumeTile;->updateTile()V

    .line 49
    invoke-virtual {p0}, Lcom/android/systemui/quicksettings/VolumeTile;->updateQuickSettings()V

    .line 50
    return-void
.end method
