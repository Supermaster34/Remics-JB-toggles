.class public Lcom/android/systemui/quicksettings/ToggleLockscreenTile;
.super Lcom/android/systemui/quicksettings/QuickSettingsTile;
.source "ToggleLockscreenTile.java"


# instance fields
.field private mDisabledLockscreen:Z

.field private mLock:Landroid/app/KeyguardManager$KeyguardLock;

.field private mPrefs:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/QuickSettingsController;)V
    .locals 3
    .parameter "context"
    .parameter "qsc"

    .prologue
    const/4 v2, 0x0

    .line 27
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/quicksettings/QuickSettingsTile;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/QuickSettingsController;)V

    .line 20
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/quicksettings/ToggleLockscreenTile;->mLock:Landroid/app/KeyguardManager$KeyguardLock;

    .line 29
    iget-object v0, p0, Lcom/android/systemui/quicksettings/ToggleLockscreenTile;->mContext:Landroid/content/Context;

    const-string v1, "PowerButton-toggleLockScreen"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/quicksettings/ToggleLockscreenTile;->mPrefs:Landroid/content/SharedPreferences;

    .line 30
    iget-object v0, p0, Lcom/android/systemui/quicksettings/ToggleLockscreenTile;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "lockscreen_disabled"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/quicksettings/ToggleLockscreenTile;->mDisabledLockscreen:Z

    .line 32
    new-instance v0, Lcom/android/systemui/quicksettings/ToggleLockscreenTile$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/quicksettings/ToggleLockscreenTile$1;-><init>(Lcom/android/systemui/quicksettings/ToggleLockscreenTile;)V

    iput-object v0, p0, Lcom/android/systemui/quicksettings/ToggleLockscreenTile;->mOnClick:Landroid/view/View$OnClickListener;

    .line 46
    new-instance v0, Lcom/android/systemui/quicksettings/ToggleLockscreenTile$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/quicksettings/ToggleLockscreenTile$2;-><init>(Lcom/android/systemui/quicksettings/ToggleLockscreenTile;)V

    iput-object v0, p0, Lcom/android/systemui/quicksettings/ToggleLockscreenTile;->mOnLongClick:Landroid/view/View$OnLongClickListener;

    .line 54
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/quicksettings/ToggleLockscreenTile;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 18
    iget-boolean v0, p0, Lcom/android/systemui/quicksettings/ToggleLockscreenTile;->mDisabledLockscreen:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/systemui/quicksettings/ToggleLockscreenTile;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 18
    iput-boolean p1, p0, Lcom/android/systemui/quicksettings/ToggleLockscreenTile;->mDisabledLockscreen:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/systemui/quicksettings/ToggleLockscreenTile;)Landroid/content/SharedPreferences;
    .locals 1
    .parameter "x0"

    .prologue
    .line 18
    iget-object v0, p0, Lcom/android/systemui/quicksettings/ToggleLockscreenTile;->mPrefs:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method private declared-synchronized updateTile()V
    .locals 3

    .prologue
    .line 69
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/quicksettings/ToggleLockscreenTile;->mContext:Landroid/content/Context;

    const v2, 0x7f0a0015

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/quicksettings/ToggleLockscreenTile;->mLabel:Ljava/lang/String;

    .line 70
    iget-object v1, p0, Lcom/android/systemui/quicksettings/ToggleLockscreenTile;->mLock:Landroid/app/KeyguardManager$KeyguardLock;

    if-nez v1, :cond_0

    .line 71
    iget-object v1, p0, Lcom/android/systemui/quicksettings/ToggleLockscreenTile;->mContext:Landroid/content/Context;

    const-string v2, "keyguard"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    .line 73
    .local v0, keyguardManager:Landroid/app/KeyguardManager;
    const-string v1, "PowerWidget"

    invoke-virtual {v0, v1}, Landroid/app/KeyguardManager;->newKeyguardLock(Ljava/lang/String;)Landroid/app/KeyguardManager$KeyguardLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/quicksettings/ToggleLockscreenTile;->mLock:Landroid/app/KeyguardManager$KeyguardLock;

    .line 75
    .end local v0           #keyguardManager:Landroid/app/KeyguardManager;
    :cond_0
    iget-boolean v1, p0, Lcom/android/systemui/quicksettings/ToggleLockscreenTile;->mDisabledLockscreen:Z

    if-eqz v1, :cond_1

    .line 76
    const v1, 0x7f020079

    iput v1, p0, Lcom/android/systemui/quicksettings/ToggleLockscreenTile;->mDrawable:I

    .line 77
    iget-object v1, p0, Lcom/android/systemui/quicksettings/ToggleLockscreenTile;->mLock:Landroid/app/KeyguardManager$KeyguardLock;

    invoke-virtual {v1}, Landroid/app/KeyguardManager$KeyguardLock;->disableKeyguard()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    :goto_0
    monitor-exit p0

    return-void

    .line 79
    :cond_1
    const v1, 0x7f02007a

    :try_start_1
    iput v1, p0, Lcom/android/systemui/quicksettings/ToggleLockscreenTile;->mDrawable:I

    .line 80
    iget-object v1, p0, Lcom/android/systemui/quicksettings/ToggleLockscreenTile;->mLock:Landroid/app/KeyguardManager$KeyguardLock;

    invoke-virtual {v1}, Landroid/app/KeyguardManager$KeyguardLock;->reenableKeyguard()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 69
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method


# virtual methods
.method onPostCreate()V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/android/systemui/quicksettings/ToggleLockscreenTile;->updateTile()V

    .line 59
    invoke-super {p0}, Lcom/android/systemui/quicksettings/QuickSettingsTile;->onPostCreate()V

    .line 60
    return-void
.end method

.method public updateResources()V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/android/systemui/quicksettings/ToggleLockscreenTile;->updateTile()V

    .line 65
    invoke-super {p0}, Lcom/android/systemui/quicksettings/QuickSettingsTile;->updateResources()V

    .line 66
    return-void
.end method
