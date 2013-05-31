.class Lcom/android/systemui/statusbar/powerwidget/PowerButton$1;
.super Landroid/os/Handler;
.source "PowerButton.java"


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
    .line 75
    iput-object p1, p0, Lcom/android/systemui/statusbar/powerwidget/PowerButton$1;->this$0:Lcom/android/systemui/statusbar/powerwidget/PowerButton;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/systemui/statusbar/powerwidget/PowerButton$1;->this$0:Lcom/android/systemui/statusbar/powerwidget/PowerButton;

    #getter for: Lcom/android/systemui/statusbar/powerwidget/PowerButton;->mIconView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/systemui/statusbar/powerwidget/PowerButton;->access$000(Lcom/android/systemui/statusbar/powerwidget/PowerButton;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/android/systemui/statusbar/powerwidget/PowerButton$1;->this$0:Lcom/android/systemui/statusbar/powerwidget/PowerButton;

    #getter for: Lcom/android/systemui/statusbar/powerwidget/PowerButton;->mIconView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/systemui/statusbar/powerwidget/PowerButton;->access$000(Lcom/android/systemui/statusbar/powerwidget/PowerButton;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/powerwidget/PowerButton$1;->this$0:Lcom/android/systemui/statusbar/powerwidget/PowerButton;

    iget v1, v1, Lcom/android/systemui/statusbar/powerwidget/PowerButton;->mIcon:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 81
    :cond_0
    return-void
.end method
