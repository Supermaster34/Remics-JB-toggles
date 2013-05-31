.class Lcom/android/systemui/statusbar/phone/QuickSettingsController$1;
.super Landroid/os/Handler;
.source "QuickSettingsController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/QuickSettingsController;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView;Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/QuickSettingsController;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/QuickSettingsController;)V
    .locals 0
    .parameter

    .prologue
    .line 136
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsController$1;->this$0:Lcom/android/systemui/statusbar/phone/QuickSettingsController;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 139
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 141
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 146
    :goto_0
    return-void

    .line 143
    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsController$1;->this$0:Lcom/android/systemui/statusbar/phone/QuickSettingsController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/QuickSettingsController;->setupQuickSettings()V

    goto :goto_0

    .line 141
    nop

    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_0
    .end packed-switch
.end method
