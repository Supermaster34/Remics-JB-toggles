.class Lcom/android/systemui/quicksettings/DockBatteryTile$1;
.super Ljava/lang/Object;
.source "DockBatteryTile.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/quicksettings/DockBatteryTile;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/QuickSettingsController;Lcom/android/systemui/statusbar/policy/DockBatteryController;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/quicksettings/DockBatteryTile;


# direct methods
.method constructor <init>(Lcom/android/systemui/quicksettings/DockBatteryTile;)V
    .locals 0
    .parameter

    .prologue
    .line 33
    iput-object p1, p0, Lcom/android/systemui/quicksettings/DockBatteryTile$1;->this$0:Lcom/android/systemui/quicksettings/DockBatteryTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/systemui/quicksettings/DockBatteryTile$1;->this$0:Lcom/android/systemui/quicksettings/DockBatteryTile;

    const-string v1, "android.intent.action.POWER_USAGE_SUMMARY"

    invoke-virtual {v0, v1}, Lcom/android/systemui/quicksettings/DockBatteryTile;->startSettingsActivity(Ljava/lang/String;)V

    .line 37
    return-void
.end method
