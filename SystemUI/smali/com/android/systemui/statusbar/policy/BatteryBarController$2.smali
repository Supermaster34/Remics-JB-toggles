.class Lcom/android/systemui/statusbar/policy/BatteryBarController$2;
.super Ljava/lang/Object;
.source "BatteryBarController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/policy/BatteryBarController;->onConfigurationChanged(Landroid/content/res/Configuration;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/BatteryBarController;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/BatteryBarController;)V
    .locals 0
    .parameter

    .prologue
    .line 137
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/BatteryBarController$2;->this$0:Lcom/android/systemui/statusbar/policy/BatteryBarController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BatteryBarController$2;->this$0:Lcom/android/systemui/statusbar/policy/BatteryBarController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/BatteryBarController;->updateSettings()V

    .line 141
    return-void
.end method
