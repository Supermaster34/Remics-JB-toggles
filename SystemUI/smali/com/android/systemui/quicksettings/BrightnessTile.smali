.class public Lcom/android/systemui/quicksettings/BrightnessTile;
.super Lcom/android/systemui/quicksettings/QuickSettingsTile;
.source "BrightnessTile.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/BrightnessController$BrightnessStateChangeCallback;


# instance fields
.field private mBrightnessDialog:Landroid/app/Dialog;

.field private final mBrightnessDialogLongTimeout:I

.field private final mDismissBrightnessDialogRunnable:Ljava/lang/Runnable;

.field private final mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/QuickSettingsController;Landroid/os/Handler;)V
    .locals 2
    .parameter "context"
    .parameter "qsc"
    .parameter "handler"

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/quicksettings/QuickSettingsTile;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/QuickSettingsController;)V

    .line 100
    new-instance v0, Lcom/android/systemui/quicksettings/BrightnessTile$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/quicksettings/BrightnessTile$3;-><init>(Lcom/android/systemui/quicksettings/BrightnessTile;)V

    iput-object v0, p0, Lcom/android/systemui/quicksettings/BrightnessTile;->mDismissBrightnessDialogRunnable:Ljava/lang/Runnable;

    .line 40
    iput-object p3, p0, Lcom/android/systemui/quicksettings/BrightnessTile;->mHandler:Landroid/os/Handler;

    .line 41
    iget-object v0, p0, Lcom/android/systemui/quicksettings/BrightnessTile;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d000c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/quicksettings/BrightnessTile;->mBrightnessDialogLongTimeout:I

    .line 43
    new-instance v0, Lcom/android/systemui/quicksettings/BrightnessTile$1;

    invoke-direct {v0, p0, p2}, Lcom/android/systemui/quicksettings/BrightnessTile$1;-><init>(Lcom/android/systemui/quicksettings/BrightnessTile;Lcom/android/systemui/statusbar/phone/QuickSettingsController;)V

    iput-object v0, p0, Lcom/android/systemui/quicksettings/BrightnessTile;->mOnClick:Landroid/view/View$OnClickListener;

    .line 52
    new-instance v0, Lcom/android/systemui/quicksettings/BrightnessTile$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/quicksettings/BrightnessTile$2;-><init>(Lcom/android/systemui/quicksettings/BrightnessTile;)V

    iput-object v0, p0, Lcom/android/systemui/quicksettings/BrightnessTile;->mOnLongClick:Landroid/view/View$OnLongClickListener;

    .line 62
    const-string v0, "screen_brightness"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p2, v0, p0}, Lcom/android/systemui/statusbar/phone/QuickSettingsController;->registerObservedContent(Landroid/net/Uri;Lcom/android/systemui/quicksettings/QuickSettingsTile;)V

    .line 63
    const-string v0, "screen_brightness_mode"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p2, v0, p0}, Lcom/android/systemui/statusbar/phone/QuickSettingsController;->registerObservedContent(Landroid/net/Uri;Lcom/android/systemui/quicksettings/QuickSettingsTile;)V

    .line 64
    invoke-virtual {p0}, Lcom/android/systemui/quicksettings/BrightnessTile;->onBrightnessLevelChanged()V

    .line 65
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/quicksettings/BrightnessTile;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/android/systemui/quicksettings/BrightnessTile;->showBrightnessDialog()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/quicksettings/BrightnessTile;)Landroid/app/Dialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/android/systemui/quicksettings/BrightnessTile;->mBrightnessDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method private dismissBrightnessDialog(I)V
    .locals 4
    .parameter "timeout"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/systemui/quicksettings/BrightnessTile;->mBrightnessDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/android/systemui/quicksettings/BrightnessTile;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/quicksettings/BrightnessTile;->mDismissBrightnessDialogRunnable:Ljava/lang/Runnable;

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 98
    :cond_0
    return-void
.end method

