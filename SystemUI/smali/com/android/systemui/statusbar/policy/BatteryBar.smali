.class public Lcom/android/systemui/statusbar/policy/BatteryBar;
.super Landroid/widget/RelativeLayout;
.source "BatteryBar.java"

# interfaces
.implements Landroid/graphics/drawable/Animatable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/BatteryBar$SettingsObserver;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private isAnimating:Z

.field private mAttached:Z

.field mBatteryBar:Landroid/view/View;

.field mBatteryBarLayout:Landroid/widget/LinearLayout;

.field private mBatteryCharging:Z

.field private mBatteryLevel:I

.field mCharger:Landroid/view/View;

.field mChargerLayout:Landroid/widget/LinearLayout;

.field private mChargingLevel:I

.field private final mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mSettingsObserver:Lcom/android/systemui/statusbar/policy/BatteryBar$SettingsObserver;

.field private shouldAnimateCharging:Z

.field vertical:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const-class v0, Lcom/android/systemui/statusbar/policy/BatteryBar;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/policy/BatteryBar;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 88
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/policy/BatteryBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 89
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 105
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/policy/BatteryBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 106
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v1, 0x0

    .line 109
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 46
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/BatteryBar;->mAttached:Z

    .line 47
    iput v1, p0, Lcom/android/systemui/statusbar/policy/BatteryBar;->mBatteryLevel:I

    .line 48
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/statusbar/policy/BatteryBar;->mChargingLevel:I

    .line 49
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/BatteryBar;->mBatteryCharging:Z

    .line 50
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/BatteryBar;->shouldAnimateCharging:Z

    .line 51
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/BatteryBar;->isAnimating:Z

    .line 64
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/BatteryBar;->vertical:Z

    .line 168
    new-instance v0, Lcom/android/systemui/statusbar/policy/BatteryBar$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/BatteryBar$1;-><init>(Lcom/android/systemui/statusbar/policy/BatteryBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/BatteryBar;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 110
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZIZ)V
    .locals 1
    .parameter "context"
    .parameter "isCharging"
    .parameter "currentCharge"
    .parameter "isVertical"

    .prologue
    .line 98
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/policy/BatteryBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 99
    iput p3, p0, Lcom/android/systemui/statusbar/policy/BatteryBar;->mBatteryLevel:I

    .line 100
    iput-boolean p2, p0, Lcom/android/systemui/statusbar/policy/BatteryBar;->mBatteryCharging:Z

    .line 101
    iput-boolean p4, p0, Lcom/android/systemui/statusbar/policy/BatteryBar;->vertical:Z

    .line 102
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/policy/BatteryBar;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BatteryBar;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/policy/BatteryBar;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/BatteryBar;->updateSettings()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/policy/BatteryBar;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget v0, p0, Lcom/android/systemui/statusbar/policy/BatteryBar;->mBatteryLevel:I

    return v0
.end method

