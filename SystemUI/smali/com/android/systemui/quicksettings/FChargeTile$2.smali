.class Lcom/android/systemui/quicksettings/FChargeTile$2;
.super Ljava/lang/Object;
.source "FChargeTile.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/quicksettings/FChargeTile;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/QuickSettingsController;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/quicksettings/FChargeTile;


# direct methods
.method constructor <init>(Lcom/android/systemui/quicksettings/FChargeTile;)V
    .locals 0
    .parameter

    .prologue
    .line 75
    iput-object p1, p0, Lcom/android/systemui/quicksettings/FChargeTile$2;->this$0:Lcom/android/systemui/quicksettings/FChargeTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 1
    .parameter "v"

    .prologue
    .line 78
    const/4 v0, 0x1

    return v0
.end method