.method private showBrightnessDialog()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    .line 68
    iget-object v0, p0, Lcom/android/systemui/quicksettings/BrightnessTile;->mBrightnessDialog:Landroid/app/Dialog;

    if-nez v0, :cond_0

    .line 69
    new-instance v0, Landroid/app/Dialog;

    iget-object v1, p0, Lcom/android/systemui/quicksettings/BrightnessTile;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/quicksettings/BrightnessTile;->mBrightnessDialog:Landroid/app/Dialog;

    .line 70
    iget-object v0, p0, Lcom/android/systemui/quicksettings/BrightnessTile;->mBrightnessDialog:Landroid/app/Dialog;

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 71
    iget-object v0, p0, Lcom/android/systemui/quicksettings/BrightnessTile;->mBrightnessDialog:Landroid/app/Dialog;

    const v1, 0x7f04000c

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(I)V

    .line 72
    iget-object v0, p0, Lcom/android/systemui/quicksettings/BrightnessTile;->mBrightnessDialog:Landroid/app/Dialog;

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 74
    new-instance v2, Lcom/android/systemui/statusbar/policy/BrightnessController;

    iget-object v3, p0, Lcom/android/systemui/quicksettings/BrightnessTile;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/systemui/quicksettings/BrightnessTile;->mBrightnessDialog:Landroid/app/Dialog;

    const v1, 0x7f090029

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/systemui/quicksettings/BrightnessTile;->mBrightnessDialog:Landroid/app/Dialog;

    const v4, 0x7f09002a

    invoke-virtual {v1, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/ToggleSlider;

    invoke-direct {v2, v3, v0, v1}, Lcom/android/systemui/statusbar/policy/BrightnessController;-><init>(Landroid/content/Context;Landroid/widget/ImageView;Lcom/android/systemui/statusbar/policy/ToggleSlider;)V

    .line 78
    iget-object v0, p0, Lcom/android/systemui/quicksettings/BrightnessTile;->mBrightnessDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d3

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 79
    iget-object v0, p0, Lcom/android/systemui/quicksettings/BrightnessTile;->mBrightnessDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v1, v1, 0x10

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 81
    iget-object v0, p0, Lcom/android/systemui/quicksettings/BrightnessTile;->mBrightnessDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/quicksettings/BrightnessTile;->mBrightnessDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 85
    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/IWindowManager;->dismissKeyguard()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/quicksettings/BrightnessTile;->mBrightnessDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 90
    iget v0, p0, Lcom/android/systemui/quicksettings/BrightnessTile;->mBrightnessDialogLongTimeout:I

    invoke-direct {p0, v0}, Lcom/android/systemui/quicksettings/BrightnessTile;->dismissBrightnessDialog(I)V

    .line 92
    :cond_1
    return-void

    .line 86
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private declared-synchronized updateTile()V
    .locals 7

    .prologue
    const/4 v0, 0x1

    const/4 v3, 0x0

    .line 132
    monitor-enter p0

    :try_start_0
    iget-object v4, p0, Lcom/android/systemui/quicksettings/BrightnessTile;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "screen_brightness_mode"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 135
    .local v2, mode:I
    if-ne v2, v0, :cond_0

    .line 136
    .local v0, autoBrightness:Z
    :goto_0
    if-eqz v0, :cond_1

    const v3, 0x7f02005b

    :goto_1
    iput v3, p0, Lcom/android/systemui/quicksettings/BrightnessTile;->mDrawable:I

    .line 139
    iget-object v3, p0, Lcom/android/systemui/quicksettings/BrightnessTile;->mContext:Landroid/content/Context;

    const v4, 0x7f0a00e1

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/quicksettings/BrightnessTile;->mLabel:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 143
    .end local v0           #autoBrightness:Z
    .end local v2           #mode:I
    :goto_2
    monitor-exit p0

    return-void

    .restart local v2       #mode:I
    :cond_0
    move v0, v3

    .line 135
    goto :goto_0

    .line 136
    .restart local v0       #autoBrightness:Z
    :cond_1
    const v3, 0x7f02005a

    goto :goto_1

    .line 140
    .end local v0           #autoBrightness:Z
    .end local v2           #mode:I
    :catch_0
    move-exception v1

    .line 141
    .local v1, e:Landroid/provider/Settings$SettingNotFoundException;
    :try_start_1
    const-string v3, "BrightnessTile"

    const-string v4, "Brightness setting not found"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 132
    .end local v1           #e:Landroid/provider/Settings$SettingNotFoundException;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method private updateTileResources()V
    .locals 0

    .prologue
    .line 125
    invoke-direct {p0}, Lcom/android/systemui/quicksettings/BrightnessTile;->updateTile()V

    .line 126
    invoke-super {p0}, Lcom/android/systemui/quicksettings/QuickSettingsTile;->updateResources()V

    .line 127
    return-void
.end method


# virtual methods
.method public onBrightnessLevelChanged()V
    .locals 0

    .prologue
    .line 147
    invoke-direct {p0}, Lcom/android/systemui/quicksettings/BrightnessTile;->updateTileResources()V

    .line 148
    return-void
.end method

.method public onChangeUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V
    .locals 0
    .parameter "resolver"
    .parameter "uri"

    .prologue
    .line 152
    invoke-direct {p0}, Lcom/android/systemui/quicksettings/BrightnessTile;->updateTileResources()V

    .line 153
    return-void
.end method

.method onPostCreate()V
    .locals 0

    .prologue
    .line 111
    invoke-direct {p0}, Lcom/android/systemui/quicksettings/BrightnessTile;->updateTile()V

    .line 112
    invoke-super {p0}, Lcom/android/systemui/quicksettings/QuickSettingsTile;->onPostCreate()V

    .line 113
    return-void
.end method

.method public updateResources()V
    .locals 1

    .prologue
    .line 117
    invoke-direct {p0}, Lcom/android/systemui/quicksettings/BrightnessTile;->updateTile()V

    .line 119
    iget-object v0, p0, Lcom/android/systemui/quicksettings/BrightnessTile;->mDismissBrightnessDialogRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 120
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/quicksettings/BrightnessTile;->mBrightnessDialog:Landroid/app/Dialog;

    .line 121
    invoke-super {p0}, Lcom/android/systemui/quicksettings/QuickSettingsTile;->updateResources()V

    .line 122
    return-void
.end method
