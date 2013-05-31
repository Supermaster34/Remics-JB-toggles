.class public Lcom/android/systemui/quicksettings/BugReportTile;
.super Lcom/android/systemui/quicksettings/QuickSettingsTile;
.source "BugReportTile.java"


# instance fields
.field private enabled:Z

.field private final mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/QuickSettingsController;Landroid/os/Handler;)V
    .locals 1
    .parameter "context"
    .parameter "qsc"
    .parameter "handler"

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/quicksettings/QuickSettingsTile;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/QuickSettingsController;)V

    .line 26
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/quicksettings/BugReportTile;->enabled:Z

    .line 33
    iput-object p3, p0, Lcom/android/systemui/quicksettings/BugReportTile;->mHandler:Landroid/os/Handler;

    .line 35
    new-instance v0, Lcom/android/systemui/quicksettings/BugReportTile$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/quicksettings/BugReportTile$1;-><init>(Lcom/android/systemui/quicksettings/BugReportTile;)V

    iput-object v0, p0, Lcom/android/systemui/quicksettings/BugReportTile;->mOnClick:Landroid/view/View$OnClickListener;

    .line 42
    const-string v0, "bugreport_in_power_menu"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p2, v0, p0}, Lcom/android/systemui/statusbar/phone/QuickSettingsController;->registerObservedContent(Landroid/net/Uri;Lcom/android/systemui/quicksettings/QuickSettingsTile;)V

    .line 43
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/quicksettings/BugReportTile;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/android/systemui/quicksettings/BugReportTile;->showBugreportDialog()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/quicksettings/BugReportTile;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/android/systemui/quicksettings/BugReportTile;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private showBugreportDialog()V
    .locals 4

    .prologue
    .line 83
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/systemui/quicksettings/BugReportTile;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 84
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v2, 0x104043d

    new-instance v3, Lcom/android/systemui/quicksettings/BugReportTile$2;

    invoke-direct {v3, p0}, Lcom/android/systemui/quicksettings/BugReportTile$2;-><init>(Lcom/android/systemui/quicksettings/BugReportTile;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 103
    const v2, 0x104014a

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 104
    const v2, 0x1040149

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 105
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 106
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 107
    .local v1, dialog:Landroid/app/Dialog;
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x7d3

    invoke-virtual {v2, v3}, Landroid/view/Window;->setType(I)V

    .line 109
    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/IWindowManager;->dismissKeyguard()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    :goto_0
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 113
    return-void

    .line 110
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private declared-synchronized updateTile()V
    .locals 3

    .prologue
    .line 58
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/quicksettings/BugReportTile;->mContext:Landroid/content/Context;

    const v2, 0x7f0a0017

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/quicksettings/BugReportTile;->mLabel:Ljava/lang/String;

    .line 59
    const v1, 0x108057e

    iput v1, p0, Lcom/android/systemui/quicksettings/BugReportTile;->mDrawable:I

    .line 60
    iget-object v1, p0, Lcom/android/systemui/quicksettings/BugReportTile;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 62
    .local v0, cr:Landroid/content/ContentResolver;
    :try_start_1
    const-string v1, "bugreport_in_power_menu"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lcom/android/systemui/quicksettings/BugReportTile;->enabled:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 65
    :goto_1
    monitor-exit p0

    return-void

    .line 62
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 58
    .end local v0           #cr:Landroid/content/ContentResolver;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 63
    .restart local v0       #cr:Landroid/content/ContentResolver;
    :catch_0
    move-exception v1

    goto :goto_1
.end method


# virtual methods
.method public onChangeUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V
    .locals 0
    .parameter "resolver"
    .parameter "uri"

    .prologue
    .line 69
    invoke-virtual {p0}, Lcom/android/systemui/quicksettings/BugReportTile;->updateResources()V

    .line 70
    return-void
.end method

.method onPostCreate()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/android/systemui/quicksettings/BugReportTile;->updateTile()V

    .line 48
    invoke-super {p0}, Lcom/android/systemui/quicksettings/QuickSettingsTile;->onPostCreate()V

    .line 49
    return-void
.end method

.method updateQuickSettings()V
    .locals 2

    .prologue
    .line 78
    iget-object v1, p0, Lcom/android/systemui/quicksettings/BugReportTile;->mTile:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;

    iget-boolean v0, p0, Lcom/android/systemui/quicksettings/BugReportTile;->enabled:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->setVisibility(I)V

    .line 79
    invoke-super {p0}, Lcom/android/systemui/quicksettings/QuickSettingsTile;->updateQuickSettings()V

    .line 80
    return-void

    .line 78
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public updateResources()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/android/systemui/quicksettings/BugReportTile;->updateTile()V

    .line 54
    invoke-super {p0}, Lcom/android/systemui/quicksettings/QuickSettingsTile;->updateResources()V

    .line 55
    return-void
.end method
