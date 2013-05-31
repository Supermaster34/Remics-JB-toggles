.class public Lcom/android/systemui/quicksettings/QuietHoursTile;
.super Lcom/android/systemui/quicksettings/QuickSettingsTile;
.source "QuietHoursTile.java"


# instance fields
.field private mEnabled:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/QuickSettingsController;)V
    .locals 1
    .parameter "context"
    .parameter "qsc"

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/quicksettings/QuickSettingsTile;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/QuickSettingsController;)V

    .line 23
    new-instance v0, Lcom/android/systemui/quicksettings/QuietHoursTile$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/quicksettings/QuietHoursTile$1;-><init>(Lcom/android/systemui/quicksettings/QuietHoursTile;)V

    iput-object v0, p0, Lcom/android/systemui/quicksettings/QuietHoursTile;->mOnClick:Landroid/view/View$OnClickListener;

    .line 30
    new-instance v0, Lcom/android/systemui/quicksettings/QuietHoursTile$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/quicksettings/QuietHoursTile$2;-><init>(Lcom/android/systemui/quicksettings/QuietHoursTile;)V

    iput-object v0, p0, Lcom/android/systemui/quicksettings/QuietHoursTile;->mOnLongClick:Landroid/view/View$OnLongClickListener;

    .line 39
    const-string v0, "quiet_hours_enabled"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p2, v0, p0}, Lcom/android/systemui/statusbar/phone/QuickSettingsController;->registerObservedContent(Landroid/net/Uri;Lcom/android/systemui/quicksettings/QuickSettingsTile;)V

    .line 40
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/quicksettings/QuietHoursTile;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 16
    iget-boolean v0, p0, Lcom/android/systemui/quicksettings/QuietHoursTile;->mEnabled:Z

    return v0
.end method

.method private declared-synchronized updateTile()V
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 55
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/quicksettings/QuietHoursTile;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "quiet_hours_enabled"

    const/4 v4, 0x0

    const/4 v5, -0x2

    invoke-static {v2, v3, v4, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/quicksettings/QuietHoursTile;->mEnabled:Z

    .line 57
    iget-boolean v0, p0, Lcom/android/systemui/quicksettings/QuietHoursTile;->mEnabled:Z

    if-eqz v0, :cond_1

    .line 58
    const v0, 0x7f020081

    iput v0, p0, Lcom/android/systemui/quicksettings/QuietHoursTile;->mDrawable:I

    .line 59
    iget-object v0, p0, Lcom/android/systemui/quicksettings/QuietHoursTile;->mContext:Landroid/content/Context;

    const v1, 0x7f0a0025

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/quicksettings/QuietHoursTile;->mLabel:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    :goto_1
    monitor-exit p0

    return-void

    :cond_0
    move v0, v1

    .line 55
    goto :goto_0

    .line 61
    :cond_1
    const v0, 0x7f020080

    :try_start_1
    iput v0, p0, Lcom/android/systemui/quicksettings/QuietHoursTile;->mDrawable:I

    .line 62
    iget-object v0, p0, Lcom/android/systemui/quicksettings/QuietHoursTile;->mContext:Landroid/content/Context;

    const v1, 0x7f0a0026

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/quicksettings/QuietHoursTile;->mLabel:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 55
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
    .line 68
    invoke-virtual {p0}, Lcom/android/systemui/quicksettings/QuietHoursTile;->updateResources()V

    .line 69
    return-void
.end method

.method onPostCreate()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/android/systemui/quicksettings/QuietHoursTile;->updateTile()V

    .line 45
    invoke-super {p0}, Lcom/android/systemui/quicksettings/QuickSettingsTile;->onPostCreate()V

    .line 46
    return-void
.end method

.method public updateResources()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/android/systemui/quicksettings/QuietHoursTile;->updateTile()V

    .line 51
    invoke-super {p0}, Lcom/android/systemui/quicksettings/QuickSettingsTile;->updateResources()V

    .line 52
    return-void
.end method
