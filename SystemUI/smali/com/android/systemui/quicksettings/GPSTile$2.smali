.class Lcom/android/systemui/quicksettings/GPSTile$2;
.super Ljava/lang/Object;
.source "GPSTile.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/quicksettings/GPSTile;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/QuickSettingsController;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/quicksettings/GPSTile;


# direct methods
.method constructor <init>(Lcom/android/systemui/quicksettings/GPSTile;)V
    .locals 0
    .parameter

    .prologue
    .line 45
    iput-object p1, p0, Lcom/android/systemui/quicksettings/GPSTile$2;->this$0:Lcom/android/systemui/quicksettings/GPSTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 2
    .parameter "v"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/systemui/quicksettings/GPSTile$2;->this$0:Lcom/android/systemui/quicksettings/GPSTile;

    const-string v1, "android.settings.LOCATION_SOURCE_SETTINGS"

    invoke-virtual {v0, v1}, Lcom/android/systemui/quicksettings/GPSTile;->startSettingsActivity(Ljava/lang/String;)V

    .line 49
    const/4 v0, 0x1

    return v0
.end method
