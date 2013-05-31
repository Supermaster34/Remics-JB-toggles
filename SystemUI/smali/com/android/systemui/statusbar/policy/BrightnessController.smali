.class public Lcom/android/systemui/statusbar/policy/BrightnessController;
.super Ljava/lang/Object;
.source "BrightnessController.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/ToggleSlider$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/BrightnessController$BrightnessStateChangeCallback;
    }
.end annotation


# instance fields
.field private final mAutomaticAvailable:Z

.field private mChangeCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/statusbar/policy/BrightnessController$BrightnessStateChangeCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mControl:Lcom/android/systemui/statusbar/policy/ToggleSlider;

.field private final mIcon:Landroid/widget/ImageView;

.field private final mMaximumBacklight:I

.field private final mMinimumBacklight:I

.field private final mPower:Landroid/os/IPowerManager;

.field private final mUserTracker:Lcom/android/systemui/statusbar/policy/CurrentUserTracker;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/ImageView;Lcom/android/systemui/statusbar/policy/ToggleSlider;)V
    .locals 3
    .parameter "context"
    .parameter "icon"
    .parameter "control"

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/BrightnessController;->mChangeCallbacks:Ljava/util/ArrayList;

    .line 56
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/BrightnessController;->mContext:Landroid/content/Context;

    .line 57
    iput-object p2, p0, Lcom/android/systemui/statusbar/policy/BrightnessController;->mIcon:Landroid/widget/ImageView;

    .line 58
    iput-object p3, p0, Lcom/android/systemui/statusbar/policy/BrightnessController;->mControl:Lcom/android/systemui/statusbar/policy/ToggleSlider;

    .line 59
    new-instance v1, Lcom/android/systemui/statusbar/policy/CurrentUserTracker;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/BrightnessController;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/systemui/statusbar/policy/CurrentUserTracker;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/BrightnessController;->mUserTracker:Lcom/android/systemui/statusbar/policy/CurrentUserTracker;

    .line 61
    const-string v1, "power"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 62
    .local v0, pm:Landroid/os/PowerManager;
    invoke-virtual {v0}, Landroid/os/PowerManager;->getMinimumScreenBrightnessSetting()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/policy/BrightnessController;->mMinimumBacklight:I

    .line 63
    invoke-virtual {v0}, Landroid/os/PowerManager;->getMaximumScreenBrightnessSetting()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/policy/BrightnessController;->mMaximumBacklight:I

    .line 65
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x111001a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/BrightnessController;->mAutomaticAvailable:Z

    .line 67
    const-string v1, "power"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/BrightnessController;->mPower:Landroid/os/IPowerManager;

    .line 69
    invoke-virtual {p3, p0}, Lcom/android/systemui/statusbar/policy/ToggleSlider;->setOnChangedListener(Lcom/android/systemui/statusbar/policy/ToggleSlider$Listener;)V

    .line 70
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/policy/BrightnessController;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BrightnessController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/policy/BrightnessController;)Lcom/android/systemui/statusbar/policy/CurrentUserTracker;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BrightnessController;->mUserTracker:Lcom/android/systemui/statusbar/policy/CurrentUserTracker;

    return-object v0
.end method

