.class Lcom/android/systemui/quicksettings/LteTile$1;
.super Ljava/lang/Object;
.source "LteTile.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/quicksettings/LteTile;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/QuickSettingsController;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/quicksettings/LteTile;


# direct methods
.method constructor <init>(Lcom/android/systemui/quicksettings/LteTile;)V
    .locals 0
    .parameter

    .prologue
    .line 29
    iput-object p1, p0, Lcom/android/systemui/quicksettings/LteTile$1;->this$0:Lcom/android/systemui/quicksettings/LteTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/systemui/quicksettings/LteTile$1;->this$0:Lcom/android/systemui/quicksettings/LteTile;

    #calls: Lcom/android/systemui/quicksettings/LteTile;->toggleLteState()V
    invoke-static {v0}, Lcom/android/systemui/quicksettings/LteTile;->access$000(Lcom/android/systemui/quicksettings/LteTile;)V

    .line 33
    iget-object v0, p0, Lcom/android/systemui/quicksettings/LteTile$1;->this$0:Lcom/android/systemui/quicksettings/LteTile;

    invoke-virtual {v0}, Lcom/android/systemui/quicksettings/LteTile;->updateResources()V

    .line 34
    return-void
.end method
