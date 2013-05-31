.class public Lcom/android/systemui/quicksettings/SyncTile;
.super Lcom/android/systemui/quicksettings/QuickSettingsTile;
.source "SyncTile.java"


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mSyncObserver:Landroid/content/SyncStatusObserver;

.field private mSyncObserverHandle:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/QuickSettingsController;)V
    .locals 1
    .parameter "context"
    .parameter "qsc"

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/quicksettings/QuickSettingsTile;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/QuickSettingsController;)V

    .line 17
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/quicksettings/SyncTile;->mSyncObserverHandle:Ljava/lang/Object;

    .line 92
    new-instance v0, Lcom/android/systemui/quicksettings/SyncTile$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/quicksettings/SyncTile$3;-><init>(Lcom/android/systemui/quicksettings/SyncTile;)V

    iput-object v0, p0, Lcom/android/systemui/quicksettings/SyncTile;->mSyncObserver:Landroid/content/SyncStatusObserver;

    .line 22
    new-instance v0, Lcom/android/systemui/quicksettings/SyncTile$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/quicksettings/SyncTile$1;-><init>(Lcom/android/systemui/quicksettings/SyncTile;)V

    iput-object v0, p0, Lcom/android/systemui/quicksettings/SyncTile;->mOnClick:Landroid/view/View$OnClickListener;

    .line 30
    new-instance v0, Lcom/android/systemui/quicksettings/SyncTile$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/quicksettings/SyncTile$2;-><init>(Lcom/android/systemui/quicksettings/SyncTile;)V

    iput-object v0, p0, Lcom/android/systemui/quicksettings/SyncTile;->mOnLongClick:Landroid/view/View$OnLongClickListener;

    .line 40
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/quicksettings/SyncTile;->mHandler:Landroid/os/Handler;

    .line 41
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/quicksettings/SyncTile;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 15
    iget-object v0, p0, Lcom/android/systemui/quicksettings/SyncTile;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private getSyncState()Z
    .locals 1

    .prologue
    .line 89
    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v0

    return v0
.end method

.method private declared-synchronized updateTile()V
    .locals 2

    .prologue
    .line 56
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/android/systemui/quicksettings/SyncTile;->getSyncState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    const v0, 0x7f0200ab

    iput v0, p0, Lcom/android/systemui/quicksettings/SyncTile;->mDrawable:I

    .line 58
    iget-object v0, p0, Lcom/android/systemui/quicksettings/SyncTile;->mContext:Landroid/content/Context;

    const v1, 0x7f0a0018

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/quicksettings/SyncTile;->mLabel:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    :goto_0
    monitor-exit p0

    return-void

    .line 60
    :cond_0
    const v0, 0x7f0200aa

    :try_start_1
    iput v0, p0, Lcom/android/systemui/quicksettings/SyncTile;->mDrawable:I

    .line 61
    iget-object v0, p0, Lcom/android/systemui/quicksettings/SyncTile;->mContext:Landroid/content/Context;

    const v1, 0x7f0a0019

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/quicksettings/SyncTile;->mLabel:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 56
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method onPostCreate()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/android/systemui/quicksettings/SyncTile;->updateTile()V

    .line 46
    invoke-super {p0}, Lcom/android/systemui/quicksettings/QuickSettingsTile;->onPostCreate()V

    .line 47
    return-void
.end method

.method public setupQuickSettingsTile(Landroid/view/LayoutInflater;Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView;)V
    .locals 2
    .parameter "inflater"
    .parameter "container"

    .prologue
    .line 67
    invoke-super {p0, p1, p2}, Lcom/android/systemui/quicksettings/QuickSettingsTile;->setupQuickSettingsTile(Landroid/view/LayoutInflater;Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView;)V

    .line 68
    iget-object v0, p0, Lcom/android/systemui/quicksettings/SyncTile;->mSyncObserverHandle:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/android/systemui/quicksettings/SyncTile;->mSyncObserverHandle:Ljava/lang/Object;

    invoke-static {v0}, Landroid/content/ContentResolver;->removeStatusChangeListener(Ljava/lang/Object;)V

    .line 71
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/quicksettings/SyncTile;->mSyncObserverHandle:Ljava/lang/Object;

    .line 77
    :goto_0
    return-void

    .line 74
    :cond_0
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/systemui/quicksettings/SyncTile;->mSyncObserver:Landroid/content/SyncStatusObserver;

    invoke-static {v0, v1}, Landroid/content/ContentResolver;->addStatusChangeListener(ILandroid/content/SyncStatusObserver;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/quicksettings/SyncTile;->mSyncObserverHandle:Ljava/lang/Object;

    goto :goto_0
.end method

.method protected toggleState()V
    .locals 1

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/android/systemui/quicksettings/SyncTile;->getSyncState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    const/4 v0, 0x0

    invoke-static {v0}, Landroid/content/ContentResolver;->setMasterSyncAutomatically(Z)V

    .line 86
    :goto_0
    return-void

    .line 84
    :cond_0
    const/4 v0, 0x1

    invoke-static {v0}, Landroid/content/ContentResolver;->setMasterSyncAutomatically(Z)V

    goto :goto_0
.end method

.method public updateResources()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/android/systemui/quicksettings/SyncTile;->updateTile()V

    .line 52
    invoke-super {p0}, Lcom/android/systemui/quicksettings/QuickSettingsTile;->updateResources()V

    .line 53
    return-void
.end method
