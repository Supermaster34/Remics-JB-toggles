.class Lcom/android/systemui/statusbar/policy/PieController$2;
.super Landroid/os/Handler;
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
    .line 155
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/PieController$2;->this$0:Lcom/android/systemui/statusbar/policy/PieController;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "m"

    .prologue
    const/4 v2, 0x0

    .line 157
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v0

    .line 158
    .local v0, inputManager:Landroid/hardware/input/InputManager;
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 177
    :cond_0
    :goto_0
    return-void

    .line 160
    :pswitch_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/view/KeyEvent;

    invoke-virtual {v0, v1, v2}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    .line 162
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/PieController$2;->this$0:Lcom/android/systemui/statusbar/policy/PieController;

    #getter for: Lcom/android/systemui/statusbar/policy/PieController;->mPieContainer:Lcom/android/systemui/statusbar/pie/PieView;
    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/PieController;->access$200(Lcom/android/systemui/statusbar/policy/PieController;)Lcom/android/systemui/statusbar/pie/PieView;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/pie/PieView;->playSoundEffect(I)V

    goto :goto_0

    .line 165
    :pswitch_1
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/view/KeyEvent;

    invoke-virtual {v0, v1, v2}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    goto :goto_0

    .line 169
    :pswitch_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/PieController$2;->this$0:Lcom/android/systemui/statusbar/policy/PieController;

    #getter for: Lcom/android/systemui/statusbar/policy/PieController;->mPieActivationListener:Landroid/service/pie/PieManager$PieActivationListener;
    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/PieController;->access$500(Lcom/android/systemui/statusbar/policy/PieController;)Landroid/service/pie/PieManager$PieActivationListener;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/PieController$2;->this$0:Lcom/android/systemui/statusbar/policy/PieController;

    #getter for: Lcom/android/systemui/statusbar/policy/PieController;->mPieContainer:Lcom/android/systemui/statusbar/pie/PieView;
    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/PieController;->access$200(Lcom/android/systemui/statusbar/policy/PieController;)Lcom/android/systemui/statusbar/pie/PieView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/pie/PieView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/service/pie/PieManager$PieActivationListener;->gainTouchFocus(Landroid/os/IBinder;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 170
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/PieController$2;->this$0:Lcom/android/systemui/statusbar/policy/PieController;

    #getter for: Lcom/android/systemui/statusbar/policy/PieController;->mPieContainer:Lcom/android/systemui/statusbar/pie/PieView;
    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/PieController;->access$200(Lcom/android/systemui/statusbar/policy/PieController;)Lcom/android/systemui/statusbar/pie/PieView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/pie/PieView;->exit()V

    goto :goto_0

    .line 174
    :pswitch_3
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/PieController$2;->this$0:Lcom/android/systemui/statusbar/policy/PieController;

    #getter for: Lcom/android/systemui/statusbar/policy/PieController;->mPieActivationListener:Landroid/service/pie/PieManager$PieActivationListener;
    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/PieController;->access$500(Lcom/android/systemui/statusbar/policy/PieController;)Landroid/service/pie/PieManager$PieActivationListener;

    move-result-object v1

    invoke-virtual {v1}, Landroid/service/pie/PieManager$PieActivationListener;->restoreListenerState()V

    goto :goto_0

    .line 158
    :pswitch_data_0
    .packed-switch 0x42a
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
