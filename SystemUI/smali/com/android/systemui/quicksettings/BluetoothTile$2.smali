.class Lcom/android/systemui/quicksettings/BluetoothTile$2;
.super Ljava/lang/Object;
.source "BluetoothTile.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/quicksettings/BluetoothTile;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/QuickSettingsController;Lcom/android/systemui/statusbar/policy/BluetoothController;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/quicksettings/BluetoothTile;


# direct methods
.method constructor <init>(Lcom/android/systemui/quicksettings/BluetoothTile;)V
    .locals 0
    .parameter

    .prologue
    .line 43
    iput-object p1, p0, Lcom/android/systemui/quicksettings/BluetoothTile$2;->this$0:Lcom/android/systemui/quicksettings/BluetoothTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 2
    .parameter "v"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/systemui/quicksettings/BluetoothTile$2;->this$0:Lcom/android/systemui/quicksettings/BluetoothTile;

    const-string v1, "android.settings.BLUETOOTH_SETTINGS"

    invoke-virtual {v0, v1}, Lcom/android/systemui/quicksettings/BluetoothTile;->startSettingsActivity(Ljava/lang/String;)V

    .line 48
    const/4 v0, 0x1

    return v0
.end method
