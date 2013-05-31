.class public Lcom/android/systemui/quicksettings/SleepScreenTile;
.super Lcom/android/systemui/quicksettings/QuickSettingsTile;
.source "SleepScreenTile.java"


# instance fields
.field private pm:Landroid/os/PowerManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/QuickSettingsController;)V
    .locals 2
    .parameter "context"
    .parameter "qsc"

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/quicksettings/QuickSettingsTile;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/QuickSettingsController;)V

    .line 21
    iget-object v0, p0, Lcom/android/systemui/quicksettings/SleepScreenTile;->mContext:Landroid/content/Context;

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/systemui/quicksettings/SleepScreenTile;->pm:Landroid/os/PowerManager;

    .line 22
    new-instance v0, Lcom/android/systemui/quicksettings/SleepScreenTile$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/quicksettings/SleepScreenTile$1;-><init>(Lcom/android/systemui/quicksettings/SleepScreenTile;)V

    iput-object v0, p0, Lcom/android/systemui/quicksettings/SleepScreenTile;->mOnClick:Landroid/view/View$OnClickListener;

    .line 28
    new-instance v0, Lcom/android/systemui/quicksettings/SleepScreenTile$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/quicksettings/SleepScreenTile$2;-><init>(Lcom/android/systemui/quicksettings/SleepScreenTile;)V

    iput-object v0, p0, Lcom/android/systemui/quicksettings/SleepScreenTile;->mOnLongClick:Landroid/view/View$OnLongClickListener;

    .line 36
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/quicksettings/SleepScreenTile;)Landroid/os/PowerManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 15
    iget-object v0, p0, Lcom/android/systemui/quicksettings/SleepScreenTile;->pm:Landroid/os/PowerManager;

    return-object v0
.end method

.method private declared-synchronized updateTile()V
    .locals 2

    .prologue
    .line 51
    monitor-enter p0

    const v0, 0x7f0200a9

    :try_start_0
    iput v0, p0, Lcom/android/systemui/quicksettings/SleepScreenTile;->mDrawable:I

    .line 52
    iget-object v0, p0, Lcom/android/systemui/quicksettings/SleepScreenTile;->mContext:Landroid/content/Context;

    const v1, 0x7f0a000d

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/quicksettings/SleepScreenTile;->mLabel:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    monitor-exit p0

    return-void

    .line 51
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method onPostCreate()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/android/systemui/quicksettings/SleepScreenTile;->updateTile()V

    .line 41
    invoke-super {p0}, Lcom/android/systemui/quicksettings/QuickSettingsTile;->onPostCreate()V

    .line 42
    return-void
.end method

.method public updateResources()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/android/systemui/quicksettings/SleepScreenTile;->updateTile()V

    .line 47
    invoke-super {p0}, Lcom/android/systemui/quicksettings/QuickSettingsTile;->updateResources()V

    .line 48
    return-void
.end method
