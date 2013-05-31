.class Lcom/android/systemui/statusbar/powerwidget/PowerButton$2;
.super Ljava/lang/Object;
.source "PowerButton.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/powerwidget/PowerButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/powerwidget/PowerButton;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/powerwidget/PowerButton;)V
    .locals 0
    .parameter

    .prologue
    .line 144
    iput-object p1, p0, Lcom/android/systemui/statusbar/powerwidget/PowerButton$2;->this$0:Lcom/android/systemui/statusbar/powerwidget/PowerButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 146
    iget-object v0, p0, Lcom/android/systemui/statusbar/powerwidget/PowerButton$2;->this$0:Lcom/android/systemui/statusbar/powerwidget/PowerButton;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/powerwidget/PowerButton;->mHapticFeedback:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/powerwidget/PowerButton$2;->this$0:Lcom/android/systemui/statusbar/powerwidget/PowerButton;

    #getter for: Lcom/android/systemui/statusbar/powerwidget/PowerButton;->mClickPattern:[J
    invoke-static {v0}, Lcom/android/systemui/statusbar/powerwidget/PowerButton;->access$100(Lcom/android/systemui/statusbar/powerwidget/PowerButton;)[J

    move-result-object v0

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/android/systemui/statusbar/powerwidget/PowerButton$2;->this$0:Lcom/android/systemui/statusbar/powerwidget/PowerButton;

    #getter for: Lcom/android/systemui/statusbar/powerwidget/PowerButton;->mClickPattern:[J
    invoke-static {v0}, Lcom/android/systemui/statusbar/powerwidget/PowerButton;->access$100(Lcom/android/systemui/statusbar/powerwidget/PowerButton;)[J

    move-result-object v0

    array-length v0, v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 149
    iget-object v0, p0, Lcom/android/systemui/statusbar/powerwidget/PowerButton$2;->this$0:Lcom/android/systemui/statusbar/powerwidget/PowerButton;

    iget-object v0, v0, Lcom/android/systemui/statusbar/powerwidget/PowerButton;->mVibrator:Landroid/os/Vibrator;

    iget-object v1, p0, Lcom/android/systemui/statusbar/powerwidget/PowerButton$2;->this$0:Lcom/android/systemui/statusbar/powerwidget/PowerButton;

    #getter for: Lcom/android/systemui/statusbar/powerwidget/PowerButton;->mClickPattern:[J
    invoke-static {v1}, Lcom/android/systemui/statusbar/powerwidget/PowerButton;->access$100(Lcom/android/systemui/statusbar/powerwidget/PowerButton;)[J

    move-result-object v1

    const/4 v2, 0x0

    aget-wide v1, v1, v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    .line 155
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/powerwidget/PowerButton$2;->this$0:Lcom/android/systemui/statusbar/powerwidget/PowerButton;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/powerwidget/PowerButton;->toggleState(Landroid/content/Context;)V

    .line 156
    iget-object v0, p0, Lcom/android/systemui/statusbar/powerwidget/PowerButton$2;->this$0:Lcom/android/systemui/statusbar/powerwidget/PowerButton;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/powerwidget/PowerButton;->update(Landroid/content/Context;)V

    .line 158
    iget-object v0, p0, Lcom/android/systemui/statusbar/powerwidget/PowerButton$2;->this$0:Lcom/android/systemui/statusbar/powerwidget/PowerButton;

    #getter for: Lcom/android/systemui/statusbar/powerwidget/PowerButton;->mExternalClickListener:Landroid/view/View$OnClickListener;
    invoke-static {v0}, Lcom/android/systemui/statusbar/powerwidget/PowerButton;->access$200(Lcom/android/systemui/statusbar/powerwidget/PowerButton;)Landroid/view/View$OnClickListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 159
    iget-object v0, p0, Lcom/android/systemui/statusbar/powerwidget/PowerButton$2;->this$0:Lcom/android/systemui/statusbar/powerwidget/PowerButton;

    #getter for: Lcom/android/systemui/statusbar/powerwidget/PowerButton;->mExternalClickListener:Landroid/view/View$OnClickListener;
    invoke-static {v0}, Lcom/android/systemui/statusbar/powerwidget/PowerButton;->access$200(Lcom/android/systemui/statusbar/powerwidget/PowerButton;)Landroid/view/View$OnClickListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 161
    :cond_1
    return-void

    .line 152
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/powerwidget/PowerButton$2;->this$0:Lcom/android/systemui/statusbar/powerwidget/PowerButton;

    iget-object v0, v0, Lcom/android/systemui/statusbar/powerwidget/PowerButton;->mVibrator:Landroid/os/Vibrator;

    iget-object v1, p0, Lcom/android/systemui/statusbar/powerwidget/PowerButton$2;->this$0:Lcom/android/systemui/statusbar/powerwidget/PowerButton;

    #getter for: Lcom/android/systemui/statusbar/powerwidget/PowerButton;->mClickPattern:[J
    invoke-static {v1}, Lcom/android/systemui/statusbar/powerwidget/PowerButton;->access$100(Lcom/android/systemui/statusbar/powerwidget/PowerButton;)[J

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate([JI)V

    goto :goto_0
.end method
