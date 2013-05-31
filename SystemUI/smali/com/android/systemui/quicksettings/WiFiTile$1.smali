.class Lcom/android/systemui/quicksettings/WiFiTile$1;
.super Ljava/lang/Object;
.source "WiFiTile.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/quicksettings/WiFiTile;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/QuickSettingsController;Lcom/android/systemui/statusbar/policy/NetworkController;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/quicksettings/WiFiTile;


# direct methods
.method constructor <init>(Lcom/android/systemui/quicksettings/WiFiTile;)V
    .locals 0
    .parameter

    .prologue
    .line 27
    iput-object p1, p0, Lcom/android/systemui/quicksettings/WiFiTile$1;->this$0:Lcom/android/systemui/quicksettings/WiFiTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 31
    iget-object v1, p0, Lcom/android/systemui/quicksettings/WiFiTile$1;->this$0:Lcom/android/systemui/quicksettings/WiFiTile;

    iget-object v1, v1, Lcom/android/systemui/quicksettings/WiFiTile;->mContext:Landroid/content/Context;

    const-string v2, "wifi"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 32
    .local v0, wfm:Landroid/net/wifi/WifiManager;
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 33
    return-void

    .line 32
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
