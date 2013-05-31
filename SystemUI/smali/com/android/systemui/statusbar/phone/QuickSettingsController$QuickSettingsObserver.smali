.class Lcom/android/systemui/statusbar/phone/QuickSettingsController$QuickSettingsObserver;
.super Landroid/database/ContentObserver;
.source "QuickSettingsController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/QuickSettingsController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QuickSettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/QuickSettingsController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/QuickSettingsController;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "handler"

    .prologue
    .line 347
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsController$QuickSettingsObserver;->this$0:Lcom/android/systemui/statusbar/phone/QuickSettingsController;

    .line 348
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 349
    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 5
    .parameter "selfChange"
    .parameter "uri"

    .prologue
    const/16 v4, 0x3e8

    .line 353
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsController$QuickSettingsObserver;->this$0:Lcom/android/systemui/statusbar/phone/QuickSettingsController;

    #getter for: Lcom/android/systemui/statusbar/phone/QuickSettingsController;->mTileStatusUris:Ljava/util/HashSet;
    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/QuickSettingsController;->access$100(Lcom/android/systemui/statusbar/phone/QuickSettingsController;)Ljava/util/HashSet;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 354
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsController$QuickSettingsObserver;->this$0:Lcom/android/systemui/statusbar/phone/QuickSettingsController;

    #getter for: Lcom/android/systemui/statusbar/phone/QuickSettingsController;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/QuickSettingsController;->access$200(Lcom/android/systemui/statusbar/phone/QuickSettingsController;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 355
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsController$QuickSettingsObserver;->this$0:Lcom/android/systemui/statusbar/phone/QuickSettingsController;

    #getter for: Lcom/android/systemui/statusbar/phone/QuickSettingsController;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/QuickSettingsController;->access$200(Lcom/android/systemui/statusbar/phone/QuickSettingsController;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 362
    :cond_0
    return-void

    .line 357
    :cond_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsController$QuickSettingsObserver;->this$0:Lcom/android/systemui/statusbar/phone/QuickSettingsController;

    #getter for: Lcom/android/systemui/statusbar/phone/QuickSettingsController;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/QuickSettingsController;->access$300(Lcom/android/systemui/statusbar/phone/QuickSettingsController;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 358
    .local v1, resolver:Landroid/content/ContentResolver;
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsController$QuickSettingsObserver;->this$0:Lcom/android/systemui/statusbar/phone/QuickSettingsController;

    iget-object v3, v3, Lcom/android/systemui/statusbar/phone/QuickSettingsController;->mObserverMap:Ljava/util/HashMap;

    invoke-virtual {v3, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/quicksettings/QuickSettingsTile;

    .line 359
    .local v2, tile:Lcom/android/systemui/quicksettings/QuickSettingsTile;
    invoke-virtual {v2, v1, p2}, Lcom/android/systemui/quicksettings/QuickSettingsTile;->onChangeUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    goto :goto_0
.end method