.method private setBrightness(I)V
    .locals 1
    .parameter "brightness"

    .prologue
    .line 139
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BrightnessController;->mPower:Landroid/os/IPowerManager;

    invoke-interface {v0, p1}, Landroid/os/IPowerManager;->setTemporaryScreenBrightnessSettingOverride(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 142
    :goto_0
    return-void

    .line 140
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private setMode(I)V
    .locals 3
    .parameter "mode"

    .prologue
    .line 132
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BrightnessController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_brightness_mode"

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/BrightnessController;->mUserTracker:Lcom/android/systemui/statusbar/policy/CurrentUserTracker;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/policy/CurrentUserTracker;->getCurrentUserId()I

    move-result v2

    invoke-static {v0, v1, p1, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 135
    return-void
.end method

.method private updateIcon(Z)V
    .locals 2
    .parameter "automatic"

    .prologue
    .line 145
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BrightnessController;->mIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 146
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BrightnessController;->mIcon:Landroid/widget/ImageView;

    if-eqz p1, :cond_1

    const v0, 0x7f02005b

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 150
    :cond_0
    return-void

    .line 146
    :cond_1
    const v0, 0x7f02005a

    goto :goto_0
.end method


# virtual methods
.method public onChanged(Lcom/android/systemui/statusbar/policy/ToggleSlider;ZZI)V
    .locals 4
    .parameter "view"
    .parameter "tracking"
    .parameter "automatic"
    .parameter "value"

    .prologue
    .line 109
    if-eqz p3, :cond_1

    const/4 v3, 0x1

    :goto_0
    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/policy/BrightnessController;->setMode(I)V

    .line 111
    invoke-direct {p0, p3}, Lcom/android/systemui/statusbar/policy/BrightnessController;->updateIcon(Z)V

    .line 112
    if-nez p3, :cond_0

    .line 113
    iget v3, p0, Lcom/android/systemui/statusbar/policy/BrightnessController;->mMinimumBacklight:I

    add-int v2, p4, v3

    .line 114
    .local v2, val:I
    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/policy/BrightnessController;->setBrightness(I)V

    .line 115
    if-nez p2, :cond_0

    .line 116
    new-instance v3, Lcom/android/systemui/statusbar/policy/BrightnessController$1;

    invoke-direct {v3, p0, v2}, Lcom/android/systemui/statusbar/policy/BrightnessController$1;-><init>(Lcom/android/systemui/statusbar/policy/BrightnessController;I)V

    invoke-static {v3}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 126
    .end local v2           #val:I
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/BrightnessController;->mChangeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/BrightnessController$BrightnessStateChangeCallback;

    .line 127
    .local v0, cb:Lcom/android/systemui/statusbar/policy/BrightnessController$BrightnessStateChangeCallback;
    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/BrightnessController$BrightnessStateChangeCallback;->onBrightnessLevelChanged()V

    goto :goto_1

    .line 109
    .end local v0           #cb:Lcom/android/systemui/statusbar/policy/BrightnessController$BrightnessStateChangeCallback;
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    .line 129
    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_2
    return-void
.end method

.method public onInit(Lcom/android/systemui/statusbar/policy/ToggleSlider;)V
    .locals 9
    .parameter "control"

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 78
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/policy/BrightnessController;->mAutomaticAvailable:Z

    if-eqz v4, :cond_2

    .line 81
    :try_start_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/BrightnessController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v7, "screen_brightness_mode"

    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/BrightnessController;->mUserTracker:Lcom/android/systemui/statusbar/policy/CurrentUserTracker;

    invoke-virtual {v8}, Lcom/android/systemui/statusbar/policy/CurrentUserTracker;->getCurrentUserId()I

    move-result v8

    invoke-static {v4, v7, v8}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 87
    .local v0, automatic:I
    :goto_0
    if-eqz v0, :cond_0

    move v4, v5

    :goto_1
    invoke-virtual {p1, v4}, Lcom/android/systemui/statusbar/policy/ToggleSlider;->setChecked(Z)V

    .line 88
    if-eqz v0, :cond_1

    :goto_2
    invoke-direct {p0, v5}, Lcom/android/systemui/statusbar/policy/BrightnessController;->updateIcon(Z)V

    .line 97
    .end local v0           #automatic:I
    :goto_3
    :try_start_1
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/BrightnessController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "screen_brightness"

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/BrightnessController;->mUserTracker:Lcom/android/systemui/statusbar/policy/CurrentUserTracker;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/policy/CurrentUserTracker;->getCurrentUserId()I

    move-result v6

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_1
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v3

    .line 104
    .local v3, value:I
    :goto_4
    iget v4, p0, Lcom/android/systemui/statusbar/policy/BrightnessController;->mMaximumBacklight:I

    iget v5, p0, Lcom/android/systemui/statusbar/policy/BrightnessController;->mMinimumBacklight:I

    sub-int/2addr v4, v5

    invoke-virtual {p1, v4}, Lcom/android/systemui/statusbar/policy/ToggleSlider;->setMax(I)V

    .line 105
    iget v4, p0, Lcom/android/systemui/statusbar/policy/BrightnessController;->mMinimumBacklight:I

    sub-int v4, v3, v4

    invoke-virtual {p1, v4}, Lcom/android/systemui/statusbar/policy/ToggleSlider;->setValue(I)V

    .line 106
    return-void

    .line 84
    .end local v3           #value:I
    :catch_0
    move-exception v2

    .line 85
    .local v2, snfe:Landroid/provider/Settings$SettingNotFoundException;
    const/4 v0, 0x0

    .restart local v0       #automatic:I
    goto :goto_0

    .end local v2           #snfe:Landroid/provider/Settings$SettingNotFoundException;
    :cond_0
    move v4, v6

    .line 87
    goto :goto_1

    :cond_1
    move v5, v6

    .line 88
    goto :goto_2

    .line 90
    .end local v0           #automatic:I
    :cond_2
    invoke-virtual {p1, v6}, Lcom/android/systemui/statusbar/policy/ToggleSlider;->setChecked(Z)V

    .line 91
    invoke-direct {p0, v6}, Lcom/android/systemui/statusbar/policy/BrightnessController;->updateIcon(Z)V

    goto :goto_3

    .line 100
    :catch_1
    move-exception v1

    .line 101
    .local v1, ex:Landroid/provider/Settings$SettingNotFoundException;
    iget v3, p0, Lcom/android/systemui/statusbar/policy/BrightnessController;->mMaximumBacklight:I

    .restart local v3       #value:I
    goto :goto_4
.end method
