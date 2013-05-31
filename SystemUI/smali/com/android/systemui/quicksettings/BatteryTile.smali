.class public Lcom/android/systemui/quicksettings/BatteryTile;
.super Lcom/android/systemui/quicksettings/QuickSettingsTile;
.source "BatteryTile.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;


# instance fields
.field private batteryIcon:Landroid/graphics/drawable/Drawable;

.field private batteryLevel:I

.field private batteryLevels:Landroid/graphics/drawable/LevelListDrawable;

.field private charging:Z

.field private chargingBatteryLevels:Landroid/graphics/drawable/LevelListDrawable;

.field private mController:Lcom/android/systemui/statusbar/policy/BatteryController;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/QuickSettingsController;Lcom/android/systemui/statusbar/policy/BatteryController;)V
    .locals 2
    .parameter "context"
    .parameter "qsc"
    .parameter "controller"

    .prologue
    const/4 v1, 0x0

    .line 29
    const v0, 0x7f040010

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/quicksettings/QuickSettingsTile;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/QuickSettingsController;I)V

    .line 21
    iput-boolean v1, p0, Lcom/android/systemui/quicksettings/BatteryTile;->charging:Z

    .line 22
    iput v1, p0, Lcom/android/systemui/quicksettings/BatteryTile;->batteryLevel:I

    .line 31
    iput-object p3, p0, Lcom/android/systemui/quicksettings/BatteryTile;->mController:Lcom/android/systemui/statusbar/policy/BatteryController;

    .line 33
    new-instance v0, Lcom/android/systemui/quicksettings/BatteryTile$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/quicksettings/BatteryTile$1;-><init>(Lcom/android/systemui/quicksettings/BatteryTile;)V

    iput-object v0, p0, Lcom/android/systemui/quicksettings/BatteryTile;->mOnClick:Landroid/view/View$OnClickListener;

    .line 39
    return-void
.end method

.method private declared-synchronized updateTile()V
    .locals 5

    .prologue
    .line 68
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/quicksettings/BatteryTile;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020137

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/LevelListDrawable;

    iput-object v0, p0, Lcom/android/systemui/quicksettings/BatteryTile;->batteryLevels:Landroid/graphics/drawable/LevelListDrawable;

    .line 69
    iget-object v0, p0, Lcom/android/systemui/quicksettings/BatteryTile;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020138

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/LevelListDrawable;

    iput-object v0, p0, Lcom/android/systemui/quicksettings/BatteryTile;->chargingBatteryLevels:Landroid/graphics/drawable/LevelListDrawable;

    .line 70
    iget-boolean v0, p0, Lcom/android/systemui/quicksettings/BatteryTile;->charging:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/quicksettings/BatteryTile;->chargingBatteryLevels:Landroid/graphics/drawable/LevelListDrawable;

    :goto_0
    iput-object v0, p0, Lcom/android/systemui/quicksettings/BatteryTile;->batteryIcon:Landroid/graphics/drawable/Drawable;

    .line 73
    iget v0, p0, Lcom/android/systemui/quicksettings/BatteryTile;->batteryLevel:I

    const/16 v1, 0x64

    if-ne v0, v1, :cond_1

    .line 74
    iget-object v0, p0, Lcom/android/systemui/quicksettings/BatteryTile;->mContext:Landroid/content/Context;

    const v1, 0x7f0a003d

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/quicksettings/BatteryTile;->mLabel:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    :goto_1
    monitor-exit p0

    return-void

    .line 70
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/systemui/quicksettings/BatteryTile;->batteryLevels:Landroid/graphics/drawable/LevelListDrawable;

    goto :goto_0

    .line 76
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/quicksettings/BatteryTile;->charging:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/quicksettings/BatteryTile;->mContext:Landroid/content/Context;

    const v1, 0x7f0a00dd

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/android/systemui/quicksettings/BatteryTile;->batteryLevel:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_2
    iput-object v0, p0, Lcom/android/systemui/quicksettings/BatteryTile;->mLabel:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 68
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 76
    :cond_2
    :try_start_2
    iget-object v0, p0, Lcom/android/systemui/quicksettings/BatteryTile;->mContext:Landroid/content/Context;

    const v1, 0x7f0a0059

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/android/systemui/quicksettings/BatteryTile;->batteryLevel:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    goto :goto_2
.end method


# virtual methods
.method public onBatteryLevelChanged(IZ)V
    .locals 0
    .parameter "level"
    .parameter "pluggedIn"

    .prologue
    .line 56
    iput p1, p0, Lcom/android/systemui/quicksettings/BatteryTile;->batteryLevel:I

    .line 57
    iput-boolean p2, p0, Lcom/android/systemui/quicksettings/BatteryTile;->charging:Z

    .line 58
    invoke-virtual {p0}, Lcom/android/systemui/quicksettings/BatteryTile;->updateResources()V

    .line 59
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/systemui/quicksettings/BatteryTile;->mController:Lcom/android/systemui/statusbar/policy/BatteryController;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/policy/BatteryController;->removeStateChangedCallback(Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;)V

    .line 51
    invoke-super {p0}, Lcom/android/systemui/quicksettings/QuickSettingsTile;->onDestroy()V

    .line 52
    return-void
.end method

.method onPostCreate()V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/android/systemui/quicksettings/BatteryTile;->updateTile()V

    .line 44
    iget-object v0, p0, Lcom/android/systemui/quicksettings/BatteryTile;->mController:Lcom/android/systemui/statusbar/policy/BatteryController;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/policy/BatteryController;->addStateChangedCallback(Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;)V

    .line 45
    invoke-super {p0}, Lcom/android/systemui/quicksettings/QuickSettingsTile;->onPostCreate()V

    .line 46
    return-void
.end method

.method updateQuickSettings()V
    .locals 4

    .prologue
    .line 86
    iget-object v2, p0, Lcom/android/systemui/quicksettings/BatteryTile;->mTile:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;

    const v3, 0x7f09002e

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 87
    .local v1, tv:Landroid/widget/TextView;
    iget-object v2, p0, Lcom/android/systemui/quicksettings/BatteryTile;->mLabel:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    iget-object v2, p0, Lcom/android/systemui/quicksettings/BatteryTile;->mTile:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;

    const v3, 0x7f09002d

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 89
    .local v0, iv:Landroid/widget/ImageView;
    iget-object v2, p0, Lcom/android/systemui/quicksettings/BatteryTile;->batteryIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 90
    iget v2, p0, Lcom/android/systemui/quicksettings/BatteryTile;->batteryLevel:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageLevel(I)V

    .line 91
    return-void
.end method

.method public updateResources()V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/android/systemui/quicksettings/BatteryTile;->updateTile()V

    .line 64
    invoke-super {p0}, Lcom/android/systemui/quicksettings/QuickSettingsTile;->updateResources()V

    .line 65
    return-void
.end method
