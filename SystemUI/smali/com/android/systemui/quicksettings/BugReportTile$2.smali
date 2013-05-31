.class Lcom/android/systemui/quicksettings/BugReportTile$2;
.super Ljava/lang/Object;
.source "BugReportTile.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/quicksettings/BugReportTile;->showBugreportDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/quicksettings/BugReportTile;


# direct methods
.method constructor <init>(Lcom/android/systemui/quicksettings/BugReportTile;)V
    .locals 0
    .parameter

    .prologue
    .line 84
    iput-object p1, p0, Lcom/android/systemui/quicksettings/BugReportTile$2;->this$0:Lcom/android/systemui/quicksettings/BugReportTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 87
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/android/systemui/quicksettings/BugReportTile$2;->this$0:Lcom/android/systemui/quicksettings/BugReportTile;

    #getter for: Lcom/android/systemui/quicksettings/BugReportTile;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/systemui/quicksettings/BugReportTile;->access$100(Lcom/android/systemui/quicksettings/BugReportTile;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/quicksettings/BugReportTile$2$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/quicksettings/BugReportTile$2$1;-><init>(Lcom/android/systemui/quicksettings/BugReportTile$2;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 101
    :cond_0
    return-void
.end method
