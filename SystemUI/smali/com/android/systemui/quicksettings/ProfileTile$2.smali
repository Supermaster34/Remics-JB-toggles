.class Lcom/android/systemui/quicksettings/ProfileTile$2;
.super Ljava/lang/Object;
.source "ProfileTile.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/quicksettings/ProfileTile;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/QuickSettingsController;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/quicksettings/ProfileTile;


# direct methods
.method constructor <init>(Lcom/android/systemui/quicksettings/ProfileTile;)V
    .locals 0
    .parameter

    .prologue
    .line 54
    iput-object p1, p0, Lcom/android/systemui/quicksettings/ProfileTile$2;->this$0:Lcom/android/systemui/quicksettings/ProfileTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 2
    .parameter "v"

    .prologue
    .line 57
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.PROFILES_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 58
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/systemui/quicksettings/ProfileTile$2;->this$0:Lcom/android/systemui/quicksettings/ProfileTile;

    invoke-virtual {v1, v0}, Lcom/android/systemui/quicksettings/ProfileTile;->startSettingsActivity(Landroid/content/Intent;)V

    .line 59
    const/4 v1, 0x1

    return v1
.end method
