.class public Lcom/android/systemui/quicksettings/DockBatteryTile;
.super Lcom/android/systemui/quicksettings/QuickSettingsTile;
.source "DockBatteryTile.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/DockBatteryController$DockBatteryStateChangeCallback;


# instance fields
.field private mCharging:Z

.field private mChargingDockBatteryLevels:Landroid/graphics/drawable/LevelListDrawable;

.field private mController:Lcom/android/systemui/statusbar/policy/DockBatteryController;

.field private mDockBatteryIcon:Landroid/graphics/drawable/Drawable;

.field private mDockBatteryLevel:I

.field private mDockBatteryLevels:Landroid/graphics/drawable/LevelListDrawable;

.field private mPresent:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/QuickSettingsController;Lcom/android/systemui/statusbar/policy/DockBatteryController;)V
    .locals 2
    .parameter "context"
    .parameter "qsc"
    .parameter "controller"

    .prologue
    const/4 v1, 0x0

    .line 29
    const v0, 0x7f040014

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/quicksettings/QuickSettingsTile;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/QuickSettingsController;I)V

    .line 20
    iput-boolean v1, p0, Lcom/android/systemui/quicksettings/DockBatteryTile;->mPresent:Z

    .line 21
    iput-boolean v1, p0, Lcom/android/systemui/quicksettings/DockBatteryTile;->mCharging:Z

    .line 22
    iput v1, p0, Lcom/android/systemui/quicksettings/DockBatteryTile;->mDockBatteryLevel:I

    .line 31
    iput-object p3, p0, Lcom/android/systemui/quicksettings/DockBatteryTile;->mController:Lcom/android/systemui/statusbar/policy/DockBatteryController;

    .line 33
    new-instance v0, Lcom/android/systemui/quicksettings/DockBatteryTile$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/quicksettings/DockBatteryTile$1;-><init>(Lcom/android/systemui/quicksettings/DockBatteryTile;)V

    iput-object v0, p0, Lcom/android/systemui/quicksettings/DockBatteryTile;->mOnClick:Landroid/view/View$OnClickListener;

    .line 39
    return-void
.end method

.method private declared-synchronized updateTile()V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 69
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/quicksettings/DockBatteryTile;->mTile:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;

    iget-boolean v2, p0, Lcom/android/systemui/quicksettings/DockBatteryTile;->mPresent:Z

    if-eqz v2, :cond_0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->setVisibility(I)V

    .line 70
    iget-object v0, p0, Lcom/android/systemui/quicksettings/DockBatteryTile;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020139

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/LevelListDrawable;

    iput-object v0, p0, Lcom/android/systemui/quicksettings/DockBatteryTile;->mDockBatteryLevels:Landroid/graphics/drawable/LevelListDrawable;

    .line 71
    iget-object v0, p0, Lcom/android/systemui/quicksettings/DockBatteryTile;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02013a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/LevelListDrawable;

    iput-object v0, p0, Lcom/android/systemui/quicksettings/DockBatteryTile;->mChargingDockBatteryLevels:Landroid/graphics/drawable/LevelListDrawable;

    .line 72
    iget-boolean v0, p0, Lcom/android/systemui/quicksettings/DockBatteryTile;->mCharging:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/quicksettings/DockBatteryTile;->mChargingDockBatteryLevels:Landroid/graphics/drawable/LevelListDrawable;

    :goto_1
    iput-object v0, p0, Lcom/android/systemui/quicksettings/DockBatteryTile;->mDockBatteryIcon:Landroid/graphics/drawable/Drawable;

    .line 75
    iget v0, p0, Lcom/android/systemui/quicksettings/DockBatteryTile;->mDockBatteryLevel:I

    const/16 v1, 0x64

    if-ne v0, v1, :cond_2

    .line 76
    iget-object v0, p0, Lcom/android/systemui/quicksettings/DockBatteryTile;->mContext:Landroid/content/Context;

    const v1, 0x7f0a003d

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/quicksettings/DockBatteryTile;->mLabel:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    :goto_2
    monitor-exit p0

    return-void

    .line 69
    :cond_0
    const/16 v0, 0x8

    goto :goto_0

    .line 72
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/android/systemui/quicksettings/DockBatteryTile;->mDockBatteryLevels:Landroid/graphics/drawable/LevelListDrawable;

    goto :goto_1

    .line 78
    :cond_2
    iget-boolean v0, p0, Lcom/android/systemui/quicksettings/DockBatteryTile;->mCharging:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/quicksettings/DockBatteryTile;->mContext:Landroid/content/Context;

    const v1, 0x7f0a00dd

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/android/systemui/quicksettings/DockBatteryTile;->mDockBatteryLevel:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_3
    iput-object v0, p0, Lcom/android/systemui/quicksettings/DockBatteryTile;->mLabel:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 69
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 78
    :cond_3
    :try_start_2
    iget-object v0, p0, Lcom/android/systemui/quicksettings/DockBatteryTile;->mContext:Landroid/content/Context;

    const v1, 0x7f0a0059

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/android/systemui/quicksettings/DockBatteryTile;->mDockBatteryLevel:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    goto :goto_3
.end method


