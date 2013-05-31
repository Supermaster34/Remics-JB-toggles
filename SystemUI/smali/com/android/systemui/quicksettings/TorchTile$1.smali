.class Lcom/android/systemui/quicksettings/TorchTile$1;
.super Ljava/lang/Object;
.source "TorchTile.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/quicksettings/TorchTile;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/QuickSettingsController;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/quicksettings/TorchTile;


# direct methods
.method constructor <init>(Lcom/android/systemui/quicksettings/TorchTile;)V
    .locals 0
    .parameter

    .prologue
    .line 22
    iput-object p1, p0, Lcom/android/systemui/quicksettings/TorchTile$1;->this$0:Lcom/android/systemui/quicksettings/TorchTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 25
    new-instance v0, Landroid/content/Intent;

    const-string v1, "net.cactii.flash2.TOGGLE_FLASHLIGHT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 26
    .local v0, i:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/systemui/quicksettings/TorchTile$1;->this$0:Lcom/android/systemui/quicksettings/TorchTile;

    iget-object v1, v1, Lcom/android/systemui/quicksettings/TorchTile;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 27
    return-void
.end method
