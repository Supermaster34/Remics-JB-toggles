.class Lcom/android/systemui/quicksettings/MobileNetworkTile$1;
.super Ljava/lang/Object;
.source "MobileNetworkTile.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/quicksettings/MobileNetworkTile;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/QuickSettingsController;Lcom/android/systemui/statusbar/policy/NetworkController;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/quicksettings/MobileNetworkTile;


# direct methods
.method constructor <init>(Lcom/android/systemui/quicksettings/MobileNetworkTile;)V
    .locals 0
    .parameter

    .prologue
    .line 44
    iput-object p1, p0, Lcom/android/systemui/quicksettings/MobileNetworkTile$1;->this$0:Lcom/android/systemui/quicksettings/MobileNetworkTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    const/4 v2, 0x0

    .line 47
    iget-object v0, p0, Lcom/android/systemui/quicksettings/MobileNetworkTile$1;->this$0:Lcom/android/systemui/quicksettings/MobileNetworkTile;

    #getter for: Lcom/android/systemui/quicksettings/MobileNetworkTile;->mCm:Landroid/net/ConnectivityManager;
    invoke-static {v0}, Lcom/android/systemui/quicksettings/MobileNetworkTile;->access$000(Lcom/android/systemui/quicksettings/MobileNetworkTile;)Landroid/net/ConnectivityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/android/systemui/quicksettings/MobileNetworkTile$1;->this$0:Lcom/android/systemui/quicksettings/MobileNetworkTile;

    invoke-virtual {v0, v2}, Lcom/android/systemui/quicksettings/MobileNetworkTile;->updateOverlayImage(I)V

    .line 49
    iget-object v0, p0, Lcom/android/systemui/quicksettings/MobileNetworkTile$1;->this$0:Lcom/android/systemui/quicksettings/MobileNetworkTile;

    #getter for: Lcom/android/systemui/quicksettings/MobileNetworkTile;->mCm:Landroid/net/ConnectivityManager;
    invoke-static {v0}, Lcom/android/systemui/quicksettings/MobileNetworkTile;->access$000(Lcom/android/systemui/quicksettings/MobileNetworkTile;)Landroid/net/ConnectivityManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(Z)V

    .line 54
    :goto_0
    return-void

    .line 51
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/quicksettings/MobileNetworkTile$1;->this$0:Lcom/android/systemui/quicksettings/MobileNetworkTile;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/quicksettings/MobileNetworkTile;->updateOverlayImage(I)V

    .line 52
    iget-object v0, p0, Lcom/android/systemui/quicksettings/MobileNetworkTile$1;->this$0:Lcom/android/systemui/quicksettings/MobileNetworkTile;

    #getter for: Lcom/android/systemui/quicksettings/MobileNetworkTile;->mCm:Landroid/net/ConnectivityManager;
    invoke-static {v0}, Lcom/android/systemui/quicksettings/MobileNetworkTile;->access$000(Lcom/android/systemui/quicksettings/MobileNetworkTile;)Landroid/net/ConnectivityManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(Z)V

    goto :goto_0
.end method
