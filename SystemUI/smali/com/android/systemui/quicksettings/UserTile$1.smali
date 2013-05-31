.class Lcom/android/systemui/quicksettings/UserTile$1;
.super Ljava/lang/Object;
.source "UserTile.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/quicksettings/UserTile;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/QuickSettingsController;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/quicksettings/UserTile;


# direct methods
.method constructor <init>(Lcom/android/systemui/quicksettings/UserTile;)V
    .locals 0
    .parameter

    .prologue
    .line 40
    iput-object p1, p0, Lcom/android/systemui/quicksettings/UserTile$1;->this$0:Lcom/android/systemui/quicksettings/UserTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    const/4 v5, 0x1

    .line 43
    iget-object v3, p0, Lcom/android/systemui/quicksettings/UserTile$1;->this$0:Lcom/android/systemui/quicksettings/UserTile;

    iget-object v3, v3, Lcom/android/systemui/quicksettings/UserTile;->mQsc:Lcom/android/systemui/statusbar/phone/QuickSettingsController;

    iget-object v3, v3, Lcom/android/systemui/statusbar/phone/QuickSettingsController;->mBar:Lcom/android/systemui/statusbar/phone/PanelBar;

    invoke-virtual {v3, v5}, Lcom/android/systemui/statusbar/phone/PanelBar;->collapseAllPanels(Z)V

    .line 44
    iget-object v3, p0, Lcom/android/systemui/quicksettings/UserTile$1;->this$0:Lcom/android/systemui/quicksettings/UserTile;

    iget-object v3, v3, Lcom/android/systemui/quicksettings/UserTile;->mContext:Landroid/content/Context;

    const-string v4, "user"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserManager;

    .line 46
    .local v2, um:Landroid/os/UserManager;
    invoke-virtual {v2, v5}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-le v3, v5, :cond_0

    .line 48
    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Landroid/view/IWindowManager;->lockNow(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    :goto_0
    return-void

    .line 50
    :catch_0
    move-exception v0

    .line 51
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "UserTile"

    const-string v4, "Couldn\'t show user switcher"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 54
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    sget-object v4, Landroid/provider/ContactsContract$Profile;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 55
    .local v1, intent:Landroid/content/Intent;
    iget-object v3, p0, Lcom/android/systemui/quicksettings/UserTile$1;->this$0:Lcom/android/systemui/quicksettings/UserTile;

    invoke-virtual {v3, v1}, Lcom/android/systemui/quicksettings/UserTile;->startSettingsActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
