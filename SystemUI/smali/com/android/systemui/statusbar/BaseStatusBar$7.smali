.class Lcom/android/systemui/statusbar/BaseStatusBar$7;
.super Ljava/lang/Object;
.source "BaseStatusBar.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/BaseStatusBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/BaseStatusBar;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/BaseStatusBar;)V
    .locals 0
    .parameter

    .prologue
    .line 649
    iput-object p1, p0, Lcom/android/systemui/statusbar/BaseStatusBar$7;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "v"
    .parameter "event"

    .prologue
    .line 654
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    and-int/lit16 v0, v1, 0xff

    .line 655
    .local v0, action:I
    if-nez v0, :cond_1

    .line 656
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar$7;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/BaseStatusBar;->preloadRecentTasksList()V

    .line 665
    :cond_0
    :goto_0
    const/4 v1, 0x0

    return v1

    .line 657
    :cond_1
    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 658
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar$7;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/BaseStatusBar;->cancelPreloadingRecentTasksList()V

    goto :goto_0

    .line 659
    :cond_2
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 660
    invoke-virtual {p1}, Landroid/view/View;->isPressed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 661
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar$7;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/BaseStatusBar;->cancelPreloadingRecentTasksList()V

    goto :goto_0
.end method
