.class public Lcom/android/systemui/quicksettings/ScreenTimeoutTile;
.super Lcom/android/systemui/quicksettings/QuickSettingsTile;
.source "ScreenTimeoutTile.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/QuickSettingsController;)V
    .locals 1
    .parameter "context"
    .parameter "qsc"

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/quicksettings/QuickSettingsTile;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/QuickSettingsController;)V

    .line 34
    new-instance v0, Lcom/android/systemui/quicksettings/ScreenTimeoutTile$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/quicksettings/ScreenTimeoutTile$1;-><init>(Lcom/android/systemui/quicksettings/ScreenTimeoutTile;)V

    iput-object v0, p0, Lcom/android/systemui/quicksettings/ScreenTimeoutTile;->mOnClick:Landroid/view/View$OnClickListener;

    .line 42
    new-instance v0, Lcom/android/systemui/quicksettings/ScreenTimeoutTile$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/quicksettings/ScreenTimeoutTile$2;-><init>(Lcom/android/systemui/quicksettings/ScreenTimeoutTile;)V

    iput-object v0, p0, Lcom/android/systemui/quicksettings/ScreenTimeoutTile;->mOnLongClick:Landroid/view/View$OnLongClickListener;

    .line 51
    const-string v0, "screen_off_timeout"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p2, v0, p0}, Lcom/android/systemui/statusbar/phone/QuickSettingsController;->registerObservedContent(Landroid/net/Uri;Lcom/android/systemui/quicksettings/QuickSettingsTile;)V

    .line 53
    return-void
.end method

.method private getCurrentCMMode()I
    .locals 3

    .prologue
    .line 166
    iget-object v0, p0, Lcom/android/systemui/quicksettings/ScreenTimeoutTile;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "expanded_screentimeout_mode"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private getScreenTimeout()I
    .locals 3

    .prologue
    .line 161
    iget-object v0, p0, Lcom/android/systemui/quicksettings/ScreenTimeoutTile;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_off_timeout"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private makeTimeoutSummaryString(Landroid/content/Context;I)Ljava/lang/String;
    .locals 7
    .parameter "context"
    .parameter "timeout"

    .prologue
    const/16 v3, 0x3c

    const/4 v6, 0x1

    .line 130
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 134
    .local v0, res:Landroid/content/res/Resources;
    div-int/lit16 p2, p2, 0x3e8

    .line 136
    if-lt p2, v3, :cond_3

    rem-int/lit8 v2, p2, 0x3c

    if-nez v2, :cond_3

    .line 138
    div-int/lit8 p2, p2, 0x3c

    .line 139
    if-lt p2, v3, :cond_1

    rem-int/lit8 v2, p2, 0x3c

    if-nez v2, :cond_1

    .line 141
    div-int/lit8 p2, p2, 0x3c

    .line 142
    if-ne p2, v6, :cond_0

    const v1, 0x1040411

    .line 156
    .local v1, resId:I
    :goto_0
    const v2, 0x7f0a001f

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v0, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 142
    .end local v1           #resId:I
    :cond_0
    const v1, 0x1040412

    goto :goto_0

    .line 146
    :cond_1
    if-ne p2, v6, :cond_2

    const v1, 0x1040413

    .restart local v1       #resId:I
    :goto_1
    goto :goto_0

    .end local v1           #resId:I
    :cond_2
    const v1, 0x1040414

    goto :goto_1

    .line 151
    :cond_3
    if-ne p2, v6, :cond_4

    const v1, 0x1040415

    .restart local v1       #resId:I
    :goto_2
    goto :goto_0

    .end local v1           #resId:I
    :cond_4
    const v1, 0x1040416

    goto :goto_2
.end method

.method private declared-synchronized updateTile()V
    .locals 2

    .prologue
    .line 73
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/android/systemui/quicksettings/ScreenTimeoutTile;->getScreenTimeout()I

    move-result v0

    .line 74
    .local v0, timeout:I
    iget-object v1, p0, Lcom/android/systemui/quicksettings/ScreenTimeoutTile;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1, v0}, Lcom/android/systemui/quicksettings/ScreenTimeoutTile;->makeTimeoutSummaryString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/quicksettings/ScreenTimeoutTile;->mLabel:Ljava/lang/String;

    .line 75
    const v1, 0x7f020088

    iput v1, p0, Lcom/android/systemui/quicksettings/ScreenTimeoutTile;->mDrawable:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    monitor-exit p0

    return-void

    .line 73
    .end local v0           #timeout:I
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
    .line 57
    invoke-virtual {p0}, Lcom/android/systemui/quicksettings/ScreenTimeoutTile;->updateResources()V

    .line 58
    return-void
.end method

.method onPostCreate()V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/android/systemui/quicksettings/ScreenTimeoutTile;->updateTile()V

    .line 63
    invoke-super {p0}, Lcom/android/systemui/quicksettings/QuickSettingsTile;->onPostCreate()V

    .line 64
    return-void
.end method

.method protected toggleState()V
    .locals 4

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/android/systemui/quicksettings/ScreenTimeoutTile;->getScreenTimeout()I

    move-result v1

    .line 90
    .local v1, screenTimeout:I
    invoke-direct {p0}, Lcom/android/systemui/quicksettings/ScreenTimeoutTile;->getCurrentCMMode()I

    move-result v0

    .line 92
    .local v0, currentMode:I
    const/16 v2, 0x3a98

    if-ge v1, v2, :cond_1

    .line 93
    if-nez v0, :cond_0

    .line 94
    const/16 v1, 0x3a98

    .line 124
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/quicksettings/ScreenTimeoutTile;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "screen_off_timeout"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 127
    return-void

    .line 96
    :cond_0
    const/16 v1, 0x7530

    goto :goto_0

    .line 98
    :cond_1
    const/16 v2, 0x7530

    if-ge v1, v2, :cond_3

    .line 99
    if-nez v0, :cond_2

    .line 100
    const v1, 0xea60

    goto :goto_0

    .line 102
    :cond_2
    const/16 v1, 0x7530

    goto :goto_0

    .line 104
    :cond_3
    const v2, 0xea60

    if-ge v1, v2, :cond_5

    .line 105
    if-nez v0, :cond_4

    .line 106
    const v1, 0xea60

    goto :goto_0

    .line 108
    :cond_4
    const v1, 0x1d4c0

    goto :goto_0

    .line 110
    :cond_5
    const v2, 0x1d4c0

    if-ge v1, v2, :cond_7

    .line 111
    if-nez v0, :cond_6

    .line 112
    const v1, 0x493e0

    goto :goto_0

    .line 114
    :cond_6
    const v1, 0x1d4c0

    goto :goto_0

    .line 116
    :cond_7
    const v2, 0x493e0

    if-ge v1, v2, :cond_8

    .line 117
    const v1, 0x493e0

    goto :goto_0

    .line 118
    :cond_8
    const/4 v2, 0x1

    if-ne v0, v2, :cond_9

    .line 119
    const/16 v1, 0x7530

    goto :goto_0

    .line 121
    :cond_9
    const/16 v1, 0x3a98

    goto :goto_0
.end method

.method public updateResources()V
    .locals 0

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/android/systemui/quicksettings/ScreenTimeoutTile;->updateTile()V

    .line 69
    invoke-super {p0}, Lcom/android/systemui/quicksettings/QuickSettingsTile;->updateResources()V

    .line 70
    return-void
.end method