.method static synthetic access$202(Lcom/android/systemui/statusbar/policy/BatteryBar;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    iput p1, p0, Lcom/android/systemui/statusbar/policy/BatteryBar;->mBatteryLevel:I

    return p1
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/policy/BatteryBar;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/BatteryBar;->mBatteryCharging:Z

    return v0
.end method

.method static synthetic access$302(Lcom/android/systemui/statusbar/policy/BatteryBar;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/BatteryBar;->mBatteryCharging:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/policy/BatteryBar;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/BatteryBar;->setProgress(I)V

    return-void
.end method

.method private setProgress(I)V
    .locals 8
    .parameter "n"

    .prologue
    const-wide/high16 v4, 0x4059

    const-wide/high16 v6, 0x3fe0

    .line 212
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/BatteryBar;->vertical:Z

    if-eqz v2, :cond_0

    .line 213
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/BatteryBar;->getHeight()I

    move-result v2

    int-to-double v2, v2

    div-double/2addr v2, v4

    int-to-double v4, p1

    mul-double/2addr v2, v4

    add-double/2addr v2, v6

    double-to-int v1, v2

    .line 214
    .local v1, w:I
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/BatteryBar;->mBatteryBarLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 216
    .local v0, params:Landroid/widget/RelativeLayout$LayoutParams;
    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 217
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/BatteryBar;->mBatteryBarLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 225
    :goto_0
    return-void

    .line 219
    .end local v0           #params:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v1           #w:I
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/BatteryBar;->getWidth()I

    move-result v2

    int-to-double v2, v2

    div-double/2addr v2, v4

    int-to-double v4, p1

    mul-double/2addr v2, v4

    add-double/2addr v2, v6

    double-to-int v1, v2

    .line 220
    .restart local v1       #w:I
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/BatteryBar;->mBatteryBarLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 222
    .restart local v0       #params:Landroid/widget/RelativeLayout$LayoutParams;
    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 223
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/BatteryBar;->mBatteryBarLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method private updateSettings()V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 193
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/BatteryBar;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 195
    .local v1, resolver:Landroid/content/ContentResolver;
    const-string v4, "statusbar_battery_bar_color"

    const v5, -0xcc4a1b

    invoke-static {v1, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 198
    .local v0, color:I
    const-string v4, "statusbar_battery_bar_animate"

    invoke-static {v1, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v2, :cond_0

    :goto_0
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/policy/BatteryBar;->shouldAnimateCharging:Z

    .line 201
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/BatteryBar;->mBatteryCharging:Z

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/android/systemui/statusbar/policy/BatteryBar;->mBatteryLevel:I

    const/16 v3, 0x64

    if-ge v2, v3, :cond_1

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/BatteryBar;->shouldAnimateCharging:Z

    if-eqz v2, :cond_1

    .line 202
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/BatteryBar;->start()V

    .line 206
    :goto_1
    iget v2, p0, Lcom/android/systemui/statusbar/policy/BatteryBar;->mBatteryLevel:I

    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/policy/BatteryBar;->setProgress(I)V

    .line 207
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/BatteryBar;->mBatteryBar:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 208
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/BatteryBar;->mCharger:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 209
    return-void

    :cond_0
    move v2, v3

    .line 198
    goto :goto_0

    .line 204
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/BatteryBar;->stop()V

    goto :goto_1
.end method


# virtual methods
.method public isRunning()Z
    .locals 1

    .prologue
    .line 262
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/BatteryBar;->isAnimating:Z

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 8

    .prologue
    const/4 v7, -0x1

    .line 114
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    .line 115
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/policy/BatteryBar;->mAttached:Z

    if-nez v4, :cond_0

    .line 116
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/systemui/statusbar/policy/BatteryBar;->mAttached:Z

    .line 118
    new-instance v4, Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/BatteryBar;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/systemui/statusbar/policy/BatteryBar;->mBatteryBarLayout:Landroid/widget/LinearLayout;

    .line 119
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/BatteryBar;->mBatteryBarLayout:Landroid/widget/LinearLayout;

    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v5, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v4, v5}, Lcom/android/systemui/statusbar/policy/BatteryBar;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 122
    new-instance v4, Landroid/view/View;

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/BatteryBar;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/systemui/statusbar/policy/BatteryBar;->mBatteryBar:Landroid/view/View;

    .line 123
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/BatteryBar;->mBatteryBarLayout:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/BatteryBar;->mBatteryBar:Landroid/view/View;

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v6, v7, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 126
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/BatteryBar;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 127
    .local v2, metrics:Landroid/util/DisplayMetrics;
    const/high16 v0, 0x4080

    .line 128
    .local v0, dp:F
    iget v4, v2, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v4, v0

    const/high16 v5, 0x3f00

    add-float/2addr v4, v5

    float-to-int v3, v4

    .line 131
    .local v3, pixels:I
    new-instance v4, Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/BatteryBar;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/systemui/statusbar/policy/BatteryBar;->mChargerLayout:Landroid/widget/LinearLayout;

    .line 133
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/policy/BatteryBar;->vertical:Z

    if-eqz v4, :cond_1

    .line 134
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/BatteryBar;->mChargerLayout:Landroid/widget/LinearLayout;

    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v5, v7, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v4, v5}, Lcom/android/systemui/statusbar/policy/BatteryBar;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 141
    :goto_0
    new-instance v4, Landroid/view/View;

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/BatteryBar;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/systemui/statusbar/policy/BatteryBar;->mCharger:Landroid/view/View;

    .line 142
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/BatteryBar;->mChargerLayout:Landroid/widget/LinearLayout;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 143
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/BatteryBar;->mChargerLayout:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/BatteryBar;->mCharger:Landroid/view/View;

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v6, v7, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 146
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 147
    .local v1, filter:Landroid/content/IntentFilter;
    const-string v4, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 148
    const-string v4, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 149
    const-string v4, "android.intent.action.SCREEN_ON"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 150
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/BatteryBar;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/BatteryBar;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/BatteryBar;->getHandler()Landroid/os/Handler;

    move-result-object v7

    invoke-virtual {v4, v5, v1, v6, v7}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 152
    new-instance v4, Lcom/android/systemui/statusbar/policy/BatteryBar$SettingsObserver;

    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    invoke-direct {v4, p0, v5}, Lcom/android/systemui/statusbar/policy/BatteryBar$SettingsObserver;-><init>(Lcom/android/systemui/statusbar/policy/BatteryBar;Landroid/os/Handler;)V

    iput-object v4, p0, Lcom/android/systemui/statusbar/policy/BatteryBar;->mSettingsObserver:Lcom/android/systemui/statusbar/policy/BatteryBar$SettingsObserver;

    .line 153
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/BatteryBar;->mSettingsObserver:Lcom/android/systemui/statusbar/policy/BatteryBar$SettingsObserver;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/policy/BatteryBar$SettingsObserver;->observe()V

    .line 154
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/BatteryBar;->updateSettings()V

    .line 156
    .end local v0           #dp:F
    .end local v1           #filter:Landroid/content/IntentFilter;
    .end local v2           #metrics:Landroid/util/DisplayMetrics;
    .end local v3           #pixels:I
    :cond_0
    return-void

    .line 137
    .restart local v0       #dp:F
    .restart local v2       #metrics:Landroid/util/DisplayMetrics;
    .restart local v3       #pixels:I
    :cond_1
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/BatteryBar;->mChargerLayout:Landroid/widget/LinearLayout;

    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v5, v3, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v4, v5}, Lcom/android/systemui/statusbar/policy/BatteryBar;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 160
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    .line 161
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/BatteryBar;->mAttached:Z

    if-eqz v0, :cond_0

    .line 162
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/BatteryBar;->mAttached:Z

    .line 163
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/BatteryBar;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BatteryBar;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 164
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/BatteryBar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BatteryBar;->mSettingsObserver:Lcom/android/systemui/statusbar/policy/BatteryBar$SettingsObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 166
    :cond_0
    return-void
.end method

.method public start()V
    .locals 9

    .prologue
    const-wide/16 v7, 0x3e8

    const/4 v6, 0x0

    const/4 v5, -0x1

    .line 229
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/BatteryBar;->shouldAnimateCharging:Z

    if-nez v1, :cond_0

    .line 251
    :goto_0
    return-void

    .line 233
    :cond_0
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/BatteryBar;->vertical:Z

    if-eqz v1, :cond_1

    .line 234
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/BatteryBar;->getX()F

    move-result v1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/BatteryBar;->getX()F

    move-result v2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/BatteryBar;->getHeight()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/BatteryBar;->mBatteryBarLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 236
    .local v0, a:Landroid/view/animation/TranslateAnimation;
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 237
    invoke-virtual {v0, v7, v8}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 238
    invoke-virtual {v0, v5}, Landroid/view/animation/TranslateAnimation;->setRepeatCount(I)V

    .line 239
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BatteryBar;->mChargerLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 240
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BatteryBar;->mChargerLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 250
    :goto_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/BatteryBar;->isAnimating:Z

    goto :goto_0

    .line 242
    .end local v0           #a:Landroid/view/animation/TranslateAnimation;
    :cond_1
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/BatteryBar;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/BatteryBar;->mBatteryBarLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/BatteryBar;->getTop()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/BatteryBar;->getTop()I

    move-result v4

    int-to-float v4, v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 244
    .restart local v0       #a:Landroid/view/animation/TranslateAnimation;
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 245
    invoke-virtual {v0, v7, v8}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 246
    invoke-virtual {v0, v5}, Landroid/view/animation/TranslateAnimation;->setRepeatCount(I)V

    .line 247
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BatteryBar;->mChargerLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 248
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BatteryBar;->mChargerLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 255
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BatteryBar;->mChargerLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->clearAnimation()V

    .line 256
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BatteryBar;->mChargerLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 257
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/BatteryBar;->isAnimating:Z

    .line 258
    return-void
.end method
