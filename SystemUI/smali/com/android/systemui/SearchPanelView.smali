.class public Lcom/android/systemui/SearchPanelView;
.super Landroid/widget/FrameLayout;
.source "SearchPanelView.java"

# interfaces
.implements Landroid/app/ActivityOptions$OnAnimationStartedListener;
.implements Lcom/android/systemui/statusbar/tablet/StatusBarPanel;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/SearchPanelView$SettingsObserver;,
        Lcom/android/systemui/SearchPanelView$GlowPadTriggerListener;
    }
.end annotation


# instance fields
.field private mActionTarget:Lcom/android/systemui/cm/ActionTarget;

.field private mBar:Lcom/android/systemui/statusbar/BaseStatusBar;

.field private final mContext:Landroid/content/Context;

.field private mEndPosOffset:I

.field private mGlowPadView:Lcom/android/internal/widget/multiwaveview/GlowPadView;

.field final mGlowPadViewListener:Lcom/android/systemui/SearchPanelView$GlowPadTriggerListener;

.field private mObserver:Lcom/android/systemui/SearchPanelView$SettingsObserver;

.field private final mPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

.field private mSearchTargetsContainer:Landroid/view/View;

.field private mShowing:Z

.field private mStartPosOffset:I

.field private mStatusBarTouchProxy:Lcom/android/systemui/recent/StatusBarTouchProxy;

.field private mTargetActivities:[Ljava/lang/String;

.field private mWm:Landroid/view/IWindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 84
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/SearchPanelView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 85
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 88
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 119
    new-instance v0, Lcom/android/systemui/SearchPanelView$GlowPadTriggerListener;

    invoke-direct {v0, p0}, Lcom/android/systemui/SearchPanelView$GlowPadTriggerListener;-><init>(Lcom/android/systemui/SearchPanelView;)V

    iput-object v0, p0, Lcom/android/systemui/SearchPanelView;->mGlowPadViewListener:Lcom/android/systemui/SearchPanelView$GlowPadTriggerListener;

    .line 187
    new-instance v0, Lcom/android/systemui/SearchPanelView$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/SearchPanelView$2;-><init>(Lcom/android/systemui/SearchPanelView;)V

    iput-object v0, p0, Lcom/android/systemui/SearchPanelView;->mPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 89
    iput-object p1, p0, Lcom/android/systemui/SearchPanelView;->mContext:Landroid/content/Context;

    .line 90
    const-string v0, "window"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/SearchPanelView;->mWm:Landroid/view/IWindowManager;

    .line 91
    new-instance v0, Lcom/android/systemui/cm/ActionTarget;

    invoke-direct {v0, p1}, Lcom/android/systemui/cm/ActionTarget;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/SearchPanelView;->mActionTarget:Lcom/android/systemui/cm/ActionTarget;

    .line 93
    new-instance v0, Lcom/android/systemui/SearchPanelView$SettingsObserver;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/SearchPanelView$SettingsObserver;-><init>(Lcom/android/systemui/SearchPanelView;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/systemui/SearchPanelView;->mObserver:Lcom/android/systemui/SearchPanelView$SettingsObserver;

    .line 94
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/SearchPanelView;)Lcom/android/systemui/statusbar/BaseStatusBar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/systemui/SearchPanelView;->mBar:Lcom/android/systemui/statusbar/BaseStatusBar;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/SearchPanelView;)Lcom/android/internal/widget/multiwaveview/GlowPadView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/systemui/SearchPanelView;->mGlowPadView:Lcom/android/internal/widget/multiwaveview/GlowPadView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/SearchPanelView;)[Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/systemui/SearchPanelView;->mTargetActivities:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/systemui/SearchPanelView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget v0, p0, Lcom/android/systemui/SearchPanelView;->mStartPosOffset:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/systemui/SearchPanelView;)Lcom/android/systemui/cm/ActionTarget;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/systemui/SearchPanelView;->mActionTarget:Lcom/android/systemui/cm/ActionTarget;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/systemui/SearchPanelView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/systemui/SearchPanelView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/systemui/SearchPanelView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/android/systemui/SearchPanelView;->updateSettings()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/systemui/SearchPanelView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/android/systemui/SearchPanelView;->setDrawables()V

    return-void
