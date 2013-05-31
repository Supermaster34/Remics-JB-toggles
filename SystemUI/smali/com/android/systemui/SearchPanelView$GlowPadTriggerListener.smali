.class Lcom/android/systemui/SearchPanelView$GlowPadTriggerListener;
.super Ljava/lang/Object;
.source "SearchPanelView.java"

# interfaces
.implements Lcom/android/internal/widget/multiwaveview/GlowPadView$OnTriggerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/SearchPanelView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "GlowPadTriggerListener"
.end annotation


# instance fields
.field mWaitingForLaunch:Z

.field final synthetic this$0:Lcom/android/systemui/SearchPanelView;


# direct methods
.method constructor <init>(Lcom/android/systemui/SearchPanelView;)V
    .locals 0
    .parameter

    .prologue
    .line 96
    iput-object p1, p0, Lcom/android/systemui/SearchPanelView$GlowPadTriggerListener;->this$0:Lcom/android/systemui/SearchPanelView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinishFinalAnimation()V
    .locals 0

    .prologue
    .line 117
    return-void
.end method

.method public onGrabbed(Landroid/view/View;I)V
    .locals 0
    .parameter "v"
    .parameter "handle"

    .prologue
    .line 100
    return-void
.end method

.method public onGrabbedStateChange(Landroid/view/View;I)V
    .locals 1
    .parameter "v"
    .parameter "handle"

    .prologue
    .line 106
    iget-boolean v0, p0, Lcom/android/systemui/SearchPanelView$GlowPadTriggerListener;->mWaitingForLaunch:Z

    if-nez v0, :cond_0

    if-nez p2, :cond_0

    .line 107
    iget-object v0, p0, Lcom/android/systemui/SearchPanelView$GlowPadTriggerListener;->this$0:Lcom/android/systemui/SearchPanelView;

    #getter for: Lcom/android/systemui/SearchPanelView;->mBar:Lcom/android/systemui/statusbar/BaseStatusBar;
    invoke-static {v0}, Lcom/android/systemui/SearchPanelView;->access$000(Lcom/android/systemui/SearchPanelView;)Lcom/android/systemui/statusbar/BaseStatusBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/BaseStatusBar;->hideSearchPanel()V

    .line 109
    :cond_0
    return-void
.end method

.method public onReleased(Landroid/view/View;I)V
    .locals 0
    .parameter "v"
    .parameter "handle"

    .prologue
    .line 103
    return-void
.end method

.method public onTrigger(Landroid/view/View;I)V
    .locals 4
    .parameter "v"
    .parameter "target"

    .prologue
    .line 112
    iget-object v1, p0, Lcom/android/systemui/SearchPanelView$GlowPadTriggerListener;->this$0:Lcom/android/systemui/SearchPanelView;

    #getter for: Lcom/android/systemui/SearchPanelView;->mGlowPadView:Lcom/android/internal/widget/multiwaveview/GlowPadView;
    invoke-static {v1}, Lcom/android/systemui/SearchPanelView;->access$100(Lcom/android/systemui/SearchPanelView;)Lcom/android/internal/widget/multiwaveview/GlowPadView;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->getResourceIdForTarget(I)I

    move-result v0

    .line 113
    .local v0, resId:I
    iget-object v1, p0, Lcom/android/systemui/SearchPanelView$GlowPadTriggerListener;->this$0:Lcom/android/systemui/SearchPanelView;

    #getter for: Lcom/android/systemui/SearchPanelView;->mActionTarget:Lcom/android/systemui/cm/ActionTarget;
    invoke-static {v1}, Lcom/android/systemui/SearchPanelView;->access$400(Lcom/android/systemui/SearchPanelView;)Lcom/android/systemui/cm/ActionTarget;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/SearchPanelView$GlowPadTriggerListener;->this$0:Lcom/android/systemui/SearchPanelView;

    #getter for: Lcom/android/systemui/SearchPanelView;->mTargetActivities:[Ljava/lang/String;
    invoke-static {v2}, Lcom/android/systemui/SearchPanelView;->access$200(Lcom/android/systemui/SearchPanelView;)[Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/SearchPanelView$GlowPadTriggerListener;->this$0:Lcom/android/systemui/SearchPanelView;

    #getter for: Lcom/android/systemui/SearchPanelView;->mStartPosOffset:I
    invoke-static {v3}, Lcom/android/systemui/SearchPanelView;->access$300(Lcom/android/systemui/SearchPanelView;)I

    move-result v3

    sub-int v3, p2, v3

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Lcom/android/systemui/cm/ActionTarget;->launchAction(Ljava/lang/String;)Z

    .line 114
    return-void
.end method
