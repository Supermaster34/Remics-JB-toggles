.class Lcom/android/systemui/quicksettings/AirplaneModeTile$1;
.super Ljava/lang/Object;
.source "AirplaneModeTile.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 25
    iput-object p1, p0, Lcom/android/systemui/quicksettings/AirplaneModeTile$1;->this$0:Lcom/android/systemui/quicksettings/AirplaneModeTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 29
    iget-object v1, p0, Lcom/android/systemui/quicksettings/AirplaneModeTile$1;->this$0:Lcom/android/systemui/quicksettings/AirplaneModeTile;

    iget-object v1, v1, Lcom/android/systemui/quicksettings/AirplaneModeTile;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "airplane_mode_on"

    iget-object v1, p0, Lcom/android/systemui/quicksettings/AirplaneModeTile$1;->this$0:Lcom/android/systemui/quicksettings/AirplaneModeTile;

    #getter for: Lcom/android/systemui/quicksettings/AirplaneModeTile;->enabled:Z
    invoke-static {v1}, Lcom/android/systemui/quicksettings/AirplaneModeTile;->access$000(Lcom/android/systemui/quicksettings/AirplaneModeTile;)Z

    move-result v1

    if-nez v1, :cond_0

    move v1, v2

    :goto_0
    invoke-static {v4, v5, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 33
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 34
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "state"

    iget-object v4, p0, Lcom/android/systemui/quicksettings/AirplaneModeTile$1;->this$0:Lcom/android/systemui/quicksettings/AirplaneModeTile;

    #getter for: Lcom/android/systemui/quicksettings/AirplaneModeTile;->enabled:Z
    invoke-static {v4}, Lcom/android/systemui/quicksettings/AirplaneModeTile;->access$000(Lcom/android/systemui/quicksettings/AirplaneModeTile;)Z

    move-result v4

    if-nez v4, :cond_1

    :goto_1
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 35
    iget-object v1, p0, Lcom/android/systemui/quicksettings/AirplaneModeTile$1;->this$0:Lcom/android/systemui/quicksettings/AirplaneModeTile;

    iget-object v1, v1, Lcom/android/systemui/quicksettings/AirplaneModeTile;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 36
    return-void

    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    move v1, v3

    .line 29
    goto :goto_0

    .restart local v0       #intent:Landroid/content/Intent;
    :cond_1
    move v2, v3

    .line 34
    goto :goto_1
.end method
