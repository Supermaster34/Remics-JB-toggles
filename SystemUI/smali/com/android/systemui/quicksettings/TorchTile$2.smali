.class Lcom/android/systemui/quicksettings/TorchTile$2;
.super Ljava/lang/Object;
.source "TorchTile.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


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
    .line 30
    iput-object p1, p0, Lcom/android/systemui/quicksettings/TorchTile$2;->this$0:Lcom/android/systemui/quicksettings/TorchTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 3
    .parameter "v"

    .prologue
    .line 33
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 34
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "net.cactii.flash2"

    const-string v2, "net.cactii.flash2.MainActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 35
    iget-object v1, p0, Lcom/android/systemui/quicksettings/TorchTile$2;->this$0:Lcom/android/systemui/quicksettings/TorchTile;

    invoke-virtual {v1, v0}, Lcom/android/systemui/quicksettings/TorchTile;->startSettingsActivity(Landroid/content/Intent;)V

    .line 36
    const/4 v1, 0x1

    return v1
.end method
