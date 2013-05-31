.class Lcom/android/systemui/quicksettings/GPSTile$1;
.super Ljava/lang/Object;
.source "GPSTile.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 38
    iput-object p1, p0, Lcom/android/systemui/quicksettings/GPSTile$1;->this$0:Lcom/android/systemui/quicksettings/GPSTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/systemui/quicksettings/GPSTile$1;->this$0:Lcom/android/systemui/quicksettings/GPSTile;

    iget-object v1, v0, Lcom/android/systemui/quicksettings/GPSTile;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "gps"

    iget-object v0, p0, Lcom/android/systemui/quicksettings/GPSTile$1;->this$0:Lcom/android/systemui/quicksettings/GPSTile;

    #getter for: Lcom/android/systemui/quicksettings/GPSTile;->enabled:Z
    invoke-static {v0}, Lcom/android/systemui/quicksettings/GPSTile;->access$000(Lcom/android/systemui/quicksettings/GPSTile;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 42
    return-void

    .line 41
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
