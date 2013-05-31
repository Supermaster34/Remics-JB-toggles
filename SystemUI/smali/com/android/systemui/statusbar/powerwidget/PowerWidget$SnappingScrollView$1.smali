.class Lcom/android/systemui/statusbar/powerwidget/PowerWidget$SnappingScrollView$1;
.super Ljava/lang/Object;
.source "PowerWidget.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/powerwidget/PowerWidget$SnappingScrollView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/powerwidget/PowerWidget$SnappingScrollView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/powerwidget/PowerWidget$SnappingScrollView;)V
    .locals 0
    .parameter

    .prologue
    .line 266
    iput-object p1, p0, Lcom/android/systemui/statusbar/powerwidget/PowerWidget$SnappingScrollView$1;->this$0:Lcom/android/systemui/statusbar/powerwidget/PowerWidget$SnappingScrollView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 269
    iget-object v2, p0, Lcom/android/systemui/statusbar/powerwidget/PowerWidget$SnappingScrollView$1;->this$0:Lcom/android/systemui/statusbar/powerwidget/PowerWidget$SnappingScrollView;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/powerwidget/PowerWidget$SnappingScrollView;->getScrollX()I

    move-result v2

    invoke-static {}, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->access$000()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/widget/LinearLayout$LayoutParams;->width:I

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    invoke-static {}, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->access$000()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/widget/LinearLayout$LayoutParams;->width:I

    div-int v0, v2, v3

    .line 270
    .local v0, mSelectedItem:I
    invoke-static {}, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->access$000()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/widget/LinearLayout$LayoutParams;->width:I

    mul-int v1, v0, v2

    .line 271
    .local v1, scrollTo:I
    iget-object v2, p0, Lcom/android/systemui/statusbar/powerwidget/PowerWidget$SnappingScrollView$1;->this$0:Lcom/android/systemui/statusbar/powerwidget/PowerWidget$SnappingScrollView;

    invoke-virtual {v2, v1, v4}, Lcom/android/systemui/statusbar/powerwidget/PowerWidget$SnappingScrollView;->smoothScrollTo(II)V

    .line 272
    iget-object v2, p0, Lcom/android/systemui/statusbar/powerwidget/PowerWidget$SnappingScrollView$1;->this$0:Lcom/android/systemui/statusbar/powerwidget/PowerWidget$SnappingScrollView;

    #setter for: Lcom/android/systemui/statusbar/powerwidget/PowerWidget$SnappingScrollView;->mSnapTrigger:Z
    invoke-static {v2, v4}, Lcom/android/systemui/statusbar/powerwidget/PowerWidget$SnappingScrollView;->access$102(Lcom/android/systemui/statusbar/powerwidget/PowerWidget$SnappingScrollView;Z)Z

    .line 273
    return-void
.end method
