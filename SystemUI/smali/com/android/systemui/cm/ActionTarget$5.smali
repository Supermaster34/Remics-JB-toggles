.class Lcom/android/systemui/cm/ActionTarget$5;
.super Ljava/lang/Object;
.source "ActionTarget.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/cm/ActionTarget;->takeScreenshot()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/cm/ActionTarget;


# direct methods
.method constructor <init>(Lcom/android/systemui/cm/ActionTarget;)V
    .locals 0
    .parameter

    .prologue
    .line 265
    iput-object p1, p0, Lcom/android/systemui/cm/ActionTarget$5;->this$0:Lcom/android/systemui/cm/ActionTarget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 8
    .parameter "name"
    .parameter "service"

    .prologue
    .line 268
    iget-object v4, p0, Lcom/android/systemui/cm/ActionTarget$5;->this$0:Lcom/android/systemui/cm/ActionTarget;

    #getter for: Lcom/android/systemui/cm/ActionTarget;->mScreenshotLock:Ljava/lang/Object;
    invoke-static {v4}, Lcom/android/systemui/cm/ActionTarget;->access$200(Lcom/android/systemui/cm/ActionTarget;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    .line 269
    :try_start_0
    iget-object v4, p0, Lcom/android/systemui/cm/ActionTarget$5;->this$0:Lcom/android/systemui/cm/ActionTarget;

    #getter for: Lcom/android/systemui/cm/ActionTarget;->mScreenshotConnection:Landroid/content/ServiceConnection;
    invoke-static {v4}, Lcom/android/systemui/cm/ActionTarget;->access$300(Lcom/android/systemui/cm/ActionTarget;)Landroid/content/ServiceConnection;

    move-result-object v4

    if-eq v4, p0, :cond_0

    .line 270
    monitor-exit v5

    .line 303
    :goto_0
    return-void

    .line 272
    :cond_0
    new-instance v1, Landroid/os/Messenger;

    invoke-direct {v1, p2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    .line 273
    .local v1, messenger:Landroid/os/Messenger;
    const/4 v4, 0x0

    const/4 v6, 0x1

    invoke-static {v4, v6}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v2

    .line 274
    .local v2, msg:Landroid/os/Message;
    move-object v3, p0

    .line 275
    .local v3, myConn:Landroid/content/ServiceConnection;
    new-instance v0, Lcom/android/systemui/cm/ActionTarget$5$1;

    iget-object v4, p0, Lcom/android/systemui/cm/ActionTarget$5;->this$0:Lcom/android/systemui/cm/ActionTarget;

    #getter for: Lcom/android/systemui/cm/ActionTarget;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/systemui/cm/ActionTarget;->access$400(Lcom/android/systemui/cm/ActionTarget;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v0, p0, v4, v3}, Lcom/android/systemui/cm/ActionTarget$5$1;-><init>(Lcom/android/systemui/cm/ActionTarget$5;Landroid/os/Looper;Landroid/content/ServiceConnection;)V

    .line 287
    .local v0, h:Landroid/os/Handler;
    new-instance v4, Landroid/os/Messenger;

    invoke-direct {v4, v0}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v4, v2, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 288
    const/4 v4, 0x0

    iput v4, v2, Landroid/os/Message;->arg2:I

    iput v4, v2, Landroid/os/Message;->arg1:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 291
    const-wide/16 v6, 0x3e8

    :try_start_1
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 298
    :goto_1
    :try_start_2
    invoke-virtual {v1, v2}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    .line 302
    :goto_2
    :try_start_3
    monitor-exit v5

    goto :goto_0

    .end local v0           #h:Landroid/os/Handler;
    .end local v1           #messenger:Landroid/os/Messenger;
    .end local v2           #msg:Landroid/os/Message;
    .end local v3           #myConn:Landroid/content/ServiceConnection;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v4

    .line 292
    .restart local v0       #h:Landroid/os/Handler;
    .restart local v1       #messenger:Landroid/os/Messenger;
    .restart local v2       #msg:Landroid/os/Message;
    .restart local v3       #myConn:Landroid/content/ServiceConnection;
    :catch_0
    move-exception v4

    goto :goto_1

    .line 299
    :catch_1
    move-exception v4

    goto :goto_2
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 307
    return-void
.end method
