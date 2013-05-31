.class public Lcom/android/systemui/quicksettings/PreferencesTile;
.super Lcom/android/systemui/quicksettings/QuickSettingsTile;
.source "PreferencesTile.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/QuickSettingsController;)V
    .locals 1
    .parameter "context"
    .parameter "qsc"

    .prologue
    .line 14
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/quicksettings/QuickSettingsTile;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/QuickSettingsController;)V

    .line 16
    new-instance v0, Lcom/android/systemui/quicksettings/PreferencesTile$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/quicksettings/PreferencesTile$1;-><init>(Lcom/android/systemui/quicksettings/PreferencesTile;)V

    iput-object v0, p0, Lcom/android/systemui/quicksettings/PreferencesTile;->mOnClick:Landroid/view/View$OnClickListener;

    .line 23
    return-void
.end method

.method private declared-synchronized updateTile()V
    .locals 2

    .prologue
    .line 38
    monitor-enter p0

    const v0, 0x7f02008a

    :try_start_0
    iput v0, p0, Lcom/android/systemui/quicksettings/PreferencesTile;->mDrawable:I

    .line 39
    iget-object v0, p0, Lcom/android/systemui/quicksettings/PreferencesTile;->mContext:Landroid/content/Context;

    const v1, 0x7f0a00e9

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/quicksettings/PreferencesTile;->mLabel:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    monitor-exit p0

    return-void

    .line 38
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method onPostCreate()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/android/systemui/quicksettings/PreferencesTile;->updateTile()V

    .line 28
    invoke-super {p0}, Lcom/android/systemui/quicksettings/QuickSettingsTile;->onPostCreate()V

    .line 29
    return-void
.end method

.method public updateResources()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/android/systemui/quicksettings/PreferencesTile;->updateTile()V

    .line 34
    invoke-super {p0}, Lcom/android/systemui/quicksettings/QuickSettingsTile;->updateResources()V

    .line 35
    return-void
.end method
