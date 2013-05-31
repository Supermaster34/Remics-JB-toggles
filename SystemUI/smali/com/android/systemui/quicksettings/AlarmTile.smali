.class public Lcom/android/systemui/quicksettings/AlarmTile;
.super Lcom/android/systemui/quicksettings/QuickSettingsTile;
.source "AlarmTile.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/QuickSettingsController;Landroid/os/Handler;)V
    .locals 1
    .parameter "context"
    .parameter "qsc"
    .parameter "handler"

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/quicksettings/QuickSettingsTile;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/QuickSettingsController;)V

    .line 24
    new-instance v0, Lcom/android/systemui/quicksettings/AlarmTile$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/quicksettings/AlarmTile$1;-><init>(Lcom/android/systemui/quicksettings/AlarmTile;)V

    iput-object v0, p0, Lcom/android/systemui/quicksettings/AlarmTile;->mOnClick:Landroid/view/View$OnClickListener;

    .line 35
    const-string v0, "next_alarm_formatted"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p2, v0, p0}, Lcom/android/systemui/statusbar/phone/QuickSettingsController;->registerObservedContent(Landroid/net/Uri;Lcom/android/systemui/quicksettings/QuickSettingsTile;)V

    .line 37
    return-void
.end method

.method private declared-synchronized updateTile()V
    .locals 2

    .prologue
    .line 52
    monitor-enter p0

    const v0, 0x7f02003d

    :try_start_0
    iput v0, p0, Lcom/android/systemui/quicksettings/AlarmTile;->mDrawable:I

    .line 53
    iget-object v0, p0, Lcom/android/systemui/quicksettings/AlarmTile;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "next_alarm_formatted"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/quicksettings/AlarmTile;->mLabel:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    monitor-exit p0

    return-void

    .line 52
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
    .line 64
    invoke-virtual {p0}, Lcom/android/systemui/quicksettings/AlarmTile;->updateResources()V

    .line 65
    return-void
.end method

.method onPostCreate()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/android/systemui/quicksettings/AlarmTile;->updateTile()V

    .line 42
    invoke-super {p0}, Lcom/android/systemui/quicksettings/QuickSettingsTile;->onPostCreate()V

    .line 43
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 59
    invoke-virtual {p0}, Lcom/android/systemui/quicksettings/AlarmTile;->updateResources()V

    .line 60
    return-void
.end method

.method public updateQuickSettings()V
    .locals 2

    .prologue
    .line 69
    iget-object v1, p0, Lcom/android/systemui/quicksettings/AlarmTile;->mTile:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;

    iget-object v0, p0, Lcom/android/systemui/quicksettings/AlarmTile;->mLabel:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->setVisibility(I)V

    .line 70
    invoke-super {p0}, Lcom/android/systemui/quicksettings/QuickSettingsTile;->updateQuickSettings()V

    .line 71
    return-void

    .line 69
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public updateResources()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/android/systemui/quicksettings/AlarmTile;->updateTile()V

    .line 48
    invoke-super {p0}, Lcom/android/systemui/quicksettings/QuickSettingsTile;->updateResources()V

    .line 49
    return-void
.end method
