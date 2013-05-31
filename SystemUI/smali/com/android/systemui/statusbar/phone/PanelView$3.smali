.class Lcom/android/systemui/statusbar/phone/PanelView$3;
.super Ljava/lang/Object;
.source "PanelView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/PanelView;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/PanelView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/PanelView;)V
    .locals 0
    .parameter

    .prologue
    .line 353
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelView$3;->this$0:Lcom/android/systemui/statusbar/phone/PanelView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 12
    .parameter "v"
    .parameter "event"

    .prologue
    .line 356
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    .line 357
    .local v6, y:F
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    .line 361
    .local v3, rawY:F
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PanelView$3;->this$0:Lcom/android/systemui/statusbar/phone/PanelView;

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PanelView$3;->this$0:Lcom/android/systemui/statusbar/phone/PanelView;

    #getter for: Lcom/android/systemui/statusbar/phone/PanelView;->mAbsPos:[I
    invoke-static {v9}, Lcom/android/systemui/statusbar/phone/PanelView;->access$400(Lcom/android/systemui/statusbar/phone/PanelView;)[I

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/systemui/statusbar/phone/PanelView;->getLocationOnScreen([I)V

    .line 363
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    packed-switch v8, :pswitch_data_0

    .line 454
    :cond_0
    :goto_0
    const/4 v8, 0x1

    return v8

    .line 365
    :pswitch_0
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PanelView$3;->this$0:Lcom/android/systemui/statusbar/phone/PanelView;

    const/4 v9, 0x1

    #setter for: Lcom/android/systemui/statusbar/phone/PanelView;->mTracking:Z
    invoke-static {v8, v9}, Lcom/android/systemui/statusbar/phone/PanelView;->access$502(Lcom/android/systemui/statusbar/phone/PanelView;Z)Z

    .line 366
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PanelView$3;->this$0:Lcom/android/systemui/statusbar/phone/PanelView;

    #getter for: Lcom/android/systemui/statusbar/phone/PanelView;->mHandleView:Landroid/view/View;
    invoke-static {v8}, Lcom/android/systemui/statusbar/phone/PanelView;->access$600(Lcom/android/systemui/statusbar/phone/PanelView;)Landroid/view/View;

    move-result-object v8

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/view/View;->setPressed(Z)V

    .line 367
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PanelView$3;->this$0:Lcom/android/systemui/statusbar/phone/PanelView;

    invoke-virtual {v8}, Lcom/android/systemui/statusbar/phone/PanelView;->postInvalidate()V

    .line 368
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PanelView$3;->this$0:Lcom/android/systemui/statusbar/phone/PanelView;

    iput v6, v8, Lcom/android/systemui/statusbar/phone/PanelView;->mInitialTouchY:F

    .line 369
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PanelView$3;->this$0:Lcom/android/systemui/statusbar/phone/PanelView;

    invoke-static {}, Lcom/android/systemui/statusbar/phone/PanelView$FlingTracker;->obtain()Lcom/android/systemui/statusbar/phone/PanelView$FlingTracker;

    move-result-object v9

    #setter for: Lcom/android/systemui/statusbar/phone/PanelView;->mVelocityTracker:Lcom/android/systemui/statusbar/phone/PanelView$FlingTracker;
    invoke-static {v8, v9}, Lcom/android/systemui/statusbar/phone/PanelView;->access$702(Lcom/android/systemui/statusbar/phone/PanelView;Lcom/android/systemui/statusbar/phone/PanelView$FlingTracker;)Lcom/android/systemui/statusbar/phone/PanelView$FlingTracker;

    .line 370
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PanelView$3;->this$0:Lcom/android/systemui/statusbar/phone/PanelView;

    #calls: Lcom/android/systemui/statusbar/phone/PanelView;->trackMovement(Landroid/view/MotionEvent;)V
    invoke-static {v8, p2}, Lcom/android/systemui/statusbar/phone/PanelView;->access$800(Lcom/android/systemui/statusbar/phone/PanelView;Landroid/view/MotionEvent;)V

    .line 371
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PanelView$3;->this$0:Lcom/android/systemui/statusbar/phone/PanelView;

    #getter for: Lcom/android/systemui/statusbar/phone/PanelView;->mTimeAnimator:Landroid/animation/TimeAnimator;
    invoke-static {v8}, Lcom/android/systemui/statusbar/phone/PanelView;->access$100(Lcom/android/systemui/statusbar/phone/PanelView;)Landroid/animation/TimeAnimator;

    move-result-object v8

    invoke-virtual {v8}, Landroid/animation/TimeAnimator;->cancel()V

    .line 372
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PanelView$3;->this$0:Lcom/android/systemui/statusbar/phone/PanelView;

    iget-object v8, v8, Lcom/android/systemui/statusbar/phone/PanelView;->mBar:Lcom/android/systemui/statusbar/phone/PanelBar;

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PanelView$3;->this$0:Lcom/android/systemui/statusbar/phone/PanelView;

    invoke-virtual {v8, v9}, Lcom/android/systemui/statusbar/phone/PanelBar;->onTrackingStarted(Lcom/android/systemui/statusbar/phone/PanelView;)V

    .line 373
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PanelView$3;->this$0:Lcom/android/systemui/statusbar/phone/PanelView;

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PanelView$3;->this$0:Lcom/android/systemui/statusbar/phone/PanelView;

    #getter for: Lcom/android/systemui/statusbar/phone/PanelView;->mAbsPos:[I
    invoke-static {v9}, Lcom/android/systemui/statusbar/phone/PanelView;->access$400(Lcom/android/systemui/statusbar/phone/PanelView;)[I

    move-result-object v9

    const/4 v10, 0x1

    aget v9, v9, v10

    int-to-float v9, v9

    sub-float v9, v3, v9

    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/PanelView$3;->this$0:Lcom/android/systemui/statusbar/phone/PanelView;

    invoke-virtual {v10}, Lcom/android/systemui/statusbar/phone/PanelView;->getExpandedHeight()F

    move-result v10

    sub-float/2addr v9, v10

    #setter for: Lcom/android/systemui/statusbar/phone/PanelView;->mTouchOffset:F
    invoke-static {v8, v9}, Lcom/android/systemui/statusbar/phone/PanelView;->access$902(Lcom/android/systemui/statusbar/phone/PanelView;F)F

    .line 374
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PanelView$3;->this$0:Lcom/android/systemui/statusbar/phone/PanelView;

    #getter for: Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedHeight:F
    invoke-static {v8}, Lcom/android/systemui/statusbar/phone/PanelView;->access$1000(Lcom/android/systemui/statusbar/phone/PanelView;)F

    move-result v8

    const/4 v9, 0x0

    cmpl-float v8, v8, v9

    if-nez v8, :cond_0

    .line 375
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PanelView$3;->this$0:Lcom/android/systemui/statusbar/phone/PanelView;

    const/4 v9, 0x1

    #setter for: Lcom/android/systemui/statusbar/phone/PanelView;->mJustPeeked:Z
    invoke-static {v8, v9}, Lcom/android/systemui/statusbar/phone/PanelView;->access$1102(Lcom/android/systemui/statusbar/phone/PanelView;Z)Z

    .line 376
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PanelView$3;->this$0:Lcom/android/systemui/statusbar/phone/PanelView;

    #calls: Lcom/android/systemui/statusbar/phone/PanelView;->runPeekAnimation()V
    invoke-static {v8}, Lcom/android/systemui/statusbar/phone/PanelView;->access$1200(Lcom/android/systemui/statusbar/phone/PanelView;)V

    goto :goto_0

    .line 381
    :pswitch_1
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PanelView$3;->this$0:Lcom/android/systemui/statusbar/phone/PanelView;

    #getter for: Lcom/android/systemui/statusbar/phone/PanelView;->mAbsPos:[I
    invoke-static {v8}, Lcom/android/systemui/statusbar/phone/PanelView;->access$400(Lcom/android/systemui/statusbar/phone/PanelView;)[I

    move-result-object v8

    const/4 v9, 0x1

    aget v8, v8, v9

    int-to-float v8, v8

    sub-float v8, v3, v8

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PanelView$3;->this$0:Lcom/android/systemui/statusbar/phone/PanelView;

    #getter for: Lcom/android/systemui/statusbar/phone/PanelView;->mTouchOffset:F
    invoke-static {v9}, Lcom/android/systemui/statusbar/phone/PanelView;->access$900(Lcom/android/systemui/statusbar/phone/PanelView;)F

    move-result v9

    sub-float v1, v8, v9

    .line 382
    .local v1, h:F
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PanelView$3;->this$0:Lcom/android/systemui/statusbar/phone/PanelView;

    #getter for: Lcom/android/systemui/statusbar/phone/PanelView;->mPeekHeight:F
    invoke-static {v8}, Lcom/android/systemui/statusbar/phone/PanelView;->access$1300(Lcom/android/systemui/statusbar/phone/PanelView;)F

    move-result v8

    cmpl-float v8, v1, v8

    if-lez v8, :cond_2

    .line 383
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PanelView$3;->this$0:Lcom/android/systemui/statusbar/phone/PanelView;

    #getter for: Lcom/android/systemui/statusbar/phone/PanelView;->mPeekAnimator:Landroid/animation/ObjectAnimator;
    invoke-static {v8}, Lcom/android/systemui/statusbar/phone/PanelView;->access$1400(Lcom/android/systemui/statusbar/phone/PanelView;)Landroid/animation/ObjectAnimator;

    move-result-object v8

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PanelView$3;->this$0:Lcom/android/systemui/statusbar/phone/PanelView;

    #getter for: Lcom/android/systemui/statusbar/phone/PanelView;->mPeekAnimator:Landroid/animation/ObjectAnimator;
    invoke-static {v8}, Lcom/android/systemui/statusbar/phone/PanelView;->access$1400(Lcom/android/systemui/statusbar/phone/PanelView;)Landroid/animation/ObjectAnimator;

    move-result-object v8

    invoke-virtual {v8}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 384
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PanelView$3;->this$0:Lcom/android/systemui/statusbar/phone/PanelView;

    #getter for: Lcom/android/systemui/statusbar/phone/PanelView;->mPeekAnimator:Landroid/animation/ObjectAnimator;
    invoke-static {v8}, Lcom/android/systemui/statusbar/phone/PanelView;->access$1400(Lcom/android/systemui/statusbar/phone/PanelView;)Landroid/animation/ObjectAnimator;

    move-result-object v8

    invoke-virtual {v8}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 386
    :cond_1
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PanelView$3;->this$0:Lcom/android/systemui/statusbar/phone/PanelView;

    const/4 v9, 0x0

    #setter for: Lcom/android/systemui/statusbar/phone/PanelView;->mJustPeeked:Z
    invoke-static {v8, v9}, Lcom/android/systemui/statusbar/phone/PanelView;->access$1102(Lcom/android/systemui/statusbar/phone/PanelView;Z)Z

    .line 388
    :cond_2
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PanelView$3;->this$0:Lcom/android/systemui/statusbar/phone/PanelView;

    #getter for: Lcom/android/systemui/statusbar/phone/PanelView;->mJustPeeked:Z
    invoke-static {v8}, Lcom/android/systemui/statusbar/phone/PanelView;->access$1100(Lcom/android/systemui/statusbar/phone/PanelView;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 389
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PanelView$3;->this$0:Lcom/android/systemui/statusbar/phone/PanelView;

    invoke-virtual {v8, v1}, Lcom/android/systemui/statusbar/phone/PanelView;->setExpandedHeightInternal(F)V

    .line 390
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PanelView$3;->this$0:Lcom/android/systemui/statusbar/phone/PanelView;

    iget-object v8, v8, Lcom/android/systemui/statusbar/phone/PanelView;->mBar:Lcom/android/systemui/statusbar/phone/PanelBar;

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PanelView$3;->this$0:Lcom/android/systemui/statusbar/phone/PanelView;

    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/PanelView$3;->this$0:Lcom/android/systemui/statusbar/phone/PanelView;

    #getter for: Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedFraction:F
    invoke-static {v10}, Lcom/android/systemui/statusbar/phone/PanelView;->access$1500(Lcom/android/systemui/statusbar/phone/PanelView;)F

    move-result v10

    invoke-virtual {v8, v9, v10}, Lcom/android/systemui/statusbar/phone/PanelBar;->panelExpansionChanged(Lcom/android/systemui/statusbar/phone/PanelView;F)V

    .line 393
    :cond_3
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PanelView$3;->this$0:Lcom/android/systemui/statusbar/phone/PanelView;

    #calls: Lcom/android/systemui/statusbar/phone/PanelView;->trackMovement(Landroid/view/MotionEvent;)V
    invoke-static {v8, p2}, Lcom/android/systemui/statusbar/phone/PanelView;->access$800(Lcom/android/systemui/statusbar/phone/PanelView;Landroid/view/MotionEvent;)V

    goto/16 :goto_0

    .line 398
    .end local v1           #h:F
    :pswitch_2
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PanelView$3;->this$0:Lcom/android/systemui/statusbar/phone/PanelView;

    iput v6, v8, Lcom/android/systemui/statusbar/phone/PanelView;->mFinalTouchY:F

    .line 399
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PanelView$3;->this$0:Lcom/android/systemui/statusbar/phone/PanelView;

    const/4 v9, 0x0

    #setter for: Lcom/android/systemui/statusbar/phone/PanelView;->mTracking:Z
    invoke-static {v8, v9}, Lcom/android/systemui/statusbar/phone/PanelView;->access$502(Lcom/android/systemui/statusbar/phone/PanelView;Z)Z

    .line 400
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PanelView$3;->this$0:Lcom/android/systemui/statusbar/phone/PanelView;

    #getter for: Lcom/android/systemui/statusbar/phone/PanelView;->mHandleView:Landroid/view/View;
    invoke-static {v8}, Lcom/android/systemui/statusbar/phone/PanelView;->access$600(Lcom/android/systemui/statusbar/phone/PanelView;)Landroid/view/View;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/view/View;->setPressed(Z)V

    .line 401
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PanelView$3;->this$0:Lcom/android/systemui/statusbar/phone/PanelView;

    invoke-virtual {v8}, Lcom/android/systemui/statusbar/phone/PanelView;->postInvalidate()V

    .line 402
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PanelView$3;->this$0:Lcom/android/systemui/statusbar/phone/PanelView;

    iget-object v8, v8, Lcom/android/systemui/statusbar/phone/PanelView;->mBar:Lcom/android/systemui/statusbar/phone/PanelBar;

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PanelView$3;->this$0:Lcom/android/systemui/statusbar/phone/PanelView;

    invoke-virtual {v8, v9}, Lcom/android/systemui/statusbar/phone/PanelBar;->onTrackingStopped(Lcom/android/systemui/statusbar/phone/PanelView;)V

    .line 403
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PanelView$3;->this$0:Lcom/android/systemui/statusbar/phone/PanelView;

    #calls: Lcom/android/systemui/statusbar/phone/PanelView;->trackMovement(Landroid/view/MotionEvent;)V
    invoke-static {v8, p2}, Lcom/android/systemui/statusbar/phone/PanelView;->access$800(Lcom/android/systemui/statusbar/phone/PanelView;Landroid/view/MotionEvent;)V

    .line 405
    const/4 v4, 0x0

    .local v4, vel:F
    const/4 v7, 0x0

    .local v7, yVel:F
    const/4 v5, 0x0

    .line 406
    .local v5, xVel:F
    const/4 v2, 0x0

    .line 408
    .local v2, negative:Z
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PanelView$3;->this$0:Lcom/android/systemui/statusbar/phone/PanelView;

    #getter for: Lcom/android/systemui/statusbar/phone/PanelView;->mVelocityTracker:Lcom/android/systemui/statusbar/phone/PanelView$FlingTracker;
    invoke-static {v8}, Lcom/android/systemui/statusbar/phone/PanelView;->access$700(Lcom/android/systemui/statusbar/phone/PanelView;)Lcom/android/systemui/statusbar/phone/PanelView$FlingTracker;

    move-result-object v8

    if-eqz v8, :cond_7

    .line 410
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PanelView$3;->this$0:Lcom/android/systemui/statusbar/phone/PanelView;

    #getter for: Lcom/android/systemui/statusbar/phone/PanelView;->mVelocityTracker:Lcom/android/systemui/statusbar/phone/PanelView$FlingTracker;
    invoke-static {v8}, Lcom/android/systemui/statusbar/phone/PanelView;->access$700(Lcom/android/systemui/statusbar/phone/PanelView;)Lcom/android/systemui/statusbar/phone/PanelView$FlingTracker;

    move-result-object v8

    const-wide/16 v9, 0x3e8

    invoke-virtual {v8, v9, v10}, Lcom/android/systemui/statusbar/phone/PanelView$FlingTracker;->computeCurrentVelocity(J)V

    .line 412
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PanelView$3;->this$0:Lcom/android/systemui/statusbar/phone/PanelView;

    #getter for: Lcom/android/systemui/statusbar/phone/PanelView;->mVelocityTracker:Lcom/android/systemui/statusbar/phone/PanelView$FlingTracker;
    invoke-static {v8}, Lcom/android/systemui/statusbar/phone/PanelView;->access$700(Lcom/android/systemui/statusbar/phone/PanelView;)Lcom/android/systemui/statusbar/phone/PanelView$FlingTracker;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/systemui/statusbar/phone/PanelView$FlingTracker;->getYVelocity()F

    move-result v7

    .line 413
    const/4 v8, 0x0

    cmpg-float v8, v7, v8

    if-gez v8, :cond_b

    const/4 v2, 0x1

    .line 415
    :goto_1
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PanelView$3;->this$0:Lcom/android/systemui/statusbar/phone/PanelView;

    #getter for: Lcom/android/systemui/statusbar/phone/PanelView;->mVelocityTracker:Lcom/android/systemui/statusbar/phone/PanelView$FlingTracker;
    invoke-static {v8}, Lcom/android/systemui/statusbar/phone/PanelView;->access$700(Lcom/android/systemui/statusbar/phone/PanelView;)Lcom/android/systemui/statusbar/phone/PanelView$FlingTracker;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/systemui/statusbar/phone/PanelView$FlingTracker;->getXVelocity()F

    move-result v5

    .line 416
    const/4 v8, 0x0

    cmpg-float v8, v5, v8

    if-gez v8, :cond_4

    .line 417
    neg-float v5, v5

    .line 419
    :cond_4
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PanelView$3;->this$0:Lcom/android/systemui/statusbar/phone/PanelView;

    #getter for: Lcom/android/systemui/statusbar/phone/PanelView;->mFlingGestureMaxXVelocityPx:F
    invoke-static {v8}, Lcom/android/systemui/statusbar/phone/PanelView;->access$1600(Lcom/android/systemui/statusbar/phone/PanelView;)F

    move-result v8

    cmpl-float v8, v5, v8

    if-lez v8, :cond_5

    .line 420
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PanelView$3;->this$0:Lcom/android/systemui/statusbar/phone/PanelView;

    #getter for: Lcom/android/systemui/statusbar/phone/PanelView;->mFlingGestureMaxXVelocityPx:F
    invoke-static {v8}, Lcom/android/systemui/statusbar/phone/PanelView;->access$1600(Lcom/android/systemui/statusbar/phone/PanelView;)F

    move-result v5

    .line 423
    :cond_5
    float-to-double v8, v7

    float-to-double v10, v5

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v8

    double-to-float v4, v8

    .line 424
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PanelView$3;->this$0:Lcom/android/systemui/statusbar/phone/PanelView;

    #getter for: Lcom/android/systemui/statusbar/phone/PanelView;->mFlingGestureMaxOutputVelocityPx:F
    invoke-static {v8}, Lcom/android/systemui/statusbar/phone/PanelView;->access$1700(Lcom/android/systemui/statusbar/phone/PanelView;)F

    move-result v8

    cmpl-float v8, v4, v8

    if-lez v8, :cond_6

    .line 425
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PanelView$3;->this$0:Lcom/android/systemui/statusbar/phone/PanelView;

    #getter for: Lcom/android/systemui/statusbar/phone/PanelView;->mFlingGestureMaxOutputVelocityPx:F
    invoke-static {v8}, Lcom/android/systemui/statusbar/phone/PanelView;->access$1700(Lcom/android/systemui/statusbar/phone/PanelView;)F

    move-result v4

    .line 428
    :cond_6
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PanelView$3;->this$0:Lcom/android/systemui/statusbar/phone/PanelView;

    #getter for: Lcom/android/systemui/statusbar/phone/PanelView;->mVelocityTracker:Lcom/android/systemui/statusbar/phone/PanelView$FlingTracker;
    invoke-static {v8}, Lcom/android/systemui/statusbar/phone/PanelView;->access$700(Lcom/android/systemui/statusbar/phone/PanelView;)Lcom/android/systemui/statusbar/phone/PanelView$FlingTracker;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/systemui/statusbar/phone/PanelView$FlingTracker;->recycle()V

    .line 429
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PanelView$3;->this$0:Lcom/android/systemui/statusbar/phone/PanelView;

    const/4 v9, 0x0

    #setter for: Lcom/android/systemui/statusbar/phone/PanelView;->mVelocityTracker:Lcom/android/systemui/statusbar/phone/PanelView$FlingTracker;
    invoke-static {v8, v9}, Lcom/android/systemui/statusbar/phone/PanelView;->access$702(Lcom/android/systemui/statusbar/phone/PanelView;Lcom/android/systemui/statusbar/phone/PanelView$FlingTracker;)Lcom/android/systemui/statusbar/phone/PanelView$FlingTracker;

    .line 434
    :cond_7
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PanelView$3;->this$0:Lcom/android/systemui/statusbar/phone/PanelView;

    iget v8, v8, Lcom/android/systemui/statusbar/phone/PanelView;->mFinalTouchY:F

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PanelView$3;->this$0:Lcom/android/systemui/statusbar/phone/PanelView;

    iget v9, v9, Lcom/android/systemui/statusbar/phone/PanelView;->mInitialTouchY:F

    sub-float/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 435
    .local v0, deltaY:F
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PanelView$3;->this$0:Lcom/android/systemui/statusbar/phone/PanelView;

    #getter for: Lcom/android/systemui/statusbar/phone/PanelView;->mFlingGestureMinDistPx:F
    invoke-static {v8}, Lcom/android/systemui/statusbar/phone/PanelView;->access$1800(Lcom/android/systemui/statusbar/phone/PanelView;)F

    move-result v8

    cmpg-float v8, v0, v8

    if-ltz v8, :cond_8

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PanelView$3;->this$0:Lcom/android/systemui/statusbar/phone/PanelView;

    #getter for: Lcom/android/systemui/statusbar/phone/PanelView;->mFlingExpandMinVelocityPx:F
    invoke-static {v8}, Lcom/android/systemui/statusbar/phone/PanelView;->access$1900(Lcom/android/systemui/statusbar/phone/PanelView;)F

    move-result v8

    cmpg-float v8, v4, v8

    if-gez v8, :cond_9

    .line 438
    :cond_8
    const/4 v4, 0x0

    .line 441
    :cond_9
    if-eqz v2, :cond_a

    .line 442
    neg-float v4, v4

    .line 450
    :cond_a
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PanelView$3;->this$0:Lcom/android/systemui/statusbar/phone/PanelView;

    const/4 v9, 0x1

    invoke-virtual {v8, v4, v9}, Lcom/android/systemui/statusbar/phone/PanelView;->fling(FZ)V

    goto/16 :goto_0

    .line 413
    .end local v0           #deltaY:F
    :cond_b
    const/4 v2, 0x0

    goto :goto_1

    .line 363
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
