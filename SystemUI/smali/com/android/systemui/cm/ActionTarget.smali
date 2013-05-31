.class public Lcom/android/systemui/cm/ActionTarget;
.super Ljava/lang/Object;
.source "ActionTarget.java"


# instance fields
.field private mAm:Landroid/media/AudioManager;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mInjectKeyCode:I

.field final mInjectKeyDownRunnable:Ljava/lang/Runnable;

.field final mInjectKeyUpRunnable:Ljava/lang/Runnable;

.field final mKillRunnable:Ljava/lang/Runnable;

.field private mScreenshotConnection:Landroid/content/ServiceConnection;

.field private final mScreenshotLock:Ljava/lang/Object;

.field final mScreenshotTimeout:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/cm/ActionTarget;->mScreenshotLock:Ljava/lang/Object;

    .line 67
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/cm/ActionTarget;->mScreenshotConnection:Landroid/content/ServiceConnection;

    .line 199
    new-instance v0, Lcom/android/systemui/cm/ActionTarget$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/cm/ActionTarget$1;-><init>(Lcom/android/systemui/cm/ActionTarget;)V

    iput-object v0, p0, Lcom/android/systemui/cm/ActionTarget;->mInjectKeyDownRunnable:Ljava/lang/Runnable;

    .line 209
    new-instance v0, Lcom/android/systemui/cm/ActionTarget$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/cm/ActionTarget$2;-><init>(Lcom/android/systemui/cm/ActionTarget;)V

    iput-object v0, p0, Lcom/android/systemui/cm/ActionTarget;->mInjectKeyUpRunnable:Ljava/lang/Runnable;

    .line 219
    new-instance v0, Lcom/android/systemui/cm/ActionTarget$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/cm/ActionTarget$3;-><init>(Lcom/android/systemui/cm/ActionTarget;)V

    iput-object v0, p0, Lcom/android/systemui/cm/ActionTarget;->mKillRunnable:Ljava/lang/Runnable;

    .line 247
    new-instance v0, Lcom/android/systemui/cm/ActionTarget$4;

    invoke-direct {v0, p0}, Lcom/android/systemui/cm/ActionTarget$4;-><init>(Lcom/android/systemui/cm/ActionTarget;)V

    iput-object v0, p0, Lcom/android/systemui/cm/ActionTarget;->mScreenshotTimeout:Ljava/lang/Runnable;

    .line 70
    iput-object p1, p0, Lcom/android/systemui/cm/ActionTarget;->mContext:Landroid/content/Context;

    .line 71
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/cm/ActionTarget;->mHandler:Landroid/os/Handler;

    .line 72
    iget-object v0, p0, Lcom/android/systemui/cm/ActionTarget;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/systemui/cm/ActionTarget;->mAm:Landroid/media/AudioManager;

    .line 73
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/cm/ActionTarget;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget v0, p0, Lcom/android/systemui/cm/ActionTarget;->mInjectKeyCode:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/systemui/cm/ActionTarget;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/systemui/cm/ActionTarget;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/cm/ActionTarget;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/systemui/cm/ActionTarget;->mScreenshotLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/systemui/cm/ActionTarget;)Landroid/content/ServiceConnection;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/systemui/cm/ActionTarget;->mScreenshotConnection:Landroid/content/ServiceConnection;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/systemui/cm/ActionTarget;Landroid/content/ServiceConnection;)Landroid/content/ServiceConnection;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    iput-object p1, p0, Lcom/android/systemui/cm/ActionTarget;->mScreenshotConnection:Landroid/content/ServiceConnection;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/systemui/cm/ActionTarget;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/systemui/cm/ActionTarget;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;
    .locals 1

    .prologue
    .line 168
    const-string v0, "statusbar"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    return-object v0
.end method

.method private injectKeyDelayed(I)V
    .locals 4
    .parameter "keycode"

    .prologue
    .line 192
    iput p1, p0, Lcom/android/systemui/cm/ActionTarget;->mInjectKeyCode:I

    .line 193
    iget-object v0, p0, Lcom/android/systemui/cm/ActionTarget;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/cm/ActionTarget;->mInjectKeyDownRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 194
    iget-object v0, p0, Lcom/android/systemui/cm/ActionTarget;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/cm/ActionTarget;->mInjectKeyUpRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 195
    iget-object v0, p0, Lcom/android/systemui/cm/ActionTarget;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/cm/ActionTarget;->mInjectKeyDownRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 196
    iget-object v0, p0, Lcom/android/systemui/cm/ActionTarget;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/cm/ActionTarget;->mInjectKeyUpRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 197
    return-void
.end method

