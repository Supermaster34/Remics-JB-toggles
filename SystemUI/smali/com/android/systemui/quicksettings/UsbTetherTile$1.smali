.class Lcom/android/systemui/quicksettings/UsbTetherTile$1;
.super Ljava/lang/Object;
.source "UsbTetherTile.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/quicksettings/UsbTetherTile;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/QuickSettingsController;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/quicksettings/UsbTetherTile;


# direct methods
.method constructor <init>(Lcom/android/systemui/quicksettings/UsbTetherTile;)V
    .locals 0
    .parameter

    .prologue
    .line 26
    iput-object p1, p0, Lcom/android/systemui/quicksettings/UsbTetherTile$1;->this$0:Lcom/android/systemui/quicksettings/UsbTetherTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/android/systemui/quicksettings/UsbTetherTile$1;->this$0:Lcom/android/systemui/quicksettings/UsbTetherTile;

    #getter for: Lcom/android/systemui/quicksettings/UsbTetherTile;->mUsbConnected:Z
    invoke-static {v0}, Lcom/android/systemui/quicksettings/UsbTetherTile;->access$000(Lcom/android/systemui/quicksettings/UsbTetherTile;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 30
    iget-object v1, p0, Lcom/android/systemui/quicksettings/UsbTetherTile$1;->this$0:Lcom/android/systemui/quicksettings/UsbTetherTile;

    iget-object v0, p0, Lcom/android/systemui/quicksettings/UsbTetherTile$1;->this$0:Lcom/android/systemui/quicksettings/UsbTetherTile;

    #getter for: Lcom/android/systemui/quicksettings/UsbTetherTile;->mUsbTethered:Z
    invoke-static {v0}, Lcom/android/systemui/quicksettings/UsbTetherTile;->access$100(Lcom/android/systemui/quicksettings/UsbTetherTile;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    #calls: Lcom/android/systemui/quicksettings/UsbTetherTile;->setUsbTethering(Z)V
    invoke-static {v1, v0}, Lcom/android/systemui/quicksettings/UsbTetherTile;->access$200(Lcom/android/systemui/quicksettings/UsbTetherTile;Z)V

    .line 32
    :cond_0
    return-void

    .line 30
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
