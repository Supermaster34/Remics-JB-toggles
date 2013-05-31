.class Lcom/android/systemui/statusbar/powerwidget/PowerWidget$SnappingScrollView;
.super Landroid/widget/HorizontalScrollView;
.source "PowerWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/powerwidget/PowerWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SnappingScrollView"
.end annotation


# instance fields
.field mSnapRunnable:Ljava/lang/Runnable;

.field private mSnapTrigger:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 263
    invoke-direct {p0, p1}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;)V

    .line 260
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/powerwidget/PowerWidget$SnappingScrollView;->mSnapTrigger:Z

    .line 266
    new-instance v0, Lcom/android/systemui/statusbar/powerwidget/PowerWidget$SnappingScrollView$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/powerwidget/PowerWidget$SnappingScrollView$1;-><init>(Lcom/android/systemui/statusbar/powerwidget/PowerWidget$SnappingScrollView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/powerwidget/PowerWidget$SnappingScrollView;->mSnapRunnable:Ljava/lang/Runnable;

    .line 264
    return-void
.end method

.method static synthetic access$102(Lcom/android/systemui/statusbar/powerwidget/PowerWidget$SnappingScrollView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 258
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/powerwidget/PowerWidget$SnappingScrollView;->mSnapTrigger:Z

    return p1
.end method


# virtual methods
.method protected onScrollChanged(IIII)V
    .locals 3
    .parameter "l"
    .parameter "t"
    .parameter "oldl"
    .parameter "oldt"

    .prologue
    .line 278
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/HorizontalScrollView;->onScrollChanged(IIII)V

    .line 279
    sub-int v0, p3, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/powerwidget/PowerWidget$SnappingScrollView;->mSnapTrigger:Z

    if-eqz v0, :cond_0

    .line 280
    iget-object v0, p0, Lcom/android/systemui/statusbar/powerwidget/PowerWidget$SnappingScrollView;->mSnapRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/powerwidget/PowerWidget$SnappingScrollView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 281
    iget-object v0, p0, Lcom/android/systemui/statusbar/powerwidget/PowerWidget$SnappingScrollView;->mSnapRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x64

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/systemui/statusbar/powerwidget/PowerWidget$SnappingScrollView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 283
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "ev"

    .prologue
    const/4 v2, 0x1

    .line 287
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 288
    .local v0, action:I
    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    if-ne v0, v2, :cond_1

    .line 289
    :cond_0
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/powerwidget/PowerWidget$SnappingScrollView;->mSnapTrigger:Z

    .line 291
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1
.end method
