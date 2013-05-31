.class Lcom/android/systemui/quicksettings/SleepScreenTile$2;
.super Ljava/lang/Object;
.source "SleepScreenTile.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/quicksettings/SleepScreenTile;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/QuickSettingsController;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/quicksettings/SleepScreenTile;


# direct methods
.method constructor <init>(Lcom/android/systemui/quicksettings/SleepScreenTile;)V
    .locals 0
    .parameter

    .prologue
    .line 28
    iput-object p1, p0, Lcom/android/systemui/quicksettings/SleepScreenTile$2;->this$0:Lcom/android/systemui/quicksettings/SleepScreenTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 2
    .parameter "v"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/systemui/quicksettings/SleepScreenTile$2;->this$0:Lcom/android/systemui/quicksettings/SleepScreenTile;

    const-string v1, "android.settings.DISPLAY_SETTINGS"

    invoke-virtual {v0, v1}, Lcom/android/systemui/quicksettings/SleepScreenTile;->startSettingsActivity(Ljava/lang/String;)V

    .line 33
    const/4 v0, 0x1

    return v0
.end method
