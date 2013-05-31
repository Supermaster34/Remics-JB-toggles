.class Lcom/android/systemui/quicksettings/VolumeTile$1;
.super Ljava/lang/Object;
.source "VolumeTile.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/quicksettings/VolumeTile;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/QuickSettingsController;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/quicksettings/VolumeTile;

.field final synthetic val$qsc:Lcom/android/systemui/statusbar/phone/QuickSettingsController;


# direct methods
.method constructor <init>(Lcom/android/systemui/quicksettings/VolumeTile;Lcom/android/systemui/statusbar/phone/QuickSettingsController;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 20
    iput-object p1, p0, Lcom/android/systemui/quicksettings/VolumeTile$1;->this$0:Lcom/android/systemui/quicksettings/VolumeTile;

    iput-object p2, p0, Lcom/android/systemui/quicksettings/VolumeTile$1;->val$qsc:Lcom/android/systemui/statusbar/phone/QuickSettingsController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "view"

    .prologue
    const/4 v3, 0x1

    .line 24
    iget-object v1, p0, Lcom/android/systemui/quicksettings/VolumeTile$1;->val$qsc:Lcom/android/systemui/statusbar/phone/QuickSettingsController;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/QuickSettingsController;->mBar:Lcom/android/systemui/statusbar/phone/PanelBar;

    invoke-virtual {v1, v3}, Lcom/android/systemui/statusbar/phone/PanelBar;->collapseAllPanels(Z)V

    .line 25
    iget-object v1, p0, Lcom/android/systemui/quicksettings/VolumeTile$1;->this$0:Lcom/android/systemui/quicksettings/VolumeTile;

    iget-object v1, v1, Lcom/android/systemui/quicksettings/VolumeTile;->mContext:Landroid/content/Context;

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 26
    .local v0, am:Landroid/media/AudioManager;
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/media/AudioManager;->adjustVolume(II)V

    .line 27
    return-void
.end method