.end method

.method private createLayoutTransitioner()Landroid/animation/LayoutTransition;
    .locals 4

    .prologue
    .line 309
    new-instance v0, Landroid/animation/LayoutTransition;

    invoke-direct {v0}, Landroid/animation/LayoutTransition;-><init>()V

    .line 310
    .local v0, transitioner:Landroid/animation/LayoutTransition;
    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/animation/LayoutTransition;->setDuration(J)V

    .line 311
    const/4 v1, 0x1

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/animation/LayoutTransition;->setStartDelay(IJ)V

    .line 312
    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/animation/LayoutTransition;->setAnimator(ILandroid/animation/Animator;)V

    .line 313
    return-object v0
.end method

.method private hasValidTargets()Z
    .locals 5

    .prologue
    .line 206
    iget-object v0, p0, Lcom/android/systemui/SearchPanelView;->mTargetActivities:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 207
    .local v3, target:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 208
    const/4 v4, 0x1

    .line 211
    .end local v3           #target:Ljava/lang/String;
    :goto_1
    return v4

    .line 206
    .restart local v3       #target:Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 211
    .end local v3           #target:Ljava/lang/String;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private isScreenLarge()Z
    .locals 3

    .prologue
    .line 317
    iget-object v2, p0, Lcom/android/systemui/SearchPanelView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 318
    .local v0, configuration:Landroid/content/res/Configuration;
    iget v2, v0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v1, v2, 0xf

    .line 320
    .local v1, screenSize:I
    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    :cond_0
    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private isScreenPortrait()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 325
    iget-object v2, p0, Lcom/android/systemui/SearchPanelView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 326
    .local v0, configuration:Landroid/content/res/Configuration;
    iget v2, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v2, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private pointInside(IILandroid/view/View;)Z
    .locals 5
    .parameter "x"
    .parameter "y"
    .parameter "v"

    .prologue
    .line 169
    invoke-virtual {p3}, Landroid/view/View;->getLeft()I

    move-result v1

    .line 170
    .local v1, l:I
    invoke-virtual {p3}, Landroid/view/View;->getRight()I

    move-result v2

    .line 171
    .local v2, r:I
    invoke-virtual {p3}, Landroid/view/View;->getTop()I

    move-result v3

    .line 172
    .local v3, t:I
    invoke-virtual {p3}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 173
    .local v0, b:I
    if-lt p1, v1, :cond_0

    if-ge p1, v2, :cond_0

    if-lt p2, v3, :cond_0

    if-ge p2, v0, :cond_0

    const/4 v4, 0x1

    :goto_0
    return v4

    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private setDrawables()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 143
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 145
    .local v1, targets:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/widget/multiwaveview/TargetDrawable;>;"
    invoke-direct {p0}, Lcom/android/systemui/SearchPanelView;->isScreenLarge()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/SearchPanelView;->isScreenPortrait()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 146
    :cond_0
    const/4 v2, 0x1

    iput v2, p0, Lcom/android/systemui/SearchPanelView;->mStartPosOffset:I

    .line 147
    const/4 v2, 0x4

    iput v2, p0, Lcom/android/systemui/SearchPanelView;->mEndPosOffset:I

    .line 154
    :goto_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget v2, p0, Lcom/android/systemui/SearchPanelView;->mStartPosOffset:I

    if-ge v0, v2, :cond_2

    .line 155
    iget-object v2, p0, Lcom/android/systemui/SearchPanelView;->mContext:Landroid/content/Context;

    invoke-static {v2, v4}, Lcom/android/internal/util/cm/NavigationRingHelpers;->getTargetDrawable(Landroid/content/Context;Ljava/lang/String;)Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 154
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 149
    .end local v0           #i:I
    :cond_1
    const/4 v2, 0x3

    iput v2, p0, Lcom/android/systemui/SearchPanelView;->mStartPosOffset:I

    .line 150
    const/4 v2, 0x2

    iput v2, p0, Lcom/android/systemui/SearchPanelView;->mEndPosOffset:I

    goto :goto_0

    .line 158
    .restart local v0       #i:I
    :cond_2
    const/4 v0, 0x0

    :goto_2
    iget-object v2, p0, Lcom/android/systemui/SearchPanelView;->mTargetActivities:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_3

    .line 159
    iget-object v2, p0, Lcom/android/systemui/SearchPanelView;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/systemui/SearchPanelView;->mTargetActivities:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-static {v2, v3}, Lcom/android/internal/util/cm/NavigationRingHelpers;->getTargetDrawable(Landroid/content/Context;Ljava/lang/String;)Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 158
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 162
    :cond_3
    const/4 v0, 0x0

    :goto_3
    iget v2, p0, Lcom/android/systemui/SearchPanelView;->mEndPosOffset:I

    if-ge v0, v2, :cond_4

    .line 163
    iget-object v2, p0, Lcom/android/systemui/SearchPanelView;->mContext:Landroid/content/Context;

    invoke-static {v2, v4}, Lcom/android/internal/util/cm/NavigationRingHelpers;->getTargetDrawable(Landroid/content/Context;Ljava/lang/String;)Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 162
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 165
    :cond_4
    iget-object v2, p0, Lcom/android/systemui/SearchPanelView;->mGlowPadView:Lcom/android/internal/widget/multiwaveview/GlowPadView;

    invoke-virtual {v2, v1}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->setTargetResources(Ljava/util/ArrayList;)V

    .line 166
    return-void
