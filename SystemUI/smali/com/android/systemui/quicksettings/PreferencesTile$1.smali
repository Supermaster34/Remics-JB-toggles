.class Lcom/android/systemui/quicksettings/PreferencesTile$1;
.super Ljava/lang/Object;
.source "PreferencesTile.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/quicksettings/PreferencesTile;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/QuickSettingsController;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/quicksettings/PreferencesTile;


# direct methods
.method constructor <init>(Lcom/android/systemui/quicksettings/PreferencesTile;)V
    .locals 0
    .parameter

    .prologue
    .line 16
    iput-object p1, p0, Lcom/android/systemui/quicksettings/PreferencesTile$1;->this$0:Lcom/android/systemui/quicksettings/PreferencesTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 20
    iget-object v0, p0, Lcom/android/systemui/quicksettings/PreferencesTile$1;->this$0:Lcom/android/systemui/quicksettings/PreferencesTile;

    const-string v1, "android.settings.SETTINGS"

    invoke-virtual {v0, v1}, Lcom/android/systemui/quicksettings/PreferencesTile;->startSettingsActivity(Ljava/lang/String;)V

    .line 21
    return-void
.end method