# virtual methods
.method public onDestroy()V
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/systemui/quicksettings/DockBatteryTile;->mController:Lcom/android/systemui/statusbar/policy/DockBatteryController;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/policy/DockBatteryController;->removeStateChangedCallback(Lcom/android/systemui/statusbar/policy/DockBatteryController$DockBatteryStateChangeCallback;)V

    .line 51
    invoke-super {p0}, Lcom/android/systemui/quicksettings/QuickSettingsTile;->onDestroy()V

    .line 52
    return-void
.end method

.method public onDockBatteryLevelChanged(IZZ)V
    .locals 0
    .parameter "level"
    .parameter "present"
    .parameter "pluggedIn"

    .prologue
    .line 56
    iput p1, p0, Lcom/android/systemui/quicksettings/DockBatteryTile;->mDockBatteryLevel:I

    .line 57
    iput-boolean p3, p0, Lcom/android/systemui/quicksettings/DockBatteryTile;->mCharging:Z

    .line 58
    iput-boolean p2, p0, Lcom/android/systemui/quicksettings/DockBatteryTile;->mPresent:Z

    .line 59
    invoke-virtual {p0}, Lcom/android/systemui/quicksettings/DockBatteryTile;->updateResources()V

    .line 60
    return-void
.end method

.method onPostCreate()V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/android/systemui/quicksettings/DockBatteryTile;->updateTile()V

    .line 44
    iget-object v0, p0, Lcom/android/systemui/quicksettings/DockBatteryTile;->mController:Lcom/android/systemui/statusbar/policy/DockBatteryController;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/policy/DockBatteryController;->addStateChangedCallback(Lcom/android/systemui/statusbar/policy/DockBatteryController$DockBatteryStateChangeCallback;)V

    .line 45
    invoke-super {p0}, Lcom/android/systemui/quicksettings/QuickSettingsTile;->onPostCreate()V

    .line 46
    return-void
.end method

.method updateQuickSettings()V
    .locals 4

    .prologue
    .line 88
    iget-object v2, p0, Lcom/android/systemui/quicksettings/DockBatteryTile;->mTile:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;

    const v3, 0x7f090032

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 89
    .local v1, tv:Landroid/widget/TextView;
    iget-object v2, p0, Lcom/android/systemui/quicksettings/DockBatteryTile;->mLabel:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    iget-object v2, p0, Lcom/android/systemui/quicksettings/DockBatteryTile;->mTile:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;

    const v3, 0x7f090031

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 91
    .local v0, iv:Landroid/widget/ImageView;
    iget-object v2, p0, Lcom/android/systemui/quicksettings/DockBatteryTile;->mDockBatteryIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 92
    iget v2, p0, Lcom/android/systemui/quicksettings/DockBatteryTile;->mDockBatteryLevel:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageLevel(I)V

    .line 93
    return-void
.end method

.method public updateResources()V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/android/systemui/quicksettings/DockBatteryTile;->updateTile()V

    .line 65
    invoke-super {p0}, Lcom/android/systemui/quicksettings/QuickSettingsTile;->updateResources()V

    .line 66
    return-void
.end method