.end method

.method private updateSettings()V
    .locals 1

    .prologue
    .line 330
    iget-object v0, p0, Lcom/android/systemui/SearchPanelView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/util/cm/NavigationRingHelpers;->getTargetActions(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/SearchPanelView;->mTargetActivities:[Ljava/lang/String;

    .line 331
    return-void
.end method

.method private vibrate()V
    .locals 7

    .prologue
    .line 196
    invoke-virtual {p0}, Lcom/android/systemui/SearchPanelView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 197
    .local v0, context:Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "haptic_feedback_enabled"

    const/4 v5, 0x1

    const/4 v6, -0x2

    invoke-static {v3, v4, v5, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-eqz v3, :cond_0

    .line 199
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 200
    .local v1, res:Landroid/content/res/Resources;
    const-string v3, "vibrator"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Vibrator;

    .line 201
    .local v2, vibrator:Landroid/os/Vibrator;
    const v3, 0x7f0d0003

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v2, v3, v4}, Landroid/os/Vibrator;->vibrate(J)V

    .line 203
    .end local v1           #res:Landroid/content/res/Resources;
    .end local v2           #vibrator:Landroid/os/Vibrator;
    :cond_0
    return-void
.end method


# virtual methods
.method public dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    .line 267
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v0, v2

    .line 268
    .local v0, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v1, v2

    .line 269
    .local v1, y:I
    if-ltz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/SearchPanelView;->getWidth()I

    move-result v2

    if-ge v0, v2, :cond_0

    if-ltz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/SearchPanelView;->getHeight()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 270
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    .line 272
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public isInContentArea(II)Z
    .locals 2
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v0, 0x1

    .line 177
    iget-object v1, p0, Lcom/android/systemui/SearchPanelView;->mSearchTargetsContainer:Landroid/view/View;

    invoke-direct {p0, p1, p2, v1}, Lcom/android/systemui/SearchPanelView;->pointInside(IILandroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 183
    :cond_0
    :goto_0
    return v0

    .line 179
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/SearchPanelView;->mStatusBarTouchProxy:Lcom/android/systemui/recent/StatusBarTouchProxy;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/SearchPanelView;->mStatusBarTouchProxy:Lcom/android/systemui/recent/StatusBarTouchProxy;

    invoke-direct {p0, p1, p2, v1}, Lcom/android/systemui/SearchPanelView;->pointInside(IILandroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 183
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 295
    iget-boolean v0, p0, Lcom/android/systemui/SearchPanelView;->mShowing:Z

    return v0
.end method

.method public onAnimationStarted()V
    .locals 3

    .prologue
    .line 123
    new-instance v0, Lcom/android/systemui/SearchPanelView$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/SearchPanelView$1;-><init>(Lcom/android/systemui/SearchPanelView;)V

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/systemui/SearchPanelView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 129
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 1

    .prologue
    .line 277
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 279
    iget-object v0, p0, Lcom/android/systemui/SearchPanelView;->mObserver:Lcom/android/systemui/SearchPanelView$SettingsObserver;

    invoke-virtual {v0}, Lcom/android/systemui/SearchPanelView$SettingsObserver;->observe()V

    .line 280
    invoke-direct {p0}, Lcom/android/systemui/SearchPanelView;->updateSettings()V

    .line 281
    invoke-direct {p0}, Lcom/android/systemui/SearchPanelView;->setDrawables()V

    .line 282
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 286
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 287
    iget-object v0, p0, Lcom/android/systemui/SearchPanelView;->mObserver:Lcom/android/systemui/SearchPanelView$SettingsObserver;

    invoke-virtual {v0}, Lcom/android/systemui/SearchPanelView$SettingsObserver;->unobserve()V

    .line 288
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 133
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 134
    iget-object v0, p0, Lcom/android/systemui/SearchPanelView;->mContext:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 135
    const v0, 0x7f09008b

    invoke-virtual {p0, v0}, Lcom/android/systemui/SearchPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/SearchPanelView;->mSearchTargetsContainer:Landroid/view/View;

    .line 136
    const v0, 0x7f0900c8

    invoke-virtual {p0, v0}, Lcom/android/systemui/SearchPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/recent/StatusBarTouchProxy;

    iput-object v0, p0, Lcom/android/systemui/SearchPanelView;->mStatusBarTouchProxy:Lcom/android/systemui/recent/StatusBarTouchProxy;

    .line 138
    const v0, 0x7f09008d

    invoke-virtual {p0, v0}, Lcom/android/systemui/SearchPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/multiwaveview/GlowPadView;

    iput-object v0, p0, Lcom/android/systemui/SearchPanelView;->mGlowPadView:Lcom/android/internal/widget/multiwaveview/GlowPadView;

    .line 139
    iget-object v0, p0, Lcom/android/systemui/SearchPanelView;->mGlowPadView:Lcom/android/internal/widget/multiwaveview/GlowPadView;

    iget-object v1, p0, Lcom/android/systemui/SearchPanelView;->mGlowPadViewListener:Lcom/android/systemui/SearchPanelView$GlowPadTriggerListener;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->setOnTriggerListener(Lcom/android/internal/widget/multiwaveview/GlowPadView$OnTriggerListener;)V

    .line 140
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 258
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 260
    return-void
.end method

.method public setBar(Lcom/android/systemui/statusbar/BaseStatusBar;)V
    .locals 0
    .parameter "bar"

    .prologue
    .line 299
    iput-object p1, p0, Lcom/android/systemui/SearchPanelView;->mBar:Lcom/android/systemui/statusbar/BaseStatusBar;

    .line 300
    return-void
.end method

.method public setStatusBarView(Landroid/view/View;)V
    .locals 1
    .parameter "statusBarView"

    .prologue
    .line 303
    iget-object v0, p0, Lcom/android/systemui/SearchPanelView;->mStatusBarTouchProxy:Lcom/android/systemui/recent/StatusBarTouchProxy;

    if-eqz v0, :cond_0

    .line 304
    iget-object v0, p0, Lcom/android/systemui/SearchPanelView;->mStatusBarTouchProxy:Lcom/android/systemui/recent/StatusBarTouchProxy;

    invoke-virtual {v0, p1}, Lcom/android/systemui/recent/StatusBarTouchProxy;->setStatusBar(Landroid/view/View;)V

    .line 306
    :cond_0
    return-void
.end method

.method public show(ZZ)V
    .locals 7
    .parameter "show"
    .parameter "animate"

    .prologue
    const/4 v6, 0x1

    .line 215
    if-nez p1, :cond_0

    .line 216
    if-eqz p2, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/SearchPanelView;->createLayoutTransitioner()Landroid/animation/LayoutTransition;

    move-result-object v1

    .line 217
    .local v1, transitioner:Landroid/animation/LayoutTransition;
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/SearchPanelView;->mSearchTargetsContainer:Landroid/view/View;

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 219
    .end local v1           #transitioner:Landroid/animation/LayoutTransition;
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/SearchPanelView;->mShowing:Z

    .line 220
    if-eqz p1, :cond_4

    invoke-direct {p0}, Lcom/android/systemui/SearchPanelView;->hasValidTargets()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 221
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v2, p0, Lcom/android/systemui/SearchPanelView;->mTargetActivities:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 222
    iget-object v2, p0, Lcom/android/systemui/SearchPanelView;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/systemui/SearchPanelView;->mGlowPadView:Lcom/android/internal/widget/multiwaveview/GlowPadView;

    iget-object v4, p0, Lcom/android/systemui/SearchPanelView;->mTargetActivities:[Ljava/lang/String;

    aget-object v4, v4, v0

    iget v5, p0, Lcom/android/systemui/SearchPanelView;->mStartPosOffset:I

    add-int/2addr v5, v0

    invoke-static {v2, v3, v4, v5}, Lcom/android/internal/util/cm/NavigationRingHelpers;->updateDynamicIconIfNeeded(Landroid/content/Context;Lcom/android/internal/widget/multiwaveview/GlowPadView;Ljava/lang/String;I)V

    .line 221
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 216
    .end local v0           #i:I
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 225
    .restart local v0       #i:I
    :cond_2
    iget-object v2, p0, Lcom/android/systemui/SearchPanelView;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/systemui/SearchPanelView;->mGlowPadView:Lcom/android/internal/widget/multiwaveview/GlowPadView;

    invoke-static {v2, v3}, Lcom/android/internal/util/cm/NavigationRingHelpers;->swapSearchIconIfNeeded(Landroid/content/Context;Lcom/android/internal/widget/multiwaveview/GlowPadView;)V

    .line 226
    invoke-virtual {p0}, Lcom/android/systemui/SearchPanelView;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_3

    .line 227
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/systemui/SearchPanelView;->setVisibility(I)V

    .line 230
    iget-object v2, p0, Lcom/android/systemui/SearchPanelView;->mGlowPadView:Lcom/android/internal/widget/multiwaveview/GlowPadView;

    invoke-virtual {v2}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->suspendAnimations()V

    .line 231
    iget-object v2, p0, Lcom/android/systemui/SearchPanelView;->mGlowPadView:Lcom/android/internal/widget/multiwaveview/GlowPadView;

    invoke-virtual {v2}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->ping()V

    .line 232
    invoke-virtual {p0}, Lcom/android/systemui/SearchPanelView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/SearchPanelView;->mPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v2, v3}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 233
    invoke-direct {p0}, Lcom/android/systemui/SearchPanelView;->vibrate()V

    .line 235
    :cond_3
    invoke-virtual {p0, v6}, Lcom/android/systemui/SearchPanelView;->setFocusable(Z)V

    .line 236
    invoke-virtual {p0, v6}, Lcom/android/systemui/SearchPanelView;->setFocusableInTouchMode(Z)V

    .line 237
    invoke-virtual {p0}, Lcom/android/systemui/SearchPanelView;->requestFocus()Z

    .line 241
    .end local v0           #i:I
    :goto_2
    return-void

    .line 239
    :cond_4
    const/4 v2, 0x4

    invoke-virtual {p0, v2}, Lcom/android/systemui/SearchPanelView;->setVisibility(I)V

    goto :goto_2
.end method
