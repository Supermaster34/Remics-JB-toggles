.class Lcom/android/systemui/cm/ActionTarget$2;
.super Ljava/lang/Object;
.source "ActionTarget.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/cm/ActionTarget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/cm/ActionTarget;


# direct methods
.method constructor <init>(Lcom/android/systemui/cm/ActionTarget;)V
    .locals 0
    .parameter

    .prologue
    .line 209
    iput-object p1, p0, Lcom/android/systemui/cm/ActionTarget$2;->this$0:Lcom/android/systemui/cm/ActionTarget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    const/4 v7, 0x0

    .line 211
    new-instance v0, Landroid/view/KeyEvent;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/android/systemui/cm/ActionTarget$2;->this$0:Lcom/android/systemui/cm/ActionTarget;

    #getter for: Lcom/android/systemui/cm/ActionTarget;->mInjectKeyCode:I
    invoke-static {v6}, Lcom/android/systemui/cm/ActionTarget;->access$000(Lcom/android/systemui/cm/ActionTarget;)I

    move-result v6

    const/4 v9, -0x1

    const/16 v11, 0x48

    const/16 v12, 0x101

    move v8, v7

    move v10, v7

    invoke-direct/range {v0 .. v12}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    .line 215
    .local v0, ev:Landroid/view/KeyEvent;
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v1

    invoke-virtual {v1, v0, v7}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    .line 216
    return-void
.end method
