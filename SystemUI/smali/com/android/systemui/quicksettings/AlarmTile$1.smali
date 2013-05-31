.class Lcom/android/systemui/quicksettings/AlarmTile$1;
.super Ljava/lang/Object;
.source "AlarmTile.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/quicksettings/AlarmTile;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/QuickSettingsController;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/quicksettings/AlarmTile;


# direct methods
.method constructor <init>(Lcom/android/systemui/quicksettings/AlarmTile;)V
    .locals 0
    .parameter

    .prologue
    .line 24
    iput-object p1, p0, Lcom/android/systemui/quicksettings/AlarmTile$1;->this$0:Lcom/android/systemui/quicksettings/AlarmTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 27
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 28
    .local v0, intent:Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.deskclock"

    const-string v3, "com.android.deskclock.AlarmClock"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 31
    iget-object v1, p0, Lcom/android/systemui/quicksettings/AlarmTile$1;->this$0:Lcom/android/systemui/quicksettings/AlarmTile;

    invoke-virtual {v1, v0}, Lcom/android/systemui/quicksettings/AlarmTile;->startSettingsActivity(Landroid/content/Intent;)V

    .line 32
    return-void
.end method
