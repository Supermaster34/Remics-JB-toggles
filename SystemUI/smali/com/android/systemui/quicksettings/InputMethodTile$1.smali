.class Lcom/android/systemui/quicksettings/InputMethodTile$1;
.super Ljava/lang/Object;
.source "InputMethodTile.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/quicksettings/InputMethodTile;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/QuickSettingsController;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/quicksettings/InputMethodTile;


# direct methods
.method constructor <init>(Lcom/android/systemui/quicksettings/InputMethodTile;)V
    .locals 0
    .parameter

    .prologue
    .line 34
    iput-object p1, p0, Lcom/android/systemui/quicksettings/InputMethodTile$1;->this$0:Lcom/android/systemui/quicksettings/InputMethodTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    .line 39
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/quicksettings/InputMethodTile$1;->this$0:Lcom/android/systemui/quicksettings/InputMethodTile;

    iget-object v2, v2, Lcom/android/systemui/quicksettings/InputMethodTile;->mQsc:Lcom/android/systemui/statusbar/phone/QuickSettingsController;

    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/QuickSettingsController;->mBar:Lcom/android/systemui/statusbar/phone/PanelBar;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/phone/PanelBar;->collapseAllPanels(Z)V

    .line 40
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.settings.SHOW_INPUT_METHOD_PICKER"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 41
    .local v0, intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/systemui/quicksettings/InputMethodTile$1;->this$0:Lcom/android/systemui/quicksettings/InputMethodTile;

    iget-object v2, v2, Lcom/android/systemui/quicksettings/InputMethodTile;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v2, v3, v0, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 42
    .local v1, pendingIntent:Landroid/app/PendingIntent;
    invoke-virtual {v1}, Landroid/app/PendingIntent;->send()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    .end local v0           #intent:Landroid/content/Intent;
    .end local v1           #pendingIntent:Landroid/app/PendingIntent;
    :goto_0
    return-void

    .line 43
    :catch_0
    move-exception v2

    goto :goto_0
.end method
