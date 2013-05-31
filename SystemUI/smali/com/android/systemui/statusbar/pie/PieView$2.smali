.class Lcom/android/systemui/statusbar/pie/PieView$2;
.super Ljava/lang/Object;
.source "PieView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/pie/PieView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/pie/PieView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/pie/PieView;)V
    .locals 0
    .parameter

    .prologue
    .line 91
    iput-object p1, p0, Lcom/android/systemui/statusbar/pie/PieView$2;->this$0:Lcom/android/systemui/statusbar/pie/PieView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4
    .parameter "animation"

    .prologue
    .line 100
    iget-object v2, p0, Lcom/android/systemui/statusbar/pie/PieView$2;->this$0:Lcom/android/systemui/statusbar/pie/PieView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v3

    #setter for: Lcom/android/systemui/statusbar/pie/PieView;->mBackgroundFraction:F
    invoke-static {v2, v3}, Lcom/android/systemui/statusbar/pie/PieView;->access$202(Lcom/android/systemui/statusbar/pie/PieView;F)F

    .line 103
    iget-object v2, p0, Lcom/android/systemui/statusbar/pie/PieView$2;->this$0:Lcom/android/systemui/statusbar/pie/PieView;

    #getter for: Lcom/android/systemui/statusbar/pie/PieView;->mAnimationListenerCache:Ljava/util/List;
    invoke-static {v2}, Lcom/android/systemui/statusbar/pie/PieView;->access$300(Lcom/android/systemui/statusbar/pie/PieView;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 104
    .local v1, listener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;
    invoke-interface {v1, p1}, Landroid/animation/ValueAnimator$AnimatorUpdateListener;->onAnimationUpdate(Landroid/animation/ValueAnimator;)V

    goto :goto_0

    .line 108
    .end local v1           #listener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/pie/PieView$2;->this$0:Lcom/android/systemui/statusbar/pie/PieView;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/pie/PieView;->invalidate()V

    .line 109
    return-void
.end method
