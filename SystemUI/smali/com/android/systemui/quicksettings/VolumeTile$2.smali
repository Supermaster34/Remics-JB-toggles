.class Lcom/android/systemui/quicksettings/VolumeTile$2;
.super Ljava/lang/Object;
.source "VolumeTile.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


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


# direct methods
.method constructor <init>(Lcom/android/systemui/quicksettings/VolumeTile;)V
    .locals 0
    .parameter

    .prologue
    .line 30
    iput-object p1, p0, Lcom/android/systemui/quicksettings/VolumeTile$2;->this$0:Lcom/android/systemui/quicksettings/VolumeTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 2
    .parameter "view"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/systemui/quicksettings/VolumeTile$2;->this$0:Lcom/android/systemui/quicksettings/VolumeTile;

    const-string v1, "android.settings.SOUND_SETTINGS"

    invoke-virtual {v0, v1}, Lcom/android/systemui/quicksettings/VolumeTile;->startSettingsActivity(Ljava/lang/String;)V

    .line 35
    const/4 v0, 0x1

    return v0
.end method
