.class Lcom/android/systemui/quicksettings/MobileNetworkTile$2;
.super Ljava/lang/Object;
.source "MobileNetworkTile.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


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
    .line 57
    iput-object p1, p0, Lcom/android/systemui/quicksettings/MobileNetworkTile$2;->this$0:Lcom/android/systemui/quicksettings/MobileNetworkTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 4
    .parameter "v"

    .prologue
    .line 60
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 61
    .local v0, intent:Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.settings"

    const-string v3, "com.android.settings.Settings$DataUsageSummaryActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 64
    iget-object v1, p0, Lcom/android/systemui/quicksettings/MobileNetworkTile$2;->this$0:Lcom/android/systemui/quicksettings/MobileNetworkTile;

    invoke-virtual {v1, v0}, Lcom/android/systemui/quicksettings/MobileNetworkTile;->startSettingsActivity(Landroid/content/Intent;)V

    .line 65
    const/4 v1, 0x1

    return v1
.end method
