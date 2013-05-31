.class public abstract Lcom/android/systemui/statusbar/powerwidget/MediaKeyEventButton;
.super Lcom/android/systemui/statusbar/powerwidget/PowerButton;
.source "MediaKeyEventButton.java"


# instance fields
.field private mAM:Landroid/media/AudioManager;

.field private mAS:Landroid/media/IAudioService;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 13
    invoke-direct {p0}, Lcom/android/systemui/statusbar/powerwidget/PowerButton;-><init>()V

    .line 16
    iput-object v0, p0, Lcom/android/systemui/statusbar/powerwidget/MediaKeyEventButton;->mAM:Landroid/media/AudioManager;

    .line 17
    iput-object v0, p0, Lcom/android/systemui/statusbar/powerwidget/MediaKeyEventButton;->mAS:Landroid/media/IAudioService;

    return-void
.end method


# virtual methods
.method dispatchMediaKeyWithWakeLockToAudioService(Landroid/view/KeyEvent;)V
    .locals 5
    .parameter "event"

    .prologue
    .line 27
    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 28
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/powerwidget/MediaKeyEventButton;->getAudioService()Landroid/media/IAudioService;

    move-result-object v0

    .line 29
    .local v0, audioService:Landroid/media/IAudioService;
    if-eqz v0, :cond_0

    .line 31
    :try_start_0
    invoke-interface {v0, p1}, Landroid/media/IAudioService;->dispatchMediaKeyEventUnderWakelock(Landroid/view/KeyEvent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    .end local v0           #audioService:Landroid/media/IAudioService;
    :cond_0
    :goto_0
    return-void

    .line 32
    .restart local v0       #audioService:Landroid/media/IAudioService;
    :catch_0
    move-exception v1

    .line 33
    .local v1, e:Landroid/os/RemoteException;
    const-string v2, "MediaKeyEventButton"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dispatchMediaKeyEvent threw exception "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected getAudioManager(Landroid/content/Context;)Landroid/media/AudioManager;
    .locals 1
    .parameter "context"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/systemui/statusbar/powerwidget/MediaKeyEventButton;->mAM:Landroid/media/AudioManager;

    if-nez v0, :cond_0

    .line 52
    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/powerwidget/MediaKeyEventButton;->mAM:Landroid/media/AudioManager;

    .line 55
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/powerwidget/MediaKeyEventButton;->mAM:Landroid/media/AudioManager;

    return-object v0
.end method

.method getAudioService()Landroid/media/IAudioService;
    .locals 2

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/systemui/statusbar/powerwidget/MediaKeyEventButton;->mAS:Landroid/media/IAudioService;

    if-nez v0, :cond_0

    .line 41
    const-string v0, "audio"

    invoke-static {v0}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/IAudioService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/powerwidget/MediaKeyEventButton;->mAS:Landroid/media/IAudioService;

    .line 43
    iget-object v0, p0, Lcom/android/systemui/statusbar/powerwidget/MediaKeyEventButton;->mAS:Landroid/media/IAudioService;

    if-nez v0, :cond_0

    .line 44
    const-string v0, "MediaKeyEventButton"

    const-string v1, "Unable to find IAudioService interface."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/powerwidget/MediaKeyEventButton;->mAS:Landroid/media/IAudioService;

    return-object v0
.end method

.method protected sendMediaKeyEvent(Landroid/content/Context;I)V
    .locals 8
    .parameter "context"
    .parameter "code"

    .prologue
    const/4 v5, 0x0

    .line 20
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 21
    .local v1, eventtime:J
    new-instance v0, Landroid/view/KeyEvent;

    move-wide v3, v1

    move v6, p2

    move v7, v5

    invoke-direct/range {v0 .. v7}, Landroid/view/KeyEvent;-><init>(JJIII)V

    .line 22
    .local v0, key:Landroid/view/KeyEvent;
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/powerwidget/MediaKeyEventButton;->dispatchMediaKeyWithWakeLockToAudioService(Landroid/view/KeyEvent;)V

    .line 23
    const/4 v3, 0x1

    invoke-static {v0, v3}, Landroid/view/KeyEvent;->changeAction(Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/powerwidget/MediaKeyEventButton;->dispatchMediaKeyWithWakeLockToAudioService(Landroid/view/KeyEvent;)V

    .line 24
    return-void
.end method
