.class Lcom/android/systemui/quicksettings/ToggleLockscreenTile$1;
.super Ljava/lang/Object;
.source "ToggleLockscreenTile.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/quicksettings/ToggleLockscreenTile;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/QuickSettingsController;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/quicksettings/ToggleLockscreenTile;


# direct methods
.method constructor <init>(Lcom/android/systemui/quicksettings/ToggleLockscreenTile;)V
    .locals 0
    .parameter

    .prologue
    .line 32
    iput-object p1, p0, Lcom/android/systemui/quicksettings/ToggleLockscreenTile$1;->this$0:Lcom/android/systemui/quicksettings/ToggleLockscreenTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 36
    iget-object v2, p0, Lcom/android/systemui/quicksettings/ToggleLockscreenTile$1;->this$0:Lcom/android/systemui/quicksettings/ToggleLockscreenTile;

    iget-object v1, p0, Lcom/android/systemui/quicksettings/ToggleLockscreenTile$1;->this$0:Lcom/android/systemui/quicksettings/ToggleLockscreenTile;

    #getter for: Lcom/android/systemui/quicksettings/ToggleLockscreenTile;->mDisabledLockscreen:Z
    invoke-static {v1}, Lcom/android/systemui/quicksettings/ToggleLockscreenTile;->access$000(Lcom/android/systemui/quicksettings/ToggleLockscreenTile;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    #setter for: Lcom/android/systemui/quicksettings/ToggleLockscreenTile;->mDisabledLockscreen:Z
    invoke-static {v2, v1}, Lcom/android/systemui/quicksettings/ToggleLockscreenTile;->access$002(Lcom/android/systemui/quicksettings/ToggleLockscreenTile;Z)Z

    .line 38
    iget-object v1, p0, Lcom/android/systemui/quicksettings/ToggleLockscreenTile$1;->this$0:Lcom/android/systemui/quicksettings/ToggleLockscreenTile;

    #getter for: Lcom/android/systemui/quicksettings/ToggleLockscreenTile;->mPrefs:Landroid/content/SharedPreferences;
    invoke-static {v1}, Lcom/android/systemui/quicksettings/ToggleLockscreenTile;->access$100(Lcom/android/systemui/quicksettings/ToggleLockscreenTile;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 39
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "lockscreen_disabled"

    iget-object v2, p0, Lcom/android/systemui/quicksettings/ToggleLockscreenTile$1;->this$0:Lcom/android/systemui/quicksettings/ToggleLockscreenTile;

    #getter for: Lcom/android/systemui/quicksettings/ToggleLockscreenTile;->mDisabledLockscreen:Z
    invoke-static {v2}, Lcom/android/systemui/quicksettings/ToggleLockscreenTile;->access$000(Lcom/android/systemui/quicksettings/ToggleLockscreenTile;)Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 40
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 42
    iget-object v1, p0, Lcom/android/systemui/quicksettings/ToggleLockscreenTile$1;->this$0:Lcom/android/systemui/quicksettings/ToggleLockscreenTile;

    invoke-virtual {v1}, Lcom/android/systemui/quicksettings/ToggleLockscreenTile;->updateResources()V

    .line 43
    return-void

    .line 36
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
