.class Lcom/android/systemui/statusbar/policy/PieController$4;
.super Landroid/telephony/PhoneStateListener;
.source "PieController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/PieController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/PieController;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/PieController;)V
    .locals 0
    .parameter

    .prologue
    .line 261
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/PieController$4;->this$0:Lcom/android/systemui/statusbar/policy/PieController;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 1
    .parameter "serviceState"

    .prologue
    .line 264
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/PieController$4;->this$0:Lcom/android/systemui/statusbar/policy/PieController;

    #setter for: Lcom/android/systemui/statusbar/policy/PieController;->mServiceState:Landroid/telephony/ServiceState;
    invoke-static {v0, p1}, Lcom/android/systemui/statusbar/policy/PieController;->access$1302(Lcom/android/systemui/statusbar/policy/PieController;Landroid/telephony/ServiceState;)Landroid/telephony/ServiceState;

    .line 265
    return-void
.end method
