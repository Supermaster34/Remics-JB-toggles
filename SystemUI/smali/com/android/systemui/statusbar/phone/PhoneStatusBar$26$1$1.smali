.class Lcom/android/systemui/statusbar/phone/PhoneStatusBar$26$1$1;
.super Ljava/lang/Object;
.source "PhoneStatusBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/PhoneStatusBar$26$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$26$1;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar$26$1;)V
    .locals 0
    .parameter

    .prologue
    .line 2575
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$26$1$1;->this$2:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$26$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 2582
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$26$1$1;->this$2:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$26$1;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$26$1;->this$1:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$26;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$26;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    #getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mPile:Lcom/android/systemui/statusbar/policy/NotificationRowLayout;
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$2700(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;->setViewRemoval(Z)V

    .line 2583
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$26$1$1;->this$2:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$26$1;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$26$1;->this$1:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$26;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$26;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    #getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$2800(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/statusbar/IStatusBarService;->onClearAllNotifications()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2585
    :goto_0
    return-void

    .line 2584
    :catch_0
    move-exception v0

    goto :goto_0
.end method
