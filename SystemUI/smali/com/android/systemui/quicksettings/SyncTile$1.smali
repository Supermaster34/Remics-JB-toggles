.class Lcom/android/systemui/quicksettings/SyncTile$1;
.super Ljava/lang/Object;
.source "SyncTile.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/quicksettings/SyncTile;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/QuickSettingsController;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/quicksettings/SyncTile;


# direct methods
.method constructor <init>(Lcom/android/systemui/quicksettings/SyncTile;)V
    .locals 0
    .parameter

    .prologue
    .line 22
    iput-object p1, p0, Lcom/android/systemui/quicksettings/SyncTile$1;->this$0:Lcom/android/systemui/quicksettings/SyncTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/android/systemui/quicksettings/SyncTile$1;->this$0:Lcom/android/systemui/quicksettings/SyncTile;

    invoke-virtual {v0}, Lcom/android/systemui/quicksettings/SyncTile;->toggleState()V

    .line 26
    iget-object v0, p0, Lcom/android/systemui/quicksettings/SyncTile$1;->this$0:Lcom/android/systemui/quicksettings/SyncTile;

    invoke-virtual {v0}, Lcom/android/systemui/quicksettings/SyncTile;->updateResources()V

    .line 27
    return-void
.end method
