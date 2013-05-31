.class Lcom/android/systemui/quicksettings/MobileNetworkTypeTile$1;
.super Ljava/lang/Object;
.source "MobileNetworkTypeTile.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/quicksettings/MobileNetworkTypeTile;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/QuickSettingsController;Lcom/android/systemui/statusbar/policy/NetworkController;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/quicksettings/MobileNetworkTypeTile;


# direct methods
.method constructor <init>(Lcom/android/systemui/quicksettings/MobileNetworkTypeTile;)V
    .locals 0
    .parameter

    .prologue
    .line 52
    iput-object p1, p0, Lcom/android/systemui/quicksettings/MobileNetworkTypeTile$1;->this$0:Lcom/android/systemui/quicksettings/MobileNetworkTypeTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .parameter "v"

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 55
    iget-object v2, p0, Lcom/android/systemui/quicksettings/MobileNetworkTypeTile$1;->this$0:Lcom/android/systemui/quicksettings/MobileNetworkTypeTile;

    #calls: Lcom/android/systemui/quicksettings/MobileNetworkTypeTile;->getCurrentCMMode()I
    invoke-static {v2}, Lcom/android/systemui/quicksettings/MobileNetworkTypeTile;->access$000(Lcom/android/systemui/quicksettings/MobileNetworkTypeTile;)I

    move-result v0

    .line 57
    .local v0, currentMode:I
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.internal.telephony.MODIFY_NETWORK_MODE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 58
    .local v1, intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/systemui/quicksettings/MobileNetworkTypeTile$1;->this$0:Lcom/android/systemui/quicksettings/MobileNetworkTypeTile;

    #getter for: Lcom/android/systemui/quicksettings/MobileNetworkTypeTile;->mMode:I
    invoke-static {v2}, Lcom/android/systemui/quicksettings/MobileNetworkTypeTile;->access$100(Lcom/android/systemui/quicksettings/MobileNetworkTypeTile;)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 89
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/quicksettings/MobileNetworkTypeTile$1;->this$0:Lcom/android/systemui/quicksettings/MobileNetworkTypeTile;

    const/16 v3, -0x64

    #setter for: Lcom/android/systemui/quicksettings/MobileNetworkTypeTile;->mMode:I
    invoke-static {v2, v3}, Lcom/android/systemui/quicksettings/MobileNetworkTypeTile;->access$102(Lcom/android/systemui/quicksettings/MobileNetworkTypeTile;I)I

    .line 90
    iget-object v2, p0, Lcom/android/systemui/quicksettings/MobileNetworkTypeTile$1;->this$0:Lcom/android/systemui/quicksettings/MobileNetworkTypeTile;

    iget-object v2, v2, Lcom/android/systemui/quicksettings/MobileNetworkTypeTile;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 91
    return-void

    .line 61
    :pswitch_0
    const-string v2, "networkMode"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 62
    iget-object v2, p0, Lcom/android/systemui/quicksettings/MobileNetworkTypeTile$1;->this$0:Lcom/android/systemui/quicksettings/MobileNetworkTypeTile;

    #setter for: Lcom/android/systemui/quicksettings/MobileNetworkTypeTile;->mInternalState:I
    invoke-static {v2, v7}, Lcom/android/systemui/quicksettings/MobileNetworkTypeTile;->access$202(Lcom/android/systemui/quicksettings/MobileNetworkTypeTile;I)I

    .line 63
    iget-object v2, p0, Lcom/android/systemui/quicksettings/MobileNetworkTypeTile$1;->this$0:Lcom/android/systemui/quicksettings/MobileNetworkTypeTile;

    #setter for: Lcom/android/systemui/quicksettings/MobileNetworkTypeTile;->mIntendedMode:I
    invoke-static {v2, v3}, Lcom/android/systemui/quicksettings/MobileNetworkTypeTile;->access$302(Lcom/android/systemui/quicksettings/MobileNetworkTypeTile;I)I

    goto :goto_0

    .line 66
    :pswitch_1
    if-ne v0, v3, :cond_0

    .line 67
    const-string v2, "networkMode"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 68
    iget-object v2, p0, Lcom/android/systemui/quicksettings/MobileNetworkTypeTile$1;->this$0:Lcom/android/systemui/quicksettings/MobileNetworkTypeTile;

    #setter for: Lcom/android/systemui/quicksettings/MobileNetworkTypeTile;->mInternalState:I
    invoke-static {v2, v7}, Lcom/android/systemui/quicksettings/MobileNetworkTypeTile;->access$202(Lcom/android/systemui/quicksettings/MobileNetworkTypeTile;I)I

    .line 69
    iget-object v2, p0, Lcom/android/systemui/quicksettings/MobileNetworkTypeTile$1;->this$0:Lcom/android/systemui/quicksettings/MobileNetworkTypeTile;

    #setter for: Lcom/android/systemui/quicksettings/MobileNetworkTypeTile;->mIntendedMode:I
    invoke-static {v2, v3}, Lcom/android/systemui/quicksettings/MobileNetworkTypeTile;->access$302(Lcom/android/systemui/quicksettings/MobileNetworkTypeTile;I)I

    goto :goto_0

    .line 71
    :cond_0
    const-string v2, "networkMode"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 72
    iget-object v2, p0, Lcom/android/systemui/quicksettings/MobileNetworkTypeTile$1;->this$0:Lcom/android/systemui/quicksettings/MobileNetworkTypeTile;

    #setter for: Lcom/android/systemui/quicksettings/MobileNetworkTypeTile;->mInternalState:I
    invoke-static {v2, v6}, Lcom/android/systemui/quicksettings/MobileNetworkTypeTile;->access$202(Lcom/android/systemui/quicksettings/MobileNetworkTypeTile;I)I

    .line 73
    iget-object v2, p0, Lcom/android/systemui/quicksettings/MobileNetworkTypeTile$1;->this$0:Lcom/android/systemui/quicksettings/MobileNetworkTypeTile;

    #setter for: Lcom/android/systemui/quicksettings/MobileNetworkTypeTile;->mIntendedMode:I
    invoke-static {v2, v4}, Lcom/android/systemui/quicksettings/MobileNetworkTypeTile;->access$302(Lcom/android/systemui/quicksettings/MobileNetworkTypeTile;I)I

    goto :goto_0

    .line 77
    :pswitch_2
    if-eq v0, v3, :cond_1

    if-ne v0, v5, :cond_2

    .line 78
    :cond_1
    const-string v2, "networkMode"

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 79
    iget-object v2, p0, Lcom/android/systemui/quicksettings/MobileNetworkTypeTile$1;->this$0:Lcom/android/systemui/quicksettings/MobileNetworkTypeTile;

    #setter for: Lcom/android/systemui/quicksettings/MobileNetworkTypeTile;->mInternalState:I
    invoke-static {v2, v6}, Lcom/android/systemui/quicksettings/MobileNetworkTypeTile;->access$202(Lcom/android/systemui/quicksettings/MobileNetworkTypeTile;I)I

    .line 80
    iget-object v2, p0, Lcom/android/systemui/quicksettings/MobileNetworkTypeTile$1;->this$0:Lcom/android/systemui/quicksettings/MobileNetworkTypeTile;

    #setter for: Lcom/android/systemui/quicksettings/MobileNetworkTypeTile;->mIntendedMode:I
    invoke-static {v2, v5}, Lcom/android/systemui/quicksettings/MobileNetworkTypeTile;->access$302(Lcom/android/systemui/quicksettings/MobileNetworkTypeTile;I)I

    goto :goto_0

    .line 82
    :cond_2
    const-string v2, "networkMode"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 83
    iget-object v2, p0, Lcom/android/systemui/quicksettings/MobileNetworkTypeTile$1;->this$0:Lcom/android/systemui/quicksettings/MobileNetworkTypeTile;

    #setter for: Lcom/android/systemui/quicksettings/MobileNetworkTypeTile;->mInternalState:I
    invoke-static {v2, v6}, Lcom/android/systemui/quicksettings/MobileNetworkTypeTile;->access$202(Lcom/android/systemui/quicksettings/MobileNetworkTypeTile;I)I

    .line 84
    iget-object v2, p0, Lcom/android/systemui/quicksettings/MobileNetworkTypeTile$1;->this$0:Lcom/android/systemui/quicksettings/MobileNetworkTypeTile;

    #setter for: Lcom/android/systemui/quicksettings/MobileNetworkTypeTile;->mIntendedMode:I
    invoke-static {v2, v4}, Lcom/android/systemui/quicksettings/MobileNetworkTypeTile;->access$302(Lcom/android/systemui/quicksettings/MobileNetworkTypeTile;I)I

    goto :goto_0

    .line 58
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
