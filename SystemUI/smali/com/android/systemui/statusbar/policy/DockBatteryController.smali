.class public Lcom/android/systemui/statusbar/policy/DockBatteryController;
.super Lcom/android/systemui/statusbar/policy/BatteryController;
.source "DockBatteryController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/DockBatteryController$DockBatteryStateChangeCallback;
    }
.end annotation


# instance fields
.field private mBatteryPlugged:Z

.field private mBatteryPresent:Z

.field private mChangeCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/statusbar/policy/DockBatteryController$DockBatteryStateChangeCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mDockBatteryStatus:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 35
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/policy/DockBatteryController;-><init>(Landroid/content/Context;Z)V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 2
    .parameter "context"
    .parameter "ui"

    .prologue
    const/4 v1, 0x0

    .line 39
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/policy/BatteryController;-><init>(Landroid/content/Context;Z)V

    .line 30
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/systemui/statusbar/policy/DockBatteryController;->mDockBatteryStatus:I

    .line 31
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/DockBatteryController;->mBatteryPlugged:Z

    .line 32
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/DockBatteryController;->mBatteryPresent:Z

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/DockBatteryController;->mChangeCallbacks:Ljava/util/ArrayList;

    .line 40
    return-void
.end method


# virtual methods
.method public addStateChangedCallback(Lcom/android/systemui/statusbar/policy/DockBatteryController$DockBatteryStateChangeCallback;)V
    .locals 1
    .parameter "cb"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/DockBatteryController;->mChangeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 77
    return-void
.end method

.method protected getBatteryStatus()I
    .locals 1

    .prologue
    .line 106
    iget v0, p0, Lcom/android/systemui/statusbar/policy/DockBatteryController;->mDockBatteryStatus:I

    return v0
.end method

.method public getIconStyleCharge()I
    .locals 1

    .prologue
    .line 93
    const v0, 0x7f0201c2

    return v0
.end method

.method public getIconStyleChargeMin()I
    .locals 1

    .prologue
    .line 101
    const v0, 0x7f0201cb

    return v0
.end method

.method public getIconStyleNormal()I
    .locals 1

    .prologue
    .line 89
    const v0, 0x7f0201b9

    return v0
.end method

.method public getIconStyleNormalMin()I
    .locals 1

    .prologue
    .line 97
    const v0, 0x7f0201d5

    return v0
.end method

.method public getIconStyleUnknown()I
    .locals 1

    .prologue
    .line 85
    const v0, 0x7f0201de

    return v0
.end method

.method protected isBatteryPresent()Z
    .locals 1

    .prologue
    .line 116
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/DockBatteryController;->mBatteryPresent:Z

    return v0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 44
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 45
    .local v0, action:Ljava/lang/String;
    const-string v4, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 46
    const-string v4, "dock_level"

    invoke-virtual {p2, v4, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 47
    .local v1, level:I
    const-string v4, "dock_status"

    invoke-virtual {p2, v4, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/android/systemui/statusbar/policy/DockBatteryController;->mDockBatteryStatus:I

    .line 50
    const-string v4, "dock_plugged"

    invoke-virtual {p2, v4, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_1

    :goto_0
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/policy/DockBatteryController;->mBatteryPlugged:Z

    .line 51
    const-string v2, "dock_present"

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/policy/DockBatteryController;->mBatteryPresent:Z

    .line 52
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/policy/DockBatteryController;->updateViews(I)V

    .line 53
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/DockBatteryController;->updateBattery()V

    .line 55
    .end local v1           #level:I
    :cond_0
    return-void

    .restart local v1       #level:I
    :cond_1
    move v2, v3

    .line 50
    goto :goto_0
.end method

.method public removeStateChangedCallback(Lcom/android/systemui/statusbar/policy/DockBatteryController$DockBatteryStateChangeCallback;)V
    .locals 1
    .parameter "cb"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/DockBatteryController;->mChangeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 81
    return-void
.end method

.method protected updateViews(I)V
    .locals 4
    .parameter "level"

    .prologue
    .line 59
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/DockBatteryController;->isUiController()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 60
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/policy/BatteryController;->updateViews(I)V

    .line 63
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/DockBatteryController;->mChangeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/DockBatteryController$DockBatteryStateChangeCallback;

    .line 64
    .local v0, cb:Lcom/android/systemui/statusbar/policy/DockBatteryController$DockBatteryStateChangeCallback;
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/DockBatteryController;->isBatteryPresent()Z

    move-result v2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/DockBatteryController;->isBatteryStatusCharging()Z

    move-result v3

    invoke-interface {v0, p1, v2, v3}, Lcom/android/systemui/statusbar/policy/DockBatteryController$DockBatteryStateChangeCallback;->onDockBatteryLevelChanged(IZZ)V

    goto :goto_0

    .line 66
    .end local v0           #cb:Lcom/android/systemui/statusbar/policy/DockBatteryController$DockBatteryStateChangeCallback;
    :cond_1
    return-void
.end method
