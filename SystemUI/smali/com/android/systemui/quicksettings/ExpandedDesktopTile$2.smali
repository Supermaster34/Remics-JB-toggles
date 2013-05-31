.class Lcom/android/systemui/quicksettings/ExpandedDesktopTile$2;
.super Ljava/lang/Object;
.source "ExpandedDesktopTile.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/quicksettings/ExpandedDesktopTile;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/QuickSettingsController;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/quicksettings/ExpandedDesktopTile;


# direct methods
.method constructor <init>(Lcom/android/systemui/quicksettings/ExpandedDesktopTile;)V
    .locals 0
    .parameter

    .prologue
    .line 32
    iput-object p1, p0, Lcom/android/systemui/quicksettings/ExpandedDesktopTile$2;->this$0:Lcom/android/systemui/quicksettings/ExpandedDesktopTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 3
    .parameter "v"

    .prologue
    .line 35
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 36
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.Settings$SystemSettingsActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 38
    iget-object v1, p0, Lcom/android/systemui/quicksettings/ExpandedDesktopTile$2;->this$0:Lcom/android/systemui/quicksettings/ExpandedDesktopTile;

    invoke-virtual {v1, v0}, Lcom/android/systemui/quicksettings/ExpandedDesktopTile;->startSettingsActivity(Landroid/content/Intent;)V

    .line 39
    const/4 v1, 0x1

    return v1
.end method
