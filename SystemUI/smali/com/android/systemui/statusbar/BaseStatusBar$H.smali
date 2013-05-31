.class public Lcom/android/systemui/statusbar/BaseStatusBar$H;
.super Landroid/os/Handler;
.source "BaseStatusBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/BaseStatusBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "H"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/BaseStatusBar;


# direct methods
.method protected constructor <init>(Lcom/android/systemui/statusbar/BaseStatusBar;)V
    .locals 0
    .parameter

    .prologue
    .line 689
    iput-object p1, p0, Lcom/android/systemui/statusbar/BaseStatusBar$H;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "m"

    .prologue
    const/4 v3, 0x1

    .line 692
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 722
    :cond_0
    :goto_0
    return-void

    .line 695
    :pswitch_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar$H;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/BaseStatusBar;->toggleRecentsActivity()V

    goto :goto_0

    .line 699
    :pswitch_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.systemui.recent.action.CLOSE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 700
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.android.systemui"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 701
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar$H;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    iget-object v1, v1, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/os/UserHandle;

    const/4 v3, -0x2

    invoke-direct {v2, v3}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_0

    .line 704
    .end local v0           #intent:Landroid/content/Intent;
    :pswitch_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar$H;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/BaseStatusBar;->preloadRecentTasksList()V

    goto :goto_0

    .line 707
    :pswitch_3
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar$H;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/BaseStatusBar;->cancelPreloadingRecentTasksList()V

    goto :goto_0

    .line 711
    :pswitch_4
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar$H;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    iget-object v1, v1, Lcom/android/systemui/statusbar/BaseStatusBar;->mSearchPanelView:Lcom/android/systemui/SearchPanelView;

    if-eqz v1, :cond_0

    .line 712
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar$H;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    iget-object v1, v1, Lcom/android/systemui/statusbar/BaseStatusBar;->mSearchPanelView:Lcom/android/systemui/SearchPanelView;

    invoke-virtual {v1, v3, v3}, Lcom/android/systemui/SearchPanelView;->show(ZZ)V

    goto :goto_0

    .line 717
    :pswitch_5
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar$H;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    iget-object v1, v1, Lcom/android/systemui/statusbar/BaseStatusBar;->mSearchPanelView:Lcom/android/systemui/SearchPanelView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar$H;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    iget-object v1, v1, Lcom/android/systemui/statusbar/BaseStatusBar;->mSearchPanelView:Lcom/android/systemui/SearchPanelView;

    invoke-virtual {v1}, Lcom/android/systemui/SearchPanelView;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 718
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar$H;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    iget-object v1, v1, Lcom/android/systemui/statusbar/BaseStatusBar;->mSearchPanelView:Lcom/android/systemui/SearchPanelView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/SearchPanelView;->show(ZZ)V

    goto :goto_0

    .line 692
    :pswitch_data_0
    .packed-switch 0x3fc
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
