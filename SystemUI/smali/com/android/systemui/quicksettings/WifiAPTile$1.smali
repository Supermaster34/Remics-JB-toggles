.class Lcom/android/systemui/quicksettings/WifiAPTile$1;
.super Ljava/lang/Object;
.source "WifiAPTile.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/quicksettings/WifiAPTile;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/QuickSettingsController;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/quicksettings/WifiAPTile;


# direct methods
.method constructor <init>(Lcom/android/systemui/quicksettings/WifiAPTile;)V
    .locals 0
    .parameter

    .prologue
    .line 24
    iput-object p1, p0, Lcom/android/systemui/quicksettings/WifiAPTile$1;->this$0:Lcom/android/systemui/quicksettings/WifiAPTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 27
    invoke-static {}, Lcom/android/systemui/quicksettings/WifiAPTile;->access$000()Landroid/net/wifi/WifiManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v0

    .line 28
    .local v0, state:I
    packed-switch v0, :pswitch_data_0

    .line 38
    :goto_0
    return-void

    .line 31
    :pswitch_0
    iget-object v1, p0, Lcom/android/systemui/quicksettings/WifiAPTile$1;->this$0:Lcom/android/systemui/quicksettings/WifiAPTile;

    const/4 v2, 0x0

    #calls: Lcom/android/systemui/quicksettings/WifiAPTile;->setSoftapEnabled(Z)V
    invoke-static {v1, v2}, Lcom/android/systemui/quicksettings/WifiAPTile;->access$100(Lcom/android/systemui/quicksettings/WifiAPTile;Z)V

    goto :goto_0

    .line 35
    :pswitch_1
    iget-object v1, p0, Lcom/android/systemui/quicksettings/WifiAPTile$1;->this$0:Lcom/android/systemui/quicksettings/WifiAPTile;

    const/4 v2, 0x1

    #calls: Lcom/android/systemui/quicksettings/WifiAPTile;->setSoftapEnabled(Z)V
    invoke-static {v1, v2}, Lcom/android/systemui/quicksettings/WifiAPTile;->access$100(Lcom/android/systemui/quicksettings/WifiAPTile;Z)V

    goto :goto_0

    .line 28
    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
