.class Lcom/android/systemui/quicksettings/SyncTile$3;
.super Ljava/lang/Object;
.source "SyncTile.java"

# interfaces
.implements Landroid/content/SyncStatusObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/quicksettings/SyncTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/quicksettings/SyncTile;


# direct methods
.method constructor <init>(Lcom/android/systemui/quicksettings/SyncTile;)V
    .locals 0
    .parameter

    .prologue
    .line 92
    iput-object p1, p0, Lcom/android/systemui/quicksettings/SyncTile$3;->this$0:Lcom/android/systemui/quicksettings/SyncTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStatusChanged(I)V
    .locals 2
    .parameter "which"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/systemui/quicksettings/SyncTile$3;->this$0:Lcom/android/systemui/quicksettings/SyncTile;

    #getter for: Lcom/android/systemui/quicksettings/SyncTile;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/systemui/quicksettings/SyncTile;->access$000(Lcom/android/systemui/quicksettings/SyncTile;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/quicksettings/SyncTile$3$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/quicksettings/SyncTile$3$1;-><init>(Lcom/android/systemui/quicksettings/SyncTile$3;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 101
    return-void
.end method