.method private switchToNormalRingerMode()V
    .locals 3

    .prologue
    .line 184
    iget-object v1, p0, Lcom/android/systemui/cm/ActionTarget;->mAm:Landroid/media/AudioManager;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 186
    new-instance v0, Landroid/media/ToneGenerator;

    const/4 v1, 0x5

    const/16 v2, 0x55

    invoke-direct {v0, v1, v2}, Landroid/media/ToneGenerator;-><init>(II)V

    .line 188
    .local v0, tg:Landroid/media/ToneGenerator;
    const/16 v1, 0x18

    invoke-virtual {v0, v1}, Landroid/media/ToneGenerator;->startTone(I)Z

    .line 189
    return-void
.end method

.method private switchToSilentMode()V
    .locals 2

    .prologue
    .line 173
    iget-object v0, p0, Lcom/android/systemui/cm/ActionTarget;->mAm:Landroid/media/AudioManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 174
    return-void
.end method

.method private switchToVibrateMode()V
    .locals 3

    .prologue
    .line 177
    iget-object v1, p0, Lcom/android/systemui/cm/ActionTarget;->mAm:Landroid/media/AudioManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 179
    iget-object v1, p0, Lcom/android/systemui/cm/ActionTarget;->mContext:Landroid/content/Context;

    const-string v2, "vibrator"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    .line 180
    .local v0, vibrator:Landroid/os/Vibrator;
    const-wide/16 v1, 0x32

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    .line 181
    return-void
.end method

