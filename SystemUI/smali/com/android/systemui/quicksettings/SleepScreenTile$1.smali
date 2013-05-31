.class Lcom/android/systemui/quicksettings/SleepScreenTile$1;
.super Ljava/lang/Object;
.source "SleepScreenTile.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 22
    iput-object p1, p0, Lcom/android/systemui/quicksettings/SleepScreenTile$1;->this$0:Lcom/android/systemui/quicksettings/SleepScreenTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/android/systemui/quicksettings/SleepScreenTile$1;->this$0:Lcom/android/systemui/quicksettings/SleepScreenTile;

    #getter for: Lcom/android/systemui/quicksettings/SleepScreenTile;->pm:Landroid/os/PowerManager;
    invoke-static {v0}, Lcom/android/systemui/quicksettings/SleepScreenTile;->access$000(Lcom/android/systemui/quicksettings/SleepScreenTile;)Landroid/os/PowerManager;

    move-result-object v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->goToSleep(J)V

    .line 26
    return-void
.end method
