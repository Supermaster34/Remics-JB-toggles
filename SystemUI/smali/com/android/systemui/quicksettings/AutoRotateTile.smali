.class public Lcom/android/systemui/quicksettings/AutoRotateTile;
.super Lcom/android/systemui/quicksettings/QuickSettingsTile;
.source "AutoRotateTile.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/QuickSettingsController;Landroid/os/Handler;)V
    .locals 1
    .parameter "context"
    .parameter "qsc"
    .parameter "handler"

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/quicksettings/QuickSettingsTile;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/QuickSettingsController;)V

    .line 23
    new-instance v0, Lcom/android/systemui/quicksettings/AutoRotateTile$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/quicksettings/AutoRotateTile$1;-><init>(Lcom/android/systemui/quicksettings/AutoRotateTile;)V

    iput-object v0, p0, Lcom/android/systemui/quicksettings/AutoRotateTile;->mOnClick:Landroid/view/View$OnClickListener;

    .line 30
    new-instance v0, Lcom/android/systemui/quicksettings/AutoRotateTile$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/quicksettings/AutoRotateTile$2;-><init>(Lcom/android/systemui/quicksettings/AutoRotateTile;)V

    iput-object v0, p0, Lcom/android/systemui/quicksettings/AutoRotateTile;->mOnLongClick:Landroid/view/View$OnLongClickListener;

    .line 37
    const-string v0, "accelerometer_rotation"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p2, v0, p0}, Lcom/android/systemui/statusbar/phone/QuickSettingsController;->registerObservedContent(Landroid/net/Uri;Lcom/android/systemui/quicksettings/QuickSettingsTile;)V

    .line 39
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/quicksettings/AutoRotateTile;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/android/systemui/quicksettings/AutoRotateTile;->getAutoRotation()Z

    move-result v0

    return v0
.end method

.method private getAutoRotation()Z
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/systemui/quicksettings/AutoRotateTile;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/view/RotationPolicy;->isRotationLocked(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private declared-synchronized updateTile()V
    .locals 2

    .prologue
    .line 48
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/android/systemui/quicksettings/AutoRotateTile;->getAutoRotation()Z

    move-result v0

    if-nez v0, :cond_0

    .line 49
    const v0, 0x7f020087

    iput v0, p0, Lcom/android/systemui/quicksettings/AutoRotateTile;->mDrawable:I

    .line 50
    iget-object v0, p0, Lcom/android/systemui/quicksettings/AutoRotateTile;->mContext:Landroid/content/Context;

    const v1, 0x7f0a00e3

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/quicksettings/AutoRotateTile;->mLabel:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    :goto_0
    monitor-exit p0

    return-void

    .line 52
    :cond_0
    const v0, 0x7f02003e

    :try_start_1
    iput v0, p0, Lcom/android/systemui/quicksettings/AutoRotateTile;->mDrawable:I

    .line 53
    iget-object v0, p0, Lcom/android/systemui/quicksettings/AutoRotateTile;->mContext:Landroid/content/Context;

    const v1, 0x7f0a00e2

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/quicksettings/AutoRotateTile;->mLabel:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 48
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public onChangeUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V
    .locals 0
    .parameter "resolver"
    .parameter "uri"

    .prologue
    .line 69
    invoke-virtual {p0}, Lcom/android/systemui/quicksettings/AutoRotateTile;->updateResources()V

    .line 70
    return-void
.end method

.method onPostCreate()V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/android/systemui/quicksettings/AutoRotateTile;->updateTile()V

    .line 60
    invoke-super {p0}, Lcom/android/systemui/quicksettings/QuickSettingsTile;->onPostCreate()V

    .line 61
    return-void
.end method

.method public updateResources()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/android/systemui/quicksettings/AutoRotateTile;->updateTile()V

    .line 44
    invoke-virtual {p0}, Lcom/android/systemui/quicksettings/AutoRotateTile;->updateQuickSettings()V

    .line 45
    return-void
.end method
