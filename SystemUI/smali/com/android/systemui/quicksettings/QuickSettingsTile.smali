.class public Lcom/android/systemui/quicksettings/QuickSettingsTile;
.super Ljava/lang/Object;
.source "QuickSettingsTile.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field protected final mContext:Landroid/content/Context;

.field protected mDrawable:I

.field protected mLabel:Ljava/lang/String;

.field protected mOnClick:Landroid/view/View$OnClickListener;

.field protected mOnLongClick:Landroid/view/View$OnLongClickListener;

.field protected mQsc:Lcom/android/systemui/statusbar/phone/QuickSettingsController;

.field protected mStatusbarService:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

.field protected mTile:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;

.field protected final mTileLayout:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/QuickSettingsController;)V
    .locals 1
    .parameter "context"
    .parameter "qsc"

    .prologue
    .line 38
    const v0, 0x7f040015

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/quicksettings/QuickSettingsTile;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/QuickSettingsController;I)V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/QuickSettingsController;I)V
    .locals 2
    .parameter "context"
    .parameter "qsc"
    .parameter "layout"

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/android/systemui/quicksettings/QuickSettingsTile;->mContext:Landroid/content/Context;

    .line 43
    const v0, 0x7f020025

    iput v0, p0, Lcom/android/systemui/quicksettings/QuickSettingsTile;->mDrawable:I

    .line 44
    iget-object v0, p0, Lcom/android/systemui/quicksettings/QuickSettingsTile;->mContext:Landroid/content/Context;

    const v1, 0x7f0a0012

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/quicksettings/QuickSettingsTile;->mLabel:Ljava/lang/String;

    .line 45
    iget-object v0, p2, Lcom/android/systemui/statusbar/phone/QuickSettingsController;->mStatusBarService:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iput-object v0, p0, Lcom/android/systemui/quicksettings/QuickSettingsTile;->mStatusbarService:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .line 46
    iput-object p2, p0, Lcom/android/systemui/quicksettings/QuickSettingsTile;->mQsc:Lcom/android/systemui/statusbar/phone/QuickSettingsController;

    .line 47
    iput p3, p0, Lcom/android/systemui/quicksettings/QuickSettingsTile;->mTileLayout:I

    .line 48
    return-void
.end method

.method private startSettingsActivity(Landroid/content/Intent;Z)V
    .locals 3
    .parameter "intent"
    .parameter "onlyProvisioned"

    .prologue
    .line 90
    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/android/systemui/quicksettings/QuickSettingsTile;->mStatusbarService:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isDeviceProvisioned()Z

    move-result v0

    if-nez v0, :cond_0

    .line 99
    :goto_0
    return-void

    .line 93
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->dismissKeyguardOnNextActivity()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    :goto_1
    const/high16 v0, 0x1400

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 97
    iget-object v0, p0, Lcom/android/systemui/quicksettings/QuickSettingsTile;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/os/UserHandle;

    const/4 v2, -0x2

    invoke-direct {v1, v2}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 98
    iget-object v0, p0, Lcom/android/systemui/quicksettings/QuickSettingsTile;->mStatusbarService:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->animateCollapsePanels()V

    goto :goto_0

    .line 94
    :catch_0
    move-exception v0

    goto :goto_1
.end method


