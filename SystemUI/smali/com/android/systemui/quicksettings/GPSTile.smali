.class public Lcom/android/systemui/quicksettings/GPSTile;
.super Lcom/android/systemui/quicksettings/QuickSettingsTile;
.source "GPSTile.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/LocationController$LocationGpsStateChangeCallback;


# instance fields
.field private enabled:Z

.field mContentResolver:Landroid/content/ContentResolver;

.field private mDescription:Ljava/lang/String;

.field private working:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/QuickSettingsController;)V
    .locals 3
    .parameter "context"
    .parameter "qsc"

    .prologue
    const/4 v1, 0x0

    .line 30
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/quicksettings/QuickSettingsTile;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/QuickSettingsController;)V

    .line 22
    iput-boolean v1, p0, Lcom/android/systemui/quicksettings/GPSTile;->enabled:Z

    .line 23
    iput-boolean v1, p0, Lcom/android/systemui/quicksettings/GPSTile;->working:Z

    .line 25
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/systemui/quicksettings/GPSTile;->mDescription:Ljava/lang/String;

    .line 32
    iget-object v1, p0, Lcom/android/systemui/quicksettings/GPSTile;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/quicksettings/GPSTile;->mContentResolver:Landroid/content/ContentResolver;

    .line 33
    new-instance v0, Lcom/android/systemui/statusbar/policy/LocationController;

    iget-object v1, p0, Lcom/android/systemui/quicksettings/GPSTile;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/policy/LocationController;-><init>(Landroid/content/Context;)V

    .line 34
    .local v0, controller:Lcom/android/systemui/statusbar/policy/LocationController;
    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/policy/LocationController;->addStateChangedCallback(Lcom/android/systemui/statusbar/policy/LocationController$LocationGpsStateChangeCallback;)V

    .line 36
    iget-object v1, p0, Lcom/android/systemui/quicksettings/GPSTile;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "gps"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/quicksettings/GPSTile;->enabled:Z

    .line 38
    new-instance v1, Lcom/android/systemui/quicksettings/GPSTile$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/quicksettings/GPSTile$1;-><init>(Lcom/android/systemui/quicksettings/GPSTile;)V

    iput-object v1, p0, Lcom/android/systemui/quicksettings/GPSTile;->mOnClick:Landroid/view/View$OnClickListener;

    .line 45
    new-instance v1, Lcom/android/systemui/quicksettings/GPSTile$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/quicksettings/GPSTile$2;-><init>(Lcom/android/systemui/quicksettings/GPSTile;)V

    iput-object v1, p0, Lcom/android/systemui/quicksettings/GPSTile;->mOnLongClick:Landroid/view/View$OnLongClickListener;

    .line 52
    const-string v1, "android.location.PROVIDERS_CHANGED"

    invoke-virtual {p2, v1, p0}, Lcom/android/systemui/statusbar/phone/QuickSettingsController;->registerAction(Ljava/lang/Object;Lcom/android/systemui/quicksettings/QuickSettingsTile;)V

    .line 53
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/quicksettings/GPSTile;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    iget-boolean v0, p0, Lcom/android/systemui/quicksettings/GPSTile;->enabled:Z

    return v0
.end method

.method private setGenericLabel()V
    .locals 2

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/systemui/quicksettings/GPSTile;->mDescription:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/android/systemui/quicksettings/GPSTile;->mDescription:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/systemui/quicksettings/GPSTile;->mLabel:Ljava/lang/String;

    .line 97
    :goto_0
    return-void

    .line 95
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/quicksettings/GPSTile;->enabled:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/quicksettings/GPSTile;->mContext:Landroid/content/Context;

    const v1, 0x7f0a000b

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Lcom/android/systemui/quicksettings/GPSTile;->mLabel:Ljava/lang/String;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/quicksettings/GPSTile;->mContext:Landroid/content/Context;

    const v1, 0x7f0a000c

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method private declared-synchronized updateTile()V
    .locals 1

    .prologue
    .line 74
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/systemui/quicksettings/GPSTile;->enabled:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/quicksettings/GPSTile;->working:Z

    if-eqz v0, :cond_0

    .line 75
    const v0, 0x7f020078

    iput v0, p0, Lcom/android/systemui/quicksettings/GPSTile;->mDrawable:I

    .line 81
    :goto_0
    invoke-direct {p0}, Lcom/android/systemui/quicksettings/GPSTile;->setGenericLabel()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    monitor-exit p0

    return-void

    .line 76
    :cond_0
    :try_start_1
    iget-boolean v0, p0, Lcom/android/systemui/quicksettings/GPSTile;->enabled:Z

    if-eqz v0, :cond_1

    .line 77
    const v0, 0x7f020076

    iput v0, p0, Lcom/android/systemui/quicksettings/GPSTile;->mDrawable:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 74
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 79
    :cond_1
    const v0, 0x7f020075

    :try_start_2
    iput v0, p0, Lcom/android/systemui/quicksettings/GPSTile;->mDrawable:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method


# virtual methods
.method public onLocationGpsStateChanged(ZLjava/lang/String;)V
    .locals 0
    .parameter "inUse"
    .parameter "description"

    .prologue
    .line 86
    iput-boolean p1, p0, Lcom/android/systemui/quicksettings/GPSTile;->working:Z

    .line 87
    iput-object p2, p0, Lcom/android/systemui/quicksettings/GPSTile;->mDescription:Ljava/lang/String;

    .line 88
    invoke-virtual {p0}, Lcom/android/systemui/quicksettings/GPSTile;->updateResources()V

    .line 89
    return-void
.end method

.method onPostCreate()V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/android/systemui/quicksettings/GPSTile;->updateTile()V

    .line 64
    invoke-super {p0}, Lcom/android/systemui/quicksettings/QuickSettingsTile;->onPostCreate()V

    .line 65
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/systemui/quicksettings/GPSTile;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "gps"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/quicksettings/GPSTile;->enabled:Z

    .line 58
    invoke-virtual {p0}, Lcom/android/systemui/quicksettings/GPSTile;->updateResources()V

    .line 59
    return-void
.end method

.method public updateResources()V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/android/systemui/quicksettings/GPSTile;->updateTile()V

    .line 70
    invoke-virtual {p0}, Lcom/android/systemui/quicksettings/GPSTile;->updateQuickSettings()V

    .line 71
    return-void
.end method
