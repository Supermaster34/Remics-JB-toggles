.class Lcom/android/systemui/statusbar/policy/PieController$1;
.super Landroid/service/pie/PieManager$PieActivationListener;
.source "PieController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/PieController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/PieController;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/PieController;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 135
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/PieController$1;->this$0:Lcom/android/systemui/statusbar/policy/PieController;

    invoke-direct {p0, p2}, Landroid/service/pie/PieManager$PieActivationListener;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public onPieActivation(IILcom/android/internal/util/pie/PiePosition;I)V
    .locals 3
    .parameter "touchX"
    .parameter "touchY"
    .parameter "position"
    .parameter "flags"

    .prologue
    .line 138
    sget-object v0, Lcom/android/internal/util/pie/PiePosition;->BOTTOM:Lcom/android/internal/util/pie/PiePosition;

    if-ne p3, v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/PieController$1;->this$0:Lcom/android/systemui/statusbar/policy/PieController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/PieController;->isSearchLightEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/PieController$1;->this$0:Lcom/android/systemui/statusbar/policy/PieController;

    #getter for: Lcom/android/systemui/statusbar/policy/PieController;->mStatusBar:Lcom/android/systemui/statusbar/BaseStatusBar;
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/PieController;->access$000(Lcom/android/systemui/statusbar/policy/PieController;)Lcom/android/systemui/statusbar/BaseStatusBar;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 141
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/PieController$1;->this$0:Lcom/android/systemui/statusbar/policy/PieController;

    #getter for: Lcom/android/systemui/statusbar/policy/PieController;->mStatusBar:Lcom/android/systemui/statusbar/BaseStatusBar;
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/PieController;->access$000(Lcom/android/systemui/statusbar/policy/PieController;)Lcom/android/systemui/statusbar/BaseStatusBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/BaseStatusBar;->showSearchPanel()V

    .line 144
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/PieController$1;->this$0:Lcom/android/systemui/statusbar/policy/PieController;

    #getter for: Lcom/android/systemui/statusbar/policy/PieController;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/PieController;->access$100(Lcom/android/systemui/statusbar/policy/PieController;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x42d

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 152
    :cond_0
    :goto_0
    return-void

    .line 145
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/PieController$1;->this$0:Lcom/android/systemui/statusbar/policy/PieController;

    #getter for: Lcom/android/systemui/statusbar/policy/PieController;->mPieContainer:Lcom/android/systemui/statusbar/pie/PieView;
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/PieController;->access$200(Lcom/android/systemui/statusbar/policy/PieController;)Lcom/android/systemui/statusbar/pie/PieView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/PieController$1;->this$0:Lcom/android/systemui/statusbar/policy/PieController;

    #getter for: Lcom/android/systemui/statusbar/policy/PieController;->mPieContainer:Lcom/android/systemui/statusbar/pie/PieView;
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/PieController;->access$200(Lcom/android/systemui/statusbar/policy/PieController;)Lcom/android/systemui/statusbar/pie/PieView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/PieController$1;->this$0:Lcom/android/systemui/statusbar/policy/PieController;

    #getter for: Lcom/android/systemui/statusbar/policy/PieController;->mPieTriggerMask:I
    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/PieController;->access$300(Lcom/android/systemui/statusbar/policy/PieController;)I

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/PieController$1;->this$0:Lcom/android/systemui/statusbar/policy/PieController;

    #getter for: Lcom/android/systemui/statusbar/policy/PieController;->mPieTriggerSlots:I
    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/PieController;->access$400(Lcom/android/systemui/statusbar/policy/PieController;)I

    move-result v2

    xor-int/lit8 v2, v2, -0x1

    and-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/pie/PieView;->setSnapPoints(I)V

    .line 148
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/PieController$1;->this$0:Lcom/android/systemui/statusbar/policy/PieController;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/systemui/statusbar/policy/PieController;->activateFromListener(IILcom/android/internal/util/pie/PiePosition;)V

    .line 150
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/PieController$1;->this$0:Lcom/android/systemui/statusbar/policy/PieController;

    #getter for: Lcom/android/systemui/statusbar/policy/PieController;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/PieController;->access$100(Lcom/android/systemui/statusbar/policy/PieController;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x42c

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method
