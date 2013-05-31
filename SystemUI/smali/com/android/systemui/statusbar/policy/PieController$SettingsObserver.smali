.class final Lcom/android/systemui/statusbar/policy/PieController$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "PieController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/PieController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/PieController;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/PieController;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "handler"

    .prologue
    .line 198
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/PieController$SettingsObserver;->this$0:Lcom/android/systemui/statusbar/policy/PieController;

    .line 199
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 200
    return-void
.end method


# virtual methods
.method observe()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 203
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/PieController$SettingsObserver;->this$0:Lcom/android/systemui/statusbar/policy/PieController;

    #getter for: Lcom/android/systemui/statusbar/policy/PieController;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/PieController;->access$600(Lcom/android/systemui/statusbar/policy/PieController;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 205
    .local v0, resolver:Landroid/content/ContentResolver;
    const-string v1, "nav_buttons"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 207
    const-string v1, "kill_app_longpress_back"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 210
    const-string v1, "pie_controls"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 212
    const-string v1, "expanded_desktop_state"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 214
    const-string v1, "expanded_desktop_style"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 217
    const-string v1, "pie_positions"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 219
    return-void
.end method

.method public onChange(Z)V
    .locals 5
    .parameter "selfChange"

    .prologue
    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 223
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/PieController$SettingsObserver;->this$0:Lcom/android/systemui/statusbar/policy/PieController;

    #getter for: Lcom/android/systemui/statusbar/policy/PieController;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/systemui/statusbar/policy/PieController;->access$600(Lcom/android/systemui/statusbar/policy/PieController;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 224
    .local v1, resolver:Landroid/content/ContentResolver;
    const-string v3, "expanded_desktop_state"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v0, :cond_0

    .line 226
    .local v0, expanded:Z
    :goto_0
    if-eqz v0, :cond_1

    .line 227
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/PieController$SettingsObserver;->this$0:Lcom/android/systemui/statusbar/policy/PieController;

    const-string v4, "expanded_desktop_style"

    invoke-static {v1, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    iput v2, v3, Lcom/android/systemui/statusbar/policy/PieController;->mExpandedDesktopState:I

    .line 232
    :goto_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/PieController$SettingsObserver;->this$0:Lcom/android/systemui/statusbar/policy/PieController;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/policy/PieController;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 233
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/PieController$SettingsObserver;->this$0:Lcom/android/systemui/statusbar/policy/PieController;

    #calls: Lcom/android/systemui/statusbar/policy/PieController;->setupContainer()V
    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/PieController;->access$700(Lcom/android/systemui/statusbar/policy/PieController;)V

    .line 234
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/PieController$SettingsObserver;->this$0:Lcom/android/systemui/statusbar/policy/PieController;

    #calls: Lcom/android/systemui/statusbar/policy/PieController;->setupNavigationItems()V
    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/PieController;->access$800(Lcom/android/systemui/statusbar/policy/PieController;)V

    .line 235
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/PieController$SettingsObserver;->this$0:Lcom/android/systemui/statusbar/policy/PieController;

    #calls: Lcom/android/systemui/statusbar/policy/PieController;->setupListener()V
    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/PieController;->access$900(Lcom/android/systemui/statusbar/policy/PieController;)V

    .line 239
    :goto_2
    return-void

    .end local v0           #expanded:Z
    :cond_0
    move v0, v2

    .line 224
    goto :goto_0

    .line 230
    .restart local v0       #expanded:Z
    :cond_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/PieController$SettingsObserver;->this$0:Lcom/android/systemui/statusbar/policy/PieController;

    iput v2, v3, Lcom/android/systemui/statusbar/policy/PieController;->mExpandedDesktopState:I

    goto :goto_1

    .line 237
    :cond_2
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/PieController$SettingsObserver;->this$0:Lcom/android/systemui/statusbar/policy/PieController;

    #calls: Lcom/android/systemui/statusbar/policy/PieController;->detachContainer()V
    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/PieController;->access$1000(Lcom/android/systemui/statusbar/policy/PieController;)V

    goto :goto_2
.end method
