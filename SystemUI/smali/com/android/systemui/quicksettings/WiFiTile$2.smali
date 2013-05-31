.class Lcom/android/systemui/quicksettings/WiFiTile$2;
.super Ljava/lang/Object;
.source "WiFiTile.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


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
    .line 35
    iput-object p1, p0, Lcom/android/systemui/quicksettings/WiFiTile$2;->this$0:Lcom/android/systemui/quicksettings/WiFiTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 2
    .parameter "v"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/systemui/quicksettings/WiFiTile$2;->this$0:Lcom/android/systemui/quicksettings/WiFiTile;

    const-string v1, "android.settings.WIFI_SETTINGS"

    invoke-virtual {v0, v1}, Lcom/android/systemui/quicksettings/WiFiTile;->startSettingsActivity(Ljava/lang/String;)V

    .line 40
    const/4 v0, 0x1

    return v0
.end method
