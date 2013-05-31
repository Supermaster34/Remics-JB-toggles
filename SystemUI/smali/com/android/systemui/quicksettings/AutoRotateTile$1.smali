.class Lcom/android/systemui/quicksettings/AutoRotateTile$1;
.super Ljava/lang/Object;
.source "AutoRotateTile.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/quicksettings/AutoRotateTile;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/QuickSettingsController;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/quicksettings/AutoRotateTile;


# direct methods
.method constructor <init>(Lcom/android/systemui/quicksettings/AutoRotateTile;)V
    .locals 0
    .parameter

    .prologue
    .line 23
    iput-object p1, p0, Lcom/android/systemui/quicksettings/AutoRotateTile$1;->this$0:Lcom/android/systemui/quicksettings/AutoRotateTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/android/systemui/quicksettings/AutoRotateTile$1;->this$0:Lcom/android/systemui/quicksettings/AutoRotateTile;

    iget-object v0, v0, Lcom/android/systemui/quicksettings/AutoRotateTile;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/quicksettings/AutoRotateTile$1;->this$0:Lcom/android/systemui/quicksettings/AutoRotateTile;

    #calls: Lcom/android/systemui/quicksettings/AutoRotateTile;->getAutoRotation()Z
    invoke-static {v1}, Lcom/android/systemui/quicksettings/AutoRotateTile;->access$000(Lcom/android/systemui/quicksettings/AutoRotateTile;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/android/internal/view/RotationPolicy;->setRotationLock(Landroid/content/Context;Z)V

    .line 27
    return-void
.end method
