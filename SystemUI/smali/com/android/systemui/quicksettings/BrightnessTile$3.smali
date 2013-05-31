.class Lcom/android/systemui/quicksettings/BrightnessTile$3;
.super Ljava/lang/Object;
.source "BrightnessTile.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/quicksettings/BrightnessTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/quicksettings/BrightnessTile;


# direct methods
.method constructor <init>(Lcom/android/systemui/quicksettings/BrightnessTile;)V
    .locals 0
    .parameter

    .prologue
    .line 100
    iput-object p1, p0, Lcom/android/systemui/quicksettings/BrightnessTile$3;->this$0:Lcom/android/systemui/quicksettings/BrightnessTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/systemui/quicksettings/BrightnessTile$3;->this$0:Lcom/android/systemui/quicksettings/BrightnessTile;

    #getter for: Lcom/android/systemui/quicksettings/BrightnessTile;->mBrightnessDialog:Landroid/app/Dialog;
    invoke-static {v0}, Lcom/android/systemui/quicksettings/BrightnessTile;->access$100(Lcom/android/systemui/quicksettings/BrightnessTile;)Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/quicksettings/BrightnessTile$3;->this$0:Lcom/android/systemui/quicksettings/BrightnessTile;

    #getter for: Lcom/android/systemui/quicksettings/BrightnessTile;->mBrightnessDialog:Landroid/app/Dialog;
    invoke-static {v0}, Lcom/android/systemui/quicksettings/BrightnessTile;->access$100(Lcom/android/systemui/quicksettings/BrightnessTile;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/android/systemui/quicksettings/BrightnessTile$3;->this$0:Lcom/android/systemui/quicksettings/BrightnessTile;

    #getter for: Lcom/android/systemui/quicksettings/BrightnessTile;->mBrightnessDialog:Landroid/app/Dialog;
    invoke-static {v0}, Lcom/android/systemui/quicksettings/BrightnessTile;->access$100(Lcom/android/systemui/quicksettings/BrightnessTile;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 106
    :cond_0
    return-void
.end method
