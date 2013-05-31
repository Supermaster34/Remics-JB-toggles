.class public Lcom/android/systemui/quicksettings/TorchTile;
.super Lcom/android/systemui/quicksettings/QuickSettingsTile;
.source "TorchTile.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/QuickSettingsController;Landroid/os/Handler;)V
    .locals 1
    .parameter "context"
    .parameter "qsc"
    .parameter "handler"

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/quicksettings/QuickSettingsTile;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/QuickSettingsController;)V

    .line 22
    new-instance v0, Lcom/android/systemui/quicksettings/TorchTile$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/quicksettings/TorchTile$1;-><init>(Lcom/android/systemui/quicksettings/TorchTile;)V

    iput-object v0, p0, Lcom/android/systemui/quicksettings/TorchTile;->mOnClick:Landroid/view/View$OnClickListener;

    .line 30
    new-instance v0, Lcom/android/systemui/quicksettings/TorchTile$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/quicksettings/TorchTile$2;-><init>(Lcom/android/systemui/quicksettings/TorchTile;)V

    iput-object v0, p0, Lcom/android/systemui/quicksettings/TorchTile;->mOnLongClick:Landroid/view/View$OnLongClickListener;

    .line 40
    const-string v0, "torch_state"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p2, v0, p0}, Lcom/android/systemui/statusbar/phone/QuickSettingsController;->registerObservedContent(Landroid/net/Uri;Lcom/android/systemui/quicksettings/QuickSettingsTile;)V

    .line 41
    return-void
.end method

.method private declared-synchronized updateTile()V
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 56
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/quicksettings/TorchTile;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "torch_state"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    .line 59
    .local v0, enabled:Z
    :goto_0
    if-eqz v0, :cond_1

    .line 60
    const v1, 0x7f0200ad

    iput v1, p0, Lcom/android/systemui/quicksettings/TorchTile;->mDrawable:I

    .line 61
    iget-object v1, p0, Lcom/android/systemui/quicksettings/TorchTile;->mContext:Landroid/content/Context;

    const v2, 0x7f0a001a

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/quicksettings/TorchTile;->mLabel:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    :goto_1
    monitor-exit p0

    return-void

    .end local v0           #enabled:Z
    :cond_0
    move v0, v1

    .line 56
    goto :goto_0

    .line 63
    .restart local v0       #enabled:Z
    :cond_1
    const v1, 0x7f0200ac

    :try_start_1
    iput v1, p0, Lcom/android/systemui/quicksettings/TorchTile;->mDrawable:I

    .line 64
    iget-object v1, p0, Lcom/android/systemui/quicksettings/TorchTile;->mContext:Landroid/content/Context;

    const v2, 0x7f0a001b

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/quicksettings/TorchTile;->mLabel:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 56
    .end local v0           #enabled:Z
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method


# virtual methods
.method public onChangeUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V
    .locals 0
    .parameter "resolver"
    .parameter "uri"

    .prologue
    .line 70
    invoke-virtual {p0}, Lcom/android/systemui/quicksettings/TorchTile;->updateResources()V

    .line 71
    return-void
.end method

.method onPostCreate()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/android/systemui/quicksettings/TorchTile;->updateTile()V

    .line 46
    invoke-super {p0}, Lcom/android/systemui/quicksettings/QuickSettingsTile;->onPostCreate()V

    .line 47
    return-void
.end method

.method public updateResources()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/android/systemui/quicksettings/TorchTile;->updateTile()V

    .line 52
    invoke-super {p0}, Lcom/android/systemui/quicksettings/QuickSettingsTile;->updateResources()V

    .line 53
    return-void
.end method
