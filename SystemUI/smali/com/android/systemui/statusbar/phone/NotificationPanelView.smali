.class public Lcom/android/systemui/statusbar/phone/NotificationPanelView;
.super Lcom/android/systemui/statusbar/phone/PanelView;
.source "NotificationPanelView.java"


# instance fields
.field private mFlipOffset:F

.field private mGestureStartX:F

.field private mGestureStartY:F

.field private mHandleBar:Landroid/graphics/drawable/Drawable;

.field private mHandleBarHeight:I

.field private mHandleView:Landroid/view/View;

.field private mOkToFlip:Z

.field private mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

.field private mSwipeDirection:F

.field private mSwipeTriggered:Z

.field private mTrackingSwipe:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/PanelView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 56
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 4
    .parameter "canvas"

    .prologue
    const/4 v3, 0x0

    .line 98
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelView;->draw(Landroid/graphics/Canvas;)V

    .line 99
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getHeight()I

    move-result v1

    iget v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHandleBarHeight:I

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getPaddingBottom()I

    move-result v2

    sub-int v0, v1, v2

    .line 100
    .local v0, off:I
    int-to-float v1, v0

    invoke-virtual {p1, v3, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 101
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHandleBar:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHandleView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getDrawableState()[I

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 102
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHandleBar:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 103
    neg-int v1, v0

    int-to-float v1, v1

    invoke-virtual {p1, v3, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 104
    return-void
.end method

.method public fling(FZ)V
    .locals 4
    .parameter "vel"
    .parameter "always"

    .prologue
    .line 76
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mBar:Lcom/android/systemui/statusbar/phone/PanelBar;

    check-cast v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getGestureRecorder()Lcom/android/systemui/statusbar/GestureRecorder;

    move-result-object v0

    .line 77
    .local v0, gr:Lcom/android/systemui/statusbar/GestureRecorder;
    if-eqz v0, :cond_0

    .line 78
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fling "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v1, 0x0

    cmpl-float v1, p1, v1

    if-lez v1, :cond_1

    const-string v1, "open"

    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifications,v="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/GestureRecorder;->tag(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/PanelView;->fling(FZ)V

    .line 83
    return-void

    .line 78
    :cond_1
    const-string v1, "closed"

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 64
    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->onFinishInflate()V

    .line 66
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 67
    .local v0, resources:Landroid/content/res/Resources;
    const v1, 0x7f020210

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHandleBar:Landroid/graphics/drawable/Drawable;

    .line 68
    const v1, 0x7f0e0033

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHandleBarHeight:I

    .line 69
    const v1, 0x7f090028

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHandleView:Landroid/view/View;

    .line 71
    const v1, 0x7f0a00bd

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 72
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 6
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 88
    invoke-super/range {p0 .. p5}, Lcom/android/systemui/statusbar/phone/PanelView;->onLayout(ZIIII)V

    .line 89
    if-eqz p1, :cond_0

    .line 90
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getPaddingLeft()I

    move-result v0

    .line 91
    .local v0, pl:I
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getPaddingRight()I

    move-result v1

    .line 92
    .local v1, pr:I
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHandleBar:Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getWidth()I

    move-result v4

    sub-int/2addr v4, v1

    iget v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHandleBarHeight:I

    invoke-virtual {v2, v0, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 94
    .end local v0           #pl:I
    .end local v1           #pr:I
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 30
    .parameter "event"

    .prologue
    .line 108
    const/16 v26, 0x0

    .line 109
    .local v26, shouldRecycleEvent:Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-boolean v2, v2, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHasFlipSettings:Z

    if-eqz v2, :cond_d

    .line 110
    const/16 v18, 0x0

    .line 111
    .local v18, flip:Z
    const/16 v27, 0x0

    .line 112
    .local v27, swipeFlipJustFinished:Z
    const/16 v28, 0x0

    .line 113
    .local v28, swipeFlipJustStarted:Z
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 176
    :cond_0
    :goto_0
    :pswitch_0
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mOkToFlip:Z

    if-eqz v2, :cond_11

    if-eqz v18, :cond_11

    .line 177
    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v23

    .line 178
    .local v23, miny:F
    move/from16 v21, v23

    .line 179
    .local v21, maxy:F
    const/16 v19, 0x1

    .local v19, i:I
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    move/from16 v0, v19

    if-ge v0, v2, :cond_a

    .line 180
    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v29

    .line 181
    .local v29, y:F
    cmpg-float v2, v29, v23

    if-gez v2, :cond_1

    move/from16 v23, v29

    .line 182
    :cond_1
    cmpl-float v2, v29, v21

    if-lez v2, :cond_2

    move/from16 v21, v29

    .line 179
    :cond_2
    add-int/lit8 v19, v19, 0x1

    goto :goto_1

    .line 115
    .end local v19           #i:I
    .end local v21           #maxy:F
    .end local v23           #miny:F
    .end local v29           #y:F
    :pswitch_1
    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mGestureStartX:F

    .line 116
    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mGestureStartY:F

    .line 117
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isFullyExpanded()Z

    move-result v2

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mGestureStartY:F

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getHeight()I

    move-result v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHandleBarHeight:I

    sub-int/2addr v3, v4

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_3

    const/4 v2, 0x1

    :goto_2
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mTrackingSwipe:Z

    .line 120
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getExpandedHeight()F

    move-result v2

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-nez v2, :cond_4

    const/4 v2, 0x1

    :goto_3
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mOkToFlip:Z

    .line 121
    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    const v4, 0x3f59999a

    mul-float/2addr v3, v4

    cmpl-float v2, v2, v3

    if-lez v2, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "qs_quick_pulldown"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_5

    .line 124
    const/16 v18, 0x1

    goto/16 :goto_0

    .line 117
    :cond_3
    const/4 v2, 0x0

    goto :goto_2

    .line 120
    :cond_4
    const/4 v2, 0x0

    goto :goto_3

    .line 125
    :cond_5
    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    const v4, 0x3e199998

    mul-float/2addr v3, v4

    cmpg-float v2, v2, v3

    if-gez v2, :cond_6

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "qs_quick_pulldown"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_6

    .line 128
    const/16 v18, 0x1

    goto/16 :goto_0

    .line 129
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->hasClearableNotifications()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "qs_quick_pulldown"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    .line 132
    const/16 v18, 0x1

    goto/16 :goto_0

    .line 136
    :pswitch_2
    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mGestureStartX:F

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v16

    .line 137
    .local v16, deltaX:F
    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mGestureStartY:F

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v17

    .line 138
    .local v17, deltaY:F
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    const v3, 0x3ccccccd

    mul-float v20, v2, v3

    .line 139
    .local v20, maxDeltaY:F
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    const v3, 0x3d4ccccd

    mul-float v22, v2, v3

    .line 140
    .local v22, minDeltaX:F
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mTrackingSwipe:Z

    if-eqz v2, :cond_7

    cmpl-float v2, v17, v20

    if-lez v2, :cond_7

    .line 141
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mTrackingSwipe:Z

    .line 143
    :cond_7
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mTrackingSwipe:Z

    if-eqz v2, :cond_0

    cmpl-float v2, v16, v17

    if-lez v2, :cond_0

    cmpl-float v2, v16, v22

    if-lez v2, :cond_0

    .line 152
    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mGestureStartX:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_8

    const/high16 v2, -0x4080

    :goto_4
    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mSwipeDirection:F

    .line 154
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isShowingSettings()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 155
    const/high16 v2, 0x3f80

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mFlipOffset:F

    .line 157
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mSwipeDirection:F

    neg-float v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mSwipeDirection:F

    .line 161
    :goto_5
    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mGestureStartX:F

    .line 162
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mTrackingSwipe:Z

    .line 163
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mSwipeTriggered:Z

    .line 164
    const/16 v28, 0x1

    goto/16 :goto_0

    .line 152
    :cond_8
    const/high16 v2, 0x3f80

    goto :goto_4

    .line 159
    :cond_9
    const/high16 v2, -0x4080

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mFlipOffset:F

    goto :goto_5

    .line 168
    .end local v16           #deltaX:F
    .end local v17           #deltaY:F
    .end local v20           #maxDeltaY:F
    .end local v22           #minDeltaX:F
    :pswitch_3
    const/16 v18, 0x1

    .line 169
    goto/16 :goto_0

    .line 171
    :pswitch_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mSwipeTriggered:Z

    move/from16 v27, v0

    .line 172
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mSwipeTriggered:Z

    .line 173
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mTrackingSwipe:Z

    goto/16 :goto_0

    .line 184
    .restart local v19       #i:I
    .restart local v21       #maxy:F
    .restart local v23       #miny:F
    :cond_a
    sub-float v2, v21, v23

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHandleBarHeight:I

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_b

    .line 185
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getMeasuredHeight()I

    move-result v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHandleBarHeight:I

    if-ge v2, v3, :cond_f

    .line 186
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->switchToSettings()V

    .line 195
    :goto_6
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mOkToFlip:Z

    .line 208
    .end local v19           #i:I
    .end local v21           #maxy:F
    .end local v23           #miny:F
    :cond_b
    :goto_7
    if-nez v28, :cond_c

    if-eqz v27, :cond_d

    .line 210
    :cond_c
    move-object/from16 v24, p1

    .line 211
    .local v24, original:Landroid/view/MotionEvent;
    invoke-virtual/range {v24 .. v24}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v2

    invoke-virtual/range {v24 .. v24}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    invoke-virtual/range {v24 .. v24}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getWidth()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getHeight()I

    move-result v8

    int-to-float v8, v8

    const/4 v9, 0x0

    move-object/from16 v0, v24

    invoke-virtual {v0, v9}, Landroid/view/MotionEvent;->getPressure(I)F

    move-result v9

    const/4 v10, 0x0

    move-object/from16 v0, v24

    invoke-virtual {v0, v10}, Landroid/view/MotionEvent;->getSize(I)F

    move-result v10

    invoke-virtual/range {v24 .. v24}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v11

    invoke-virtual/range {v24 .. v24}, Landroid/view/MotionEvent;->getXPrecision()F

    move-result v12

    invoke-virtual/range {v24 .. v24}, Landroid/view/MotionEvent;->getYPrecision()F

    move-result v13

    invoke-virtual/range {v24 .. v24}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v14

    invoke-virtual/range {v24 .. v24}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v15

    invoke-static/range {v2 .. v15}, Landroid/view/MotionEvent;->obtain(JJIFFFFIFFII)Landroid/view/MotionEvent;

    move-result-object p1

    .line 223
    const/16 v26, 0x1

    .line 227
    .end local v18           #flip:Z
    .end local v24           #original:Landroid/view/MotionEvent;
    .end local v27           #swipeFlipJustFinished:Z
    .end local v28           #swipeFlipJustStarted:Z
    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHandleView:Landroid/view/View;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v25

    .line 228
    .local v25, result:Z
    if-eqz v26, :cond_e

    .line 229
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->recycle()V

    .line 231
    .end local v25           #result:Z
    :cond_e
    :goto_8
    return v25

    .line 189
    .restart local v18       #flip:Z
    .restart local v19       #i:I
    .restart local v21       #maxy:F
    .restart local v23       #miny:F
    .restart local v27       #swipeFlipJustFinished:Z
    .restart local v28       #swipeFlipJustStarted:Z
    :cond_f
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    if-nez v2, :cond_10

    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHandleBarHeight:I

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_10

    .line 190
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->switchToSettings()V

    goto :goto_6

    .line 192
    :cond_10
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->flipToSettings()V

    goto :goto_6

    .line 197
    .end local v19           #i:I
    .end local v21           #maxy:F
    .end local v23           #miny:F
    :cond_11
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mSwipeTriggered:Z

    if-eqz v2, :cond_12

    .line 198
    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mGestureStartX:F

    sub-float/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mSwipeDirection:F

    mul-float v16, v2, v3

    .line 199
    .restart local v16       #deltaX:F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mFlipOffset:F

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getWidth()I

    move-result v4

    int-to-float v4, v4

    const v5, 0x3e4ccccd

    mul-float/2addr v4, v5

    div-float v4, v16, v4

    add-float/2addr v3, v4

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->partialFlip(F)V

    .line 201
    if-nez v28, :cond_b

    .line 202
    const/16 v25, 0x1

    goto :goto_8

    .line 204
    .end local v16           #deltaX:F
    :cond_12
    if-eqz v27, :cond_b

    .line 205
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->completePartialFlip()V

    goto/16 :goto_7

    .line 113
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_4
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public setStatusBar(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V
    .locals 0
    .parameter "bar"

    .prologue
    .line 59
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .line 60
    return-void
.end method
