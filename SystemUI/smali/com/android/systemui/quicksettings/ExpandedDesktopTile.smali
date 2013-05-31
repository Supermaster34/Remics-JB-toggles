.class public Lcom/android/systemui/quicksettings/ExpandedDesktopTile;
.super Lcom/android/systemui/quicksettings/QuickSettingsTile;
.source "ExpandedDesktopTile.java"


# instance fields
.field private mEnabled:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/QuickSettingsController;Landroid/os/Handler;)V
    .locals 2
    .parameter "context"
    .parameter "qsc"
    .parameter "handler"

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/quicksettings/QuickSettingsTile;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/QuickSettingsController;)V

    .line 17
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/systemui/quicksettings/ExpandedDesktopTile;->mEnabled:Z

    .line 23
    new-instance v1, Lcom/android/systemui/quicksettings/ExpandedDesktopTile$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/quicksettings/ExpandedDesktopTile$1;-><init>(Lcom/android/systemui/quicksettings/ExpandedDesktopTile;)V

    iput-object v1, p0, Lcom/android/systemui/quicksettings/ExpandedDesktopTile;->mOnClick:Landroid/view/View$OnClickListener;

    .line 32
    new-instance v1, Lcom/android/systemui/quicksettings/ExpandedDesktopTile$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/quicksettings/ExpandedDesktopTile$2;-><init>(Lcom/android/systemui/quicksettings/ExpandedDesktopTile;)V

    iput-object v1, p0, Lcom/android/systemui/quicksettings/ExpandedDesktopTile;->mOnLongClick:Landroid/view/View$OnLongClickListener;

    .line 43
    const-string v1, "expanded_desktop_state"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 44
    .local v0, stateUri:Landroid/net/Uri;
    invoke-virtual {p2, v0, p0}, Lcom/android/systemui/statusbar/phone/QuickSettingsController;->registerObservedContent(Landroid/net/Uri;Lcom/android/systemui/quicksettings/QuickSettingsTile;)V

    .line 45
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/quicksettings/ExpandedDesktopTile;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 16
    iget-boolean v0, p0, Lcom/android/systemui/quicksettings/ExpandedDesktopTile;->mEnabled:Z

    return v0
.end method

.method private declared-synchronized updateTile()V
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 59
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/quicksettings/ExpandedDesktopTile;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "expanded_desktop_state"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/quicksettings/ExpandedDesktopTile;->mEnabled:Z

    .line 61
    iget-boolean v0, p0, Lcom/android/systemui/quicksettings/ExpandedDesktopTile;->mEnabled:Z

    if-eqz v0, :cond_1

    .line 62
    const v0, 0x7f020071

    iput v0, p0, Lcom/android/systemui/quicksettings/ExpandedDesktopTile;->mDrawable:I

    .line 63
    iget-object v0, p0, Lcom/android/systemui/quicksettings/ExpandedDesktopTile;->mContext:Landroid/content/Context;

    const v1, 0x7f0a002a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/quicksettings/ExpandedDesktopTile;->mLabel:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    :goto_1
    monitor-exit p0

    return-void

    :cond_0
    move v0, v1

    .line 59
    goto :goto_0

    .line 65
    :cond_1
    const v0, 0x7f020070

    :try_start_1
    iput v0, p0, Lcom/android/systemui/quicksettings/ExpandedDesktopTile;->mDrawable:I

    .line 66
    iget-object v0, p0, Lcom/android/systemui/quicksettings/ExpandedDesktopTile;->mContext:Landroid/content/Context;

    const v1, 0x7f0a002b

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/quicksettings/ExpandedDesktopTile;->mLabel:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 59
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
    .line 72
    invoke-virtual {p0}, Lcom/android/systemui/quicksettings/ExpandedDesktopTile;->updateResources()V

    .line 73
    return-void
.end method

.method onPostCreate()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/android/systemui/quicksettings/ExpandedDesktopTile;->updateTile()V

    .line 49
    invoke-super {p0}, Lcom/android/systemui/quicksettings/QuickSettingsTile;->onPostCreate()V

    .line 50
    return-void
.end method

.method public updateResources()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/android/systemui/quicksettings/ExpandedDesktopTile;->updateTile()V

    .line 55
    invoke-super {p0}, Lcom/android/systemui/quicksettings/QuickSettingsTile;->updateResources()V

    .line 56
    return-void
.end method
