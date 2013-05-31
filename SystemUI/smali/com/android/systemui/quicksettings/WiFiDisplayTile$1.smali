.class Lcom/android/systemui/quicksettings/WiFiDisplayTile$1;
.super Ljava/lang/Object;
.source "WiFiDisplayTile.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/quicksettings/WiFiDisplayTile;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/QuickSettingsController;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/quicksettings/WiFiDisplayTile;


# direct methods
.method constructor <init>(Lcom/android/systemui/quicksettings/WiFiDisplayTile;)V
    .locals 0
    .parameter

    .prologue
    .line 24
    iput-object p1, p0, Lcom/android/systemui/quicksettings/WiFiDisplayTile$1;->this$0:Lcom/android/systemui/quicksettings/WiFiDisplayTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/android/systemui/quicksettings/WiFiDisplayTile$1;->this$0:Lcom/android/systemui/quicksettings/WiFiDisplayTile;

    const-string v1, "android.settings.WIFI_DISPLAY_SETTINGS"

    invoke-virtual {v0, v1}, Lcom/android/systemui/quicksettings/WiFiDisplayTile;->startSettingsActivity(Ljava/lang/String;)V

    .line 29
    return-void
.end method
