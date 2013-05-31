.class public Lcom/android/systemui/statusbar/powerwidget/SleepButton;
.super Lcom/android/systemui/statusbar/powerwidget/PowerButton;
.source "SleepButton.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/android/systemui/statusbar/powerwidget/PowerButton;-><init>()V

    const-string v0, "toggleSleepMode"

    iput-object v0, p0, Lcom/android/systemui/statusbar/powerwidget/SleepButton;->mType:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected handleLongClick(Landroid/content/Context;)Z
    .locals 2
    .parameter "context"

    .prologue
    .line 28
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.DISPLAY_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 29
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 30
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 31
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 32
    const/4 v1, 0x1

    return v1
.end method

.method protected toggleState(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 21
    const-string v1, "power"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 23
    .local v0, pm:Landroid/os/PowerManager;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->goToSleep(J)V

    .line 24
    return-void
.end method

.method protected updateState(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 15
    const v0, 0x7f020174

    iput v0, p0, Lcom/android/systemui/statusbar/powerwidget/SleepButton;->mIcon:I

    .line 16
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/systemui/statusbar/powerwidget/SleepButton;->mState:I

    .line 17
    return-void
.end method