# virtual methods
.method public onChangeUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V
    .locals 0
    .parameter "resolver"
    .parameter "uri"

    .prologue
    .line 66
    return-void
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 103
    iget-object v3, p0, Lcom/android/systemui/quicksettings/QuickSettingsTile;->mOnClick:Landroid/view/View$OnClickListener;

    invoke-interface {v3, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 104
    iget-object v3, p0, Lcom/android/systemui/quicksettings/QuickSettingsTile;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 105
    .local v0, resolver:Landroid/content/ContentResolver;
    const-string v3, "qs_collapse_panel"

    invoke-static {v0, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v2, :cond_0

    move v1, v2

    .line 106
    .local v1, shouldCollapse:Z
    :cond_0
    if-eqz v1, :cond_1

    .line 107
    iget-object v3, p0, Lcom/android/systemui/quicksettings/QuickSettingsTile;->mQsc:Lcom/android/systemui/statusbar/phone/QuickSettingsController;

    iget-object v3, v3, Lcom/android/systemui/statusbar/phone/QuickSettingsController;->mBar:Lcom/android/systemui/statusbar/phone/PanelBar;

    invoke-virtual {v3, v2}, Lcom/android/systemui/statusbar/phone/PanelBar;->collapseAllPanels(Z)V

    .line 109
    :cond_1
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 62
    return-void
.end method

.method onPostCreate()V
    .locals 0

    .prologue
    .line 60
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 64
    return-void
.end method

.method public setupQuickSettingsTile(Landroid/view/LayoutInflater;Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView;)V
    .locals 2
    .parameter "inflater"
    .parameter "container"

    .prologue
    .line 51
    const v0, 0x7f04000d

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;

    iput-object v0, p0, Lcom/android/systemui/quicksettings/QuickSettingsTile;->mTile:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;

    .line 52
    iget-object v0, p0, Lcom/android/systemui/quicksettings/QuickSettingsTile;->mTile:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;

    iget v1, p0, Lcom/android/systemui/quicksettings/QuickSettingsTile;->mTileLayout:I

    invoke-virtual {v0, v1, p1}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->setContent(ILandroid/view/LayoutInflater;)V

    .line 53
    iget-object v0, p0, Lcom/android/systemui/quicksettings/QuickSettingsTile;->mTile:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;

    invoke-virtual {p2, v0}, Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView;->addView(Landroid/view/View;)V

    .line 54
    invoke-virtual {p0}, Lcom/android/systemui/quicksettings/QuickSettingsTile;->onPostCreate()V

    .line 55
    invoke-virtual {p0}, Lcom/android/systemui/quicksettings/QuickSettingsTile;->updateQuickSettings()V

    .line 56
    iget-object v0, p0, Lcom/android/systemui/quicksettings/QuickSettingsTile;->mTile:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    iget-object v0, p0, Lcom/android/systemui/quicksettings/QuickSettingsTile;->mTile:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;

    iget-object v1, p0, Lcom/android/systemui/quicksettings/QuickSettingsTile;->mOnLongClick:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 58
    return-void
.end method

.method startSettingsActivity(Landroid/content/Intent;)V
    .locals 1
    .parameter "intent"

    .prologue
    .line 86
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/quicksettings/QuickSettingsTile;->startSettingsActivity(Landroid/content/Intent;Z)V

    .line 87
    return-void
.end method

.method startSettingsActivity(Ljava/lang/String;)V
    .locals 1
    .parameter "action"

    .prologue
    .line 81
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 82
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/android/systemui/quicksettings/QuickSettingsTile;->startSettingsActivity(Landroid/content/Intent;)V

    .line 83
    return-void
.end method

.method updateQuickSettings()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 75
    iget-object v1, p0, Lcom/android/systemui/quicksettings/QuickSettingsTile;->mTile:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;

    const v2, 0x7f090033

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 76
    .local v0, tv:Landroid/widget/TextView;
    iget v1, p0, Lcom/android/systemui/quicksettings/QuickSettingsTile;->mDrawable:I

    invoke-virtual {v0, v3, v1, v3, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 77
    iget-object v1, p0, Lcom/android/systemui/quicksettings/QuickSettingsTile;->mLabel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    return-void
.end method

.method public updateResources()V
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/systemui/quicksettings/QuickSettingsTile;->mTile:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;

    if-eqz v0, :cond_0

    .line 70
    invoke-virtual {p0}, Lcom/android/systemui/quicksettings/QuickSettingsTile;->updateQuickSettings()V

    .line 72
    :cond_0
    return-void
.end method
