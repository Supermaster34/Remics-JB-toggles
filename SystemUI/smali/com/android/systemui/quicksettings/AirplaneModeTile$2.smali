.class Lcom/android/systemui/quicksettings/AirplaneModeTile$2;
.super Ljava/lang/Object;
.source "AirplaneModeTile.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/quicksettings/AirplaneModeTile;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/QuickSettingsController;Lcom/android/systemui/statusbar/policy/NetworkController;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/quicksettings/AirplaneModeTile;


# direct methods
.method constructor <init>(Lcom/android/systemui/quicksettings/AirplaneModeTile;)V
    .locals 0
    .parameter

    .prologue
    .line 38
    iput-object p1, p0, Lcom/android/systemui/quicksettings/AirplaneModeTile$2;->this$0:Lcom/android/systemui/quicksettings/AirplaneModeTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 2
    .parameter "v"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/systemui/quicksettings/AirplaneModeTile$2;->this$0:Lcom/android/systemui/quicksettings/AirplaneModeTile;

    const-string v1, "android.settings.WIRELESS_SETTINGS"

    invoke-virtual {v0, v1}, Lcom/android/systemui/quicksettings/AirplaneModeTile;->startSettingsActivity(Ljava/lang/String;)V

    .line 43
    const/4 v0, 0x1

    return v0
.end method
