.class Lcom/android/systemui/quicksettings/ScreenTimeoutTile$1;
.super Ljava/lang/Object;
.source "ScreenTimeoutTile.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/quicksettings/ScreenTimeoutTile;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/QuickSettingsController;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/quicksettings/ScreenTimeoutTile;


# direct methods
.method constructor <init>(Lcom/android/systemui/quicksettings/ScreenTimeoutTile;)V
    .locals 0
    .parameter

    .prologue
    .line 34
    iput-object p1, p0, Lcom/android/systemui/quicksettings/ScreenTimeoutTile$1;->this$0:Lcom/android/systemui/quicksettings/ScreenTimeoutTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/systemui/quicksettings/ScreenTimeoutTile$1;->this$0:Lcom/android/systemui/quicksettings/ScreenTimeoutTile;

    invoke-virtual {v0}, Lcom/android/systemui/quicksettings/ScreenTimeoutTile;->toggleState()V

    .line 38
    iget-object v0, p0, Lcom/android/systemui/quicksettings/ScreenTimeoutTile$1;->this$0:Lcom/android/systemui/quicksettings/ScreenTimeoutTile;

    invoke-virtual {v0}, Lcom/android/systemui/quicksettings/ScreenTimeoutTile;->updateResources()V

    .line 39
    return-void
.end method