.method private takeScreenshot()V
    .locals 5

    .prologue
    .line 260
    iget-object v1, p0, Lcom/android/systemui/cm/ActionTarget;->mScreenshotLock:Ljava/lang/Object;

    monitor-enter v1

    .line 261
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/cm/ActionTarget;->mScreenshotConnection:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_0

    .line 262
    monitor-exit v1

    .line 315
    :goto_0
    return-void

    .line 264
    :cond_0
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/systemui/cm/ActionTarget;->mContext:Landroid/content/Context;

    const-class v3, Lcom/android/systemui/screenshot/TakeScreenshotService;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 265
    new-instance v2, Lcom/android/systemui/cm/ActionTarget$5;

    invoke-direct {v2, p0}, Lcom/android/systemui/cm/ActionTarget$5;-><init>(Lcom/android/systemui/cm/ActionTarget;)V

    .line 310
    iget-object v3, p0, Lcom/android/systemui/cm/ActionTarget;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/systemui/cm/ActionTarget;->mContext:Landroid/content/Context;

    const/4 v4, 0x1

    invoke-virtual {v3, v0, v2, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 311
    iput-object v2, p0, Lcom/android/systemui/cm/ActionTarget;->mScreenshotConnection:Landroid/content/ServiceConnection;

    .line 312
    iget-object v0, p0, Lcom/android/systemui/cm/ActionTarget;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/systemui/cm/ActionTarget;->mScreenshotTimeout:Ljava/lang/Runnable;

    const-wide/16 v3, 0x2710

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 314
    :cond_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public launchAction(Ljava/lang/String;)Z
    .locals 7
    .parameter "action"

    .prologue
    const/high16 v6, 0x1000

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 77
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/app/IActivityManager;->dismissKeyguardOnNextActivity()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_4

    .line 82
    :goto_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "none"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    move v3, v4

    .line 163
    :goto_1
    return v3

    .line 84
    :cond_1
    const-string v5, "recents"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 86
    :try_start_1
    invoke-direct {p0}, Lcom/android/systemui/cm/ActionTarget;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/internal/statusbar/IStatusBarService;->toggleRecentApps()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 87
    :catch_0
    move-exception v4

    goto :goto_1

    .line 91
    :cond_2
    const-string v5, "home"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 92
    const/4 v4, 0x3

    invoke-direct {p0, v4}, Lcom/android/systemui/cm/ActionTarget;->injectKeyDelayed(I)V

    goto :goto_1

    .line 94
    :cond_3
    const-string v5, "back"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 95
    const/4 v4, 0x4

    invoke-direct {p0, v4}, Lcom/android/systemui/cm/ActionTarget;->injectKeyDelayed(I)V

    goto :goto_1

    .line 97
    :cond_4
    const-string v5, "menu"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 98
    const/16 v4, 0x52

    invoke-direct {p0, v4}, Lcom/android/systemui/cm/ActionTarget;->injectKeyDelayed(I)V

    goto :goto_1

    .line 100
    :cond_5
    const-string v5, "power"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 101
    const/16 v4, 0x1a

    invoke-direct {p0, v4}, Lcom/android/systemui/cm/ActionTarget;->injectKeyDelayed(I)V

    goto :goto_1

    .line 103
    :cond_6
    const-string v5, "ime"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 104
    iget-object v4, p0, Lcom/android/systemui/cm/ActionTarget;->mContext:Landroid/content/Context;

    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.settings.SHOW_INPUT_METHOD_PICKER"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_1

    .line 106
    :cond_7
    const-string v5, "screenshot"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 107
    invoke-direct {p0}, Lcom/android/systemui/cm/ActionTarget;->takeScreenshot()V

    goto :goto_1

    .line 109
    :cond_8
    const-string v5, "assist"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 110
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.ASSIST"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 111
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {v1, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 112
    iget-object v4, p0, Lcom/android/systemui/cm/ActionTarget;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 114
    .end local v1           #intent:Landroid/content/Intent;
    :cond_9
    const-string v5, "kill"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 115
    iget-object v4, p0, Lcom/android/systemui/cm/ActionTarget;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/systemui/cm/ActionTarget;->mKillRunnable:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_1

    .line 117
    :cond_a
    const-string v5, "ringVibrate"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 118
    iget-object v4, p0, Lcom/android/systemui/cm/ActionTarget;->mAm:Landroid/media/AudioManager;

    invoke-virtual {v4}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v4

    if-eq v4, v3, :cond_b

    .line 119
    invoke-direct {p0}, Lcom/android/systemui/cm/ActionTarget;->switchToVibrateMode()V

    goto/16 :goto_1

    .line 121
    :cond_b
    invoke-direct {p0}, Lcom/android/systemui/cm/ActionTarget;->switchToNormalRingerMode()V

    goto/16 :goto_1

    .line 124
    :cond_c
    const-string v5, "ringSilent"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 125
    iget-object v4, p0, Lcom/android/systemui/cm/ActionTarget;->mAm:Landroid/media/AudioManager;

    invoke-virtual {v4}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v4

    if-eqz v4, :cond_d

    .line 126
    invoke-direct {p0}, Lcom/android/systemui/cm/ActionTarget;->switchToSilentMode()V

    goto/16 :goto_1

    .line 128
    :cond_d
    invoke-direct {p0}, Lcom/android/systemui/cm/ActionTarget;->switchToNormalRingerMode()V

    goto/16 :goto_1

    .line 131
    :cond_e
    const-string v5, "ringVibrateSilent"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 132
    iget-object v4, p0, Lcom/android/systemui/cm/ActionTarget;->mAm:Landroid/media/AudioManager;

    invoke-virtual {v4}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v2

    .line 133
    .local v2, ringerMode:I
    const/4 v4, 0x2

    if-ne v2, v4, :cond_f

    .line 134
    invoke-direct {p0}, Lcom/android/systemui/cm/ActionTarget;->switchToVibrateMode()V

    goto/16 :goto_1

    .line 135
    :cond_f
    if-ne v2, v3, :cond_10

    .line 136
    invoke-direct {p0}, Lcom/android/systemui/cm/ActionTarget;->switchToSilentMode()V

    goto/16 :goto_1

    .line 138
    :cond_10
    invoke-direct {p0}, Lcom/android/systemui/cm/ActionTarget;->switchToNormalRingerMode()V

    goto/16 :goto_1

    .line 141
    .end local v2           #ringerMode:I
    :cond_11
    const-string v5, "notifications"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_12

    .line 143
    :try_start_2
    invoke-direct {p0}, Lcom/android/systemui/cm/ActionTarget;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/internal/statusbar/IStatusBarService;->expandNotificationsPanel()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_1

    .line 144
    :catch_1
    move-exception v4

    goto/16 :goto_1

    .line 148
    :cond_12
    const-string v5, "torch"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_13

    .line 149
    new-instance v1, Landroid/content/Intent;

    const-string v4, "net.cactii.flash2.TOGGLE_FLASHLIGHT"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 150
    .restart local v1       #intent:Landroid/content/Intent;
    iget-object v4, p0, Lcom/android/systemui/cm/ActionTarget;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 154
    .end local v1           #intent:Landroid/content/Intent;
    :cond_13
    const/4 v5, 0x0

    :try_start_3
    invoke-static {p1, v5}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    .line 155
    .restart local v1       #intent:Landroid/content/Intent;
    const/high16 v5, 0x1000

    invoke-virtual {v1, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 156
    iget-object v5, p0, Lcom/android/systemui/cm/ActionTarget;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_3
    .catch Ljava/net/URISyntaxException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_1

    .line 158
    .end local v1           #intent:Landroid/content/Intent;
    :catch_2
    move-exception v0

    .line 159
    .local v0, e:Ljava/net/URISyntaxException;
    const-string v3, "ActionTarget"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "URISyntaxException: ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0           #e:Ljava/net/URISyntaxException;
    :goto_2
    move v3, v4

    .line 163
    goto/16 :goto_1

    .line 160
    :catch_3
    move-exception v0

    .line 161
    .local v0, e:Landroid/content/ActivityNotFoundException;
    const-string v3, "ActionTarget"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ActivityNotFound: ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 78
    .end local v0           #e:Landroid/content/ActivityNotFoundException;
    :catch_4
    move-exception v5

    goto/16 :goto_0
.end method
