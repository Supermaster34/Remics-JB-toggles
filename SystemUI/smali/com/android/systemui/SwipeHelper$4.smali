.class Lcom/android/systemui/SwipeHelper$4;
.super Ljava/lang/Object;
.source "SwipeHelper.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/SwipeHelper;->snapChild(Landroid/view/View;F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/SwipeHelper;

.field final synthetic val$animView:Landroid/view/View;

.field final synthetic val$canAnimViewBeDismissed:Z


# direct methods
.method constructor <init>(Lcom/android/systemui/SwipeHelper;ZLandroid/view/View;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 308
    iput-object p1, p0, Lcom/android/systemui/SwipeHelper$4;->this$0:Lcom/android/systemui/SwipeHelper;

    iput-boolean p2, p0, Lcom/android/systemui/SwipeHelper$4;->val$canAnimViewBeDismissed:Z

    iput-object p3, p0, Lcom/android/systemui/SwipeHelper$4;->val$animView:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3
    .parameter "animation"

    .prologue
    .line 310
    iget-boolean v0, p0, Lcom/android/systemui/SwipeHelper$4;->val$canAnimViewBeDismissed:Z

    if-eqz v0, :cond_0

    .line 311
    iget-object v0, p0, Lcom/android/systemui/SwipeHelper$4;->val$animView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/SwipeHelper$4;->this$0:Lcom/android/systemui/SwipeHelper;

    iget-object v2, p0, Lcom/android/systemui/SwipeHelper$4;->val$animView:Landroid/view/View;

    #calls: Lcom/android/systemui/SwipeHelper;->getAlphaForOffset(Landroid/view/View;)F
    invoke-static {v1, v2}, Lcom/android/systemui/SwipeHelper;->access$400(Lcom/android/systemui/SwipeHelper;Landroid/view/View;)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 313
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/SwipeHelper$4;->val$animView:Landroid/view/View;

    invoke-static {v0}, Lcom/android/systemui/SwipeHelper;->invalidateGlobalRegion(Landroid/view/View;)V

    .line 314
    return-void
.end method
