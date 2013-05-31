.class public Lcom/android/systemui/statusbar/policy/BatteryBarController;
.super Landroid/widget/LinearLayout;
.source "BatteryBarController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/BatteryBarController$SettingsObserver;
    }
.end annotation


# instance fields
.field isAttached:Z

.field isVertical:Z

.field private mBatteryCharging:Z

.field private mBatteryLevel:I

.field private final mIntentReceiver:Landroid/content/BroadcastReceiver;

.field mLocation:I

.field mLocationToLookFor:I

.field private mSettingsObserver:Lcom/android/systemui/statusbar/policy/BatteryBarController$SettingsObserver;

.field mStyle:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v2, 0x0

    .line 85
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    iput v2, p0, Lcom/android/systemui/statusbar/policy/BatteryBarController;->mStyle:I

    .line 47
    iput v2, p0, Lcom/android/systemui/statusbar/policy/BatteryBarController;->mLocation:I

    .line 50
    iput v2, p0, Lcom/android/systemui/statusbar/policy/BatteryBarController;->mLocationToLookFor:I

    .line 52
    iput v2, p0, Lcom/android/systemui/statusbar/policy/BatteryBarController;->mBatteryLevel:I

    .line 53
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/policy/BatteryBarController;->mBatteryCharging:Z

    .line 57
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/policy/BatteryBarController;->isAttached:Z

    .line 58
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/policy/BatteryBarController;->isVertical:Z

    .line 110
    new-instance v1, Lcom/android/systemui/statusbar/policy/BatteryBarController$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/policy/BatteryBarController$1;-><init>(Lcom/android/systemui/statusbar/policy/BatteryBarController;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/BatteryBarController;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 87
    if-eqz p2, :cond_0

    .line 88
    const-string v0, "http://schemas.android.com/apk/res/com.android.systemui"

    .line 89
    .local v0, ns:Ljava/lang/String;
    const-string v1, "viewLocation"

    invoke-interface {p2, v0, v1, v2}, Landroid/util/AttributeSet;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/policy/BatteryBarController;->mLocationToLookFor:I

    .line 91
    .end local v0           #ns:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/policy/BatteryBarController;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BatteryBarController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/policy/BatteryBarController;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget v0, p0, Lcom/android/systemui/statusbar/policy/BatteryBarController;->mBatteryLevel:I

    return v0
.end method

.method static synthetic access$102(Lcom/android/systemui/statusbar/policy/BatteryBarController;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    iput p1, p0, Lcom/android/systemui/statusbar/policy/BatteryBarController;->mBatteryLevel:I

    return p1
.end method

.method static synthetic access$202(Lcom/android/systemui/statusbar/policy/BatteryBarController;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/BatteryBarController;->mBatteryCharging:Z

    return p1
.end method


# virtual methods
.method public addBars()V
    .locals 14

    .prologue
    const/4 v13, 0x1

    const/high16 v10, 0x4334

    const/high16 v12, 0x3f80

    const/4 v11, -0x1

    .line 148
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/BatteryBarController;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    .line 149
    .local v3, metrics:Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/BatteryBarController;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "statusbar_battery_bar_thickness"

    invoke-static {v6, v7, v13}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    int-to-float v2, v6

    .line 151
    .local v2, dp:F
    iget v6, v3, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v6, v2

    float-to-double v6, v6

    const-wide/high16 v8, 0x3fe0

    add-double/2addr v6, v8

    double-to-int v5, v6

    .line 152
    .local v5, pixels:I
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/BatteryBarController;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    .line 154
    .local v4, params:Landroid/view/ViewGroup$LayoutParams;
    iget-boolean v6, p0, Lcom/android/systemui/statusbar/policy/BatteryBarController;->isVertical:Z

    if-eqz v6, :cond_1

    .line 155
    iput v5, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 160
    :goto_0
    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/policy/BatteryBarController;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 161
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/BatteryBarController;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/android/systemui/statusbar/policy/Prefs;->getLastBatteryLevel(Landroid/content/Context;)I

    move-result v6

    iput v6, p0, Lcom/android/systemui/statusbar/policy/BatteryBarController;->mBatteryLevel:I

    .line 163
    iget v6, p0, Lcom/android/systemui/statusbar/policy/BatteryBarController;->mStyle:I

    if-nez v6, :cond_2

    .line 164
    new-instance v6, Lcom/android/systemui/statusbar/policy/BatteryBar;

    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/BatteryBarController;->mContext:Landroid/content/Context;

    iget-boolean v8, p0, Lcom/android/systemui/statusbar/policy/BatteryBarController;->mBatteryCharging:Z

    iget v9, p0, Lcom/android/systemui/statusbar/policy/BatteryBarController;->mBatteryLevel:I

    iget-boolean v10, p0, Lcom/android/systemui/statusbar/policy/BatteryBarController;->isVertical:Z

    invoke-direct {v6, v7, v8, v9, v10}, Lcom/android/systemui/statusbar/policy/BatteryBar;-><init>(Landroid/content/Context;ZIZ)V

    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v7, v11, v11, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {p0, v6, v7}, Lcom/android/systemui/statusbar/policy/BatteryBarController;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 185
    :cond_0
    :goto_1
    return-void

    .line 157
    :cond_1
    iput v5, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_0

    .line 167
    :cond_2
    iget v6, p0, Lcom/android/systemui/statusbar/policy/BatteryBarController;->mStyle:I

    if-ne v6, v13, :cond_0

    .line 168
    new-instance v0, Lcom/android/systemui/statusbar/policy/BatteryBar;

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/BatteryBarController;->mContext:Landroid/content/Context;

    iget-boolean v7, p0, Lcom/android/systemui/statusbar/policy/BatteryBarController;->mBatteryCharging:Z

    iget v8, p0, Lcom/android/systemui/statusbar/policy/BatteryBarController;->mBatteryLevel:I

    iget-boolean v9, p0, Lcom/android/systemui/statusbar/policy/BatteryBarController;->isVertical:Z

    invoke-direct {v0, v6, v7, v8, v9}, Lcom/android/systemui/statusbar/policy/BatteryBar;-><init>(Landroid/content/Context;ZIZ)V

    .line 169
    .local v0, bar1:Lcom/android/systemui/statusbar/policy/BatteryBar;
    new-instance v1, Lcom/android/systemui/statusbar/policy/BatteryBar;

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/BatteryBarController;->mContext:Landroid/content/Context;

    iget-boolean v7, p0, Lcom/android/systemui/statusbar/policy/BatteryBarController;->mBatteryCharging:Z

    iget v8, p0, Lcom/android/systemui/statusbar/policy/BatteryBarController;->mBatteryLevel:I

    iget-boolean v9, p0, Lcom/android/systemui/statusbar/policy/BatteryBarController;->isVertical:Z

    invoke-direct {v1, v6, v7, v8, v9}, Lcom/android/systemui/statusbar/policy/BatteryBar;-><init>(Landroid/content/Context;ZIZ)V

    .line 171
    .local v1, bar2:Lcom/android/systemui/statusbar/policy/BatteryBar;
    iget-boolean v6, p0, Lcom/android/systemui/statusbar/policy/BatteryBarController;->isVertical:Z

    if-eqz v6, :cond_3

    .line 172
    invoke-virtual {v1, v10}, Lcom/android/systemui/statusbar/policy/BatteryBar;->setRotationY(F)V

    .line 173
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v6, v11, v11, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {p0, v1, v6}, Lcom/android/systemui/statusbar/policy/BatteryBarController;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 175
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v6, v11, v11, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {p0, v0, v6}, Lcom/android/systemui/statusbar/policy/BatteryBarController;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 178
    :cond_3
    invoke-virtual {v0, v10}, Lcom/android/systemui/statusbar/policy/BatteryBar;->setRotationY(F)V

    .line 179
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v6, v11, v11, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {p0, v0, v6}, Lcom/android/systemui/statusbar/policy/BatteryBarController;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 181
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v6, v11, v11, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {p0, v1, v6}, Lcom/android/systemui/statusbar/policy/BatteryBarController;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1
.end method

.method protected isLocationValid(I)Z
    .locals 1
    .parameter "location"

    .prologue
    .line 208
    iget v0, p0, Lcom/android/systemui/statusbar/policy/BatteryBarController;->mLocationToLookFor:I

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 95
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 96
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/BatteryBarController;->isAttached:Z

    if-nez v1, :cond_0

    .line 97
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/BatteryBarController;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v3, -0x1

    if-ne v1, v3, :cond_1

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/BatteryBarController;->isVertical:Z

    .line 99
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/policy/BatteryBarController;->isAttached:Z

    .line 100
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 101
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 102
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/BatteryBarController;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/BatteryBarController;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 104
    new-instance v1, Lcom/android/systemui/statusbar/policy/BatteryBarController$SettingsObserver;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/statusbar/policy/BatteryBarController$SettingsObserver;-><init>(Lcom/android/systemui/statusbar/policy/BatteryBarController;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/BatteryBarController;->mSettingsObserver:Lcom/android/systemui/statusbar/policy/BatteryBarController$SettingsObserver;

    .line 105
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BatteryBarController;->mSettingsObserver:Lcom/android/systemui/statusbar/policy/BatteryBarController$SettingsObserver;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/BatteryBarController$SettingsObserver;->observe()V

    .line 106
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/BatteryBarController;->updateSettings()V

    .line 108
    .end local v0           #filter:Landroid/content/IntentFilter;
    :cond_0
    return-void

    .line 97
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4
    .parameter "newConfig"

    .prologue
    .line 135
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 136
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/BatteryBarController;->isAttached:Z

    if-eqz v0, :cond_0

    .line 137
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/BatteryBarController;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/statusbar/policy/BatteryBarController$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/policy/BatteryBarController$2;-><init>(Lcom/android/systemui/statusbar/policy/BatteryBarController;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 144
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 125
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/BatteryBarController;->isAttached:Z

    if-eqz v0, :cond_0

    .line 126
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/BatteryBarController;->isAttached:Z

    .line 127
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/BatteryBarController;->removeBars()V

    .line 128
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/BatteryBarController;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BatteryBarController;->mSettingsObserver:Lcom/android/systemui/statusbar/policy/BatteryBarController$SettingsObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 130
    :cond_0
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 131
    return-void
.end method

.method public removeBars()V
    .locals 0

    .prologue
    .line 188
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/BatteryBarController;->removeAllViews()V

    .line 189
    return-void
.end method

.method public updateSettings()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 192
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/BatteryBarController;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "statusbar_battery_bar_style"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/BatteryBarController;->mStyle:I

    .line 194
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/BatteryBarController;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "statusbar_battery_bar"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/BatteryBarController;->mLocation:I

    .line 197
    iget v0, p0, Lcom/android/systemui/statusbar/policy/BatteryBarController;->mLocation:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/BatteryBarController;->isLocationValid(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 198
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/BatteryBarController;->removeBars()V

    .line 199
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/BatteryBarController;->addBars()V

    .line 200
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/policy/BatteryBarController;->setVisibility(I)V

    .line 205
    :goto_0
    return-void

    .line 202
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/BatteryBarController;->removeBars()V

    .line 203
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/BatteryBarController;->setVisibility(I)V

    goto :goto_0
.end method
