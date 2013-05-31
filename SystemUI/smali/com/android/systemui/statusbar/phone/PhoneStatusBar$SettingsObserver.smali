.class Lcom/android/systemui/statusbar/phone/PhoneStatusBar$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "PhoneStatusBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "handler"

    .prologue
    .line 342
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$SettingsObserver;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .line 343
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 344
    return-void
.end method


# virtual methods
.method observe()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 347
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$SettingsObserver;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 348
    .local v0, resolver:Landroid/content/ContentResolver;
    const-string v1, "status_bar_brightness_control"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 350
    const-string v1, "screen_brightness_mode"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 352
    const-string v1, "high_end_gfx_enabled"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 354
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$SettingsObserver;->update()V

    .line 355
    return-void
.end method

.method public onChange(Z)V
    .locals 0
    .parameter "selfChange"

    .prologue
    .line 359
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$SettingsObserver;->update()V

    .line 360
    return-void
.end method

.method public update()V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 363
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$SettingsObserver;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v4, v4, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 364
    .local v1, resolver:Landroid/content/ContentResolver;
    const-string v4, "screen_brightness_mode"

    invoke-static {v1, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v2, :cond_0

    move v0, v2

    .line 367
    .local v0, autoBrightness:Z
    :goto_0
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$SettingsObserver;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    if-nez v0, :cond_1

    const-string v4, "status_bar_brightness_control"

    invoke-static {v1, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v2, :cond_1

    move v4, v2

    :goto_1
    #setter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBrightnessControl:Z
    invoke-static {v5, v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$102(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Z)Z

    .line 369
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$SettingsObserver;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    const-string v5, "high_end_gfx_enabled"

    invoke-static {v1, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_2

    :goto_2
    #setter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHighEndGfx:Z
    invoke-static {v4, v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$202(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Z)Z

    .line 371
    return-void

    .end local v0           #autoBrightness:Z
    :cond_0
    move v0, v3

    .line 364
    goto :goto_0

    .restart local v0       #autoBrightness:Z
    :cond_1
    move v4, v3

    .line 367
    goto :goto_1

    :cond_2
    move v2, v3

    .line 369
    goto :goto_2
.end method
