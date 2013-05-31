.class Lcom/android/systemui/statusbar/pie/PieView$1;
.super Ljava/lang/Object;
.source "PieView.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    .line 79
    iput-object p1, p0, Lcom/android/systemui/statusbar/pie/PieView$1;->this$0:Lcom/android/systemui/statusbar/pie/PieView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/systemui/statusbar/pie/PieView$1;->this$0:Lcom/android/systemui/statusbar/pie/PieView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/pie/PieView$1;->this$0:Lcom/android/systemui/statusbar/pie/PieView;

    #getter for: Lcom/android/systemui/statusbar/pie/PieView;->mActiveItem:Lcom/android/systemui/statusbar/pie/PieItem;
    invoke-static {v1}, Lcom/android/systemui/statusbar/pie/PieView;->access$000(Lcom/android/systemui/statusbar/pie/PieView;)Lcom/android/systemui/statusbar/pie/PieItem;

    move-result-object v1

    const/4 v2, 0x1

    #calls: Lcom/android/systemui/statusbar/pie/PieView;->updateActiveItem(Lcom/android/systemui/statusbar/pie/PieItem;Z)V
    invoke-static {v0, v1, v2}, Lcom/android/systemui/statusbar/pie/PieView;->access$100(Lcom/android/systemui/statusbar/pie/PieView;Lcom/android/systemui/statusbar/pie/PieItem;Z)V

    .line 83
    return-void
.end method
