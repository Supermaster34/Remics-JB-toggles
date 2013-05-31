.class public Lcom/android/systemui/statusbar/policy/PieController;
.super Ljava/lang/Object;
.source "PieController.java"

# interfaces
.implements Lcom/android/systemui/statusbar/BaseStatusBar$NavigationBarCallback;
.implements Lcom/android/systemui/statusbar/pie/PieItem$PieOnClickListener;
.implements Lcom/android/systemui/statusbar/pie/PieItem$PieOnLongClickListener;
.implements Lcom/android/systemui/statusbar/pie/PieView$OnExitListener;
.implements Lcom/android/systemui/statusbar/pie/PieView$OnSnapListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/PieController$SettingsObserver;
    }
.end annotation


# static fields
.field private static final SEARCHLIGHT:Lcom/android/systemui/statusbar/NavigationButtons$ButtonInfo;


# instance fields
.field private mBackAltIcon:Landroid/graphics/drawable/Drawable;

.field private mBackIcon:Landroid/graphics/drawable/Drawable;

.field private mBatteryLevel:I

.field private mBatteryStatus:I

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private mDisabledFlags:I

.field protected mExpandedDesktopState:I

.field private mHandler:Landroid/os/Handler;

.field private mMenuButton:Lcom/android/systemui/statusbar/pie/PieItem;

.field private mNavigationIconHints:I

.field private mNavigationSlice:Lcom/android/systemui/statusbar/pie/PieSliceContainer;

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mPieActivationListener:Landroid/service/pie/PieManager$PieActivationListener;

.field private mPieContainer:Lcom/android/systemui/statusbar/pie/PieView;

.field private mPieManager:Landroid/service/pie/PieManager;

.field private mPieTriggerMask:I

.field private mPieTriggerSlots:I

.field private mPosition:Lcom/android/internal/util/pie/PiePosition;

.field private mSearchLight:Lcom/android/systemui/statusbar/pie/PieItem;

.field private mServiceState:Landroid/telephony/ServiceState;

.field private mSettingsObserver:Lcom/android/systemui/statusbar/policy/PieController$SettingsObserver;

.field private mShowMenu:Z

.field private mStatusBar:Lcom/android/systemui/statusbar/BaseStatusBar;

.field private mSysInfo:Lcom/android/systemui/statusbar/pie/PieSysInfo;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mVibrator:Landroid/os/Vibrator;

.field private mWindowManager:Landroid/view/WindowManager;

.field private mWm:Landroid/view/IWindowManager;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const v4, 0x7f020149

    const/4 v1, 0x0

    .line 88
    new-instance v0, Lcom/android/systemui/statusbar/NavigationButtons$ButtonInfo;

    move v2, v1

    move v3, v1

    move v5, v4

    move v6, v1

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/statusbar/NavigationButtons$ButtonInfo;-><init>(IIIIII)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/PieController;->SEARCHLIGHT:Lcom/android/systemui/statusbar/NavigationButtons$ButtonInfo;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 268
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    iput v1, p0, Lcom/android/systemui/statusbar/policy/PieController;->mNavigationIconHints:I

    .line 121
    iput v1, p0, Lcom/android/systemui/statusbar/policy/PieController;->mDisabledFlags:I

    .line 122
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/PieController;->mShowMenu:Z

    .line 128
    sget-object v1, Lcom/android/internal/util/pie/PiePosition;->LEFT:Lcom/android/internal/util/pie/PiePosition;

    iget v1, v1, Lcom/android/internal/util/pie/PiePosition;->FLAG:I

    sget-object v2, Lcom/android/internal/util/pie/PiePosition;->BOTTOM:Lcom/android/internal/util/pie/PiePosition;

    iget v2, v2, Lcom/android/internal/util/pie/PiePosition;->FLAG:I

    or-int/2addr v1, v2

    sget-object v2, Lcom/android/internal/util/pie/PiePosition;->RIGHT:Lcom/android/internal/util/pie/PiePosition;

    iget v2, v2, Lcom/android/internal/util/pie/PiePosition;->FLAG:I

    or-int/2addr v1, v2

    sget-object v2, Lcom/android/internal/util/pie/PiePosition;->TOP:Lcom/android/internal/util/pie/PiePosition;

    iget v2, v2, Lcom/android/internal/util/pie/PiePosition;->FLAG:I

    or-int/2addr v1, v2

    iput v1, p0, Lcom/android/systemui/statusbar/policy/PieController;->mPieTriggerMask:I

    .line 134
    new-instance v1, Lcom/android/systemui/statusbar/policy/PieController$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/statusbar/policy/PieController$1;-><init>(Lcom/android/systemui/statusbar/policy/PieController;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/PieController;->mPieActivationListener:Landroid/service/pie/PieManager$PieActivationListener;

    .line 155
    new-instance v1, Lcom/android/systemui/statusbar/policy/PieController$2;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/statusbar/policy/PieController$2;-><init>(Lcom/android/systemui/statusbar/policy/PieController;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/PieController;->mHandler:Landroid/os/Handler;

    .line 242
    new-instance v1, Lcom/android/systemui/statusbar/policy/PieController$SettingsObserver;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/PieController;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/statusbar/policy/PieController$SettingsObserver;-><init>(Lcom/android/systemui/statusbar/policy/PieController;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/PieController;->mSettingsObserver:Lcom/android/systemui/statusbar/policy/PieController$SettingsObserver;

    .line 244
    new-instance v1, Lcom/android/systemui/statusbar/policy/PieController$3;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/policy/PieController$3;-><init>(Lcom/android/systemui/statusbar/policy/PieController;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/PieController;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 261
    new-instance v1, Lcom/android/systemui/statusbar/policy/PieController$4;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/policy/PieController$4;-><init>(Lcom/android/systemui/statusbar/policy/PieController;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/PieController;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 269
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/PieController;->mContext:Landroid/content/Context;

    .line 271
    invoke-static {}, Landroid/service/pie/PieManager;->getInstance()Landroid/service/pie/PieManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/PieController;->mPieManager:Landroid/service/pie/PieManager;

    .line 272
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/PieController;->mContext:Landroid/content/Context;

    const-string v2, "vibrator"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Vibrator;

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/PieController;->mVibrator:Landroid/os/Vibrator;

    .line 273
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/PieController;->mContext:Landroid/content/Context;

    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/PieController;->mWindowManager:Landroid/view/WindowManager;

    .line 274
    const-string v1, "window"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/PieController;->mWm:Landroid/view/IWindowManager;

    .line 276
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/PieController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "android.hardware.telephony"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 277
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/PieController;->mContext:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/PieController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 281
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/PieController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 283
    .local v0, res:Landroid/content/res/Resources;
    const v1, 0x7f0200cf

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/PieController;->mBackIcon:Landroid/graphics/drawable/Drawable;

    .line 284
    const v1, 0x7f0200d0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/PieController;->mBackAltIcon:Landroid/graphics/drawable/Drawable;

    .line 286
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/PieController;->mPieManager:Landroid/service/pie/PieManager;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/PieController;->mPieActivationListener:Landroid/service/pie/PieManager$PieActivationListener;

    invoke-virtual {v1, v2}, Landroid/service/pie/PieManager;->setPieActivationListener(Landroid/service/pie/PieManager$PieActivationListener;)Z

    .line 289
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/PieController;->mSettingsObserver:Lcom/android/systemui/statusbar/policy/PieController$SettingsObserver;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/PieController$SettingsObserver;->observe()V

    .line 290
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/PieController;->mSettingsObserver:Lcom/android/systemui/statusbar/policy/PieController$SettingsObserver;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/policy/PieController$SettingsObserver;->onChange(Z)V

    .line 291
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/policy/PieController;)Lcom/android/systemui/statusbar/BaseStatusBar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/PieController;->mStatusBar:Lcom/android/systemui/statusbar/BaseStatusBar;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/policy/PieController;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/PieController;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/systemui/statusbar/policy/PieController;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/PieController;->detachContainer()V

    return-void
.end method

.method static synthetic access$1102(Lcom/android/systemui/statusbar/policy/PieController;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 83
    iput p1, p0, Lcom/android/systemui/statusbar/policy/PieController;->mBatteryLevel:I

    return p1
.end method

.method static synthetic access$1202(Lcom/android/systemui/statusbar/policy/PieController;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 83
    iput p1, p0, Lcom/android/systemui/statusbar/policy/PieController;->mBatteryStatus:I

    return p1
.end method

.method static synthetic access$1302(Lcom/android/systemui/statusbar/policy/PieController;Landroid/telephony/ServiceState;)Landroid/telephony/ServiceState;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 83
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/PieController;->mServiceState:Landroid/telephony/ServiceState;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/policy/PieController;)Lcom/android/systemui/statusbar/pie/PieView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/PieController;->mPieContainer:Lcom/android/systemui/statusbar/pie/PieView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/policy/PieController;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget v0, p0, Lcom/android/systemui/statusbar/policy/PieController;->mPieTriggerMask:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/policy/PieController;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget v0, p0, Lcom/android/systemui/statusbar/policy/PieController;->mPieTriggerSlots:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/policy/PieController;)Landroid/service/pie/PieManager$PieActivationListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/PieController;->mPieActivationListener:Landroid/service/pie/PieManager$PieActivationListener;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/systemui/statusbar/policy/PieController;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/PieController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/systemui/statusbar/policy/PieController;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/PieController;->setupContainer()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/systemui/statusbar/policy/PieController;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/PieController;->setupNavigationItems()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/systemui/statusbar/policy/PieController;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/PieController;->setupListener()V

    return-void
.end method

.method private constructItem(ILcom/android/systemui/statusbar/NavigationButtons$ButtonInfo;IIZ)Lcom/android/systemui/statusbar/pie/PieItem;
    .locals 8
    .parameter "width"
    .parameter "type"
    .parameter "image"
    .parameter "minimumImageSize"
    .parameter "canLongPress"

    .prologue
    .line 396
    new-instance v6, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/PieController;->mContext:Landroid/content/Context;

    invoke-direct {v6, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 397
    .local v6, view:Landroid/widget/ImageView;
    invoke-virtual {v6, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 398
    invoke-virtual {v6, p4}, Landroid/widget/ImageView;->setMinimumWidth(I)V

    .line 399
    invoke-virtual {v6, p4}, Landroid/widget/ImageView;->setMinimumHeight(I)V

    .line 400
    new-instance v7, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v7, p4, p4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 401
    .local v7, lp:Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 402
    new-instance v0, Lcom/android/systemui/statusbar/pie/PieItem;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/PieController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/PieController;->mPieContainer:Lcom/android/systemui/statusbar/pie/PieView;

    const/4 v3, 0x0

    move v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/statusbar/pie/PieItem;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/pie/PieView;IILjava/lang/Object;Landroid/view/View;)V

    .line 403
    .local v0, item:Lcom/android/systemui/statusbar/pie/PieItem;
    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/pie/PieItem;->setOnClickListener(Lcom/android/systemui/statusbar/pie/PieItem$PieOnClickListener;)V

    .line 404
    if-eqz p5, :cond_0

    .line 405
    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/pie/PieItem;->setOnLongClickListener(Lcom/android/systemui/statusbar/pie/PieItem$PieOnLongClickListener;)V

    .line 407
    :cond_0
    return-object v0
.end method

.method private detachContainer()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 294
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/PieController;->mPieContainer:Lcom/android/systemui/statusbar/pie/PieView;

    if-nez v0, :cond_0

    .line 308
    :goto_0
    return-void

    .line 298
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/PieController;->mPieManager:Landroid/service/pie/PieManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/PieController;->mPieActivationListener:Landroid/service/pie/PieManager$PieActivationListener;

    invoke-virtual {v0, v1, v2}, Landroid/service/pie/PieManager;->updatePieActivationListener(Landroid/service/pie/PieManager$PieActivationListener;I)V

    .line 300
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/PieController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_1

    .line 301
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/PieController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/PieController;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 304
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/PieController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/PieController;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 306
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/PieController;->mPieContainer:Lcom/android/systemui/statusbar/pie/PieView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pie/PieView;->clearSlices()V

    .line 307
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/PieController;->mPieContainer:Lcom/android/systemui/statusbar/pie/PieView;

    goto :goto_0
.end method

.method private doHapticTriggerFeedback()V
    .locals 5

    .prologue
    .line 613
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/PieController;->mVibrator:Landroid/os/Vibrator;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/PieController;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v1}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v1

    if-nez v1, :cond_1

    .line 622
    :cond_0
    :goto_0
    return-void

    .line 617
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/PieController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "haptic_feedback_enabled"

    const/4 v3, 0x1

    const/4 v4, -0x2

    invoke-static {v1, v2, v3, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 619
    .local v0, hapticSetting:I
    if-eqz v0, :cond_0

    .line 620
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/PieController;->mVibrator:Landroid/os/Vibrator;

    const-wide/16 v2, 0x5

    invoke-virtual {v1, v2, v3}, Landroid/os/Vibrator;->vibrate(J)V

    goto :goto_0
.end method

.method private findItem(Lcom/android/systemui/statusbar/NavigationButtons$ButtonInfo;)Lcom/android/systemui/statusbar/pie/PieItem;
    .locals 3
    .parameter "type"

    .prologue
    .line 411
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/PieController;->mNavigationSlice:Lcom/android/systemui/statusbar/pie/PieSliceContainer;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/pie/PieSliceContainer;->getItems()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/pie/PieItem;

    .line 412
    .local v1, item:Lcom/android/systemui/statusbar/pie/PieItem;
    iget-object v2, v1, Lcom/android/systemui/statusbar/pie/PieItem;->tag:Ljava/lang/Object;

    if-ne p1, v2, :cond_0

    .line 417
    .end local v1           #item:Lcom/android/systemui/statusbar/pie/PieItem;
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private generateLayoutParam()Landroid/view/WindowManager$LayoutParams;
    .locals 6

    .prologue
    const/4 v1, -0x1

    .line 439
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/16 v3, 0x7de

    const/16 v4, 0x1a8

    const/4 v5, -0x3

    move v2, v1

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 449
    .local v0, lp:Landroid/view/WindowManager$LayoutParams;
    const-string v1, "PieControlPanel"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 450
    const/high16 v1, 0x103

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 451
    const/4 v1, 0x3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 452
    return-object v0
.end method

.method private injectKeyDelayed(IJ)V
    .locals 14
    .parameter "keyCode"
    .parameter "when"

    .prologue
    .line 181
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/PieController;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x42a

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 182
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/PieController;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x42b

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 184
    new-instance v0, Landroid/view/KeyEvent;

    const-wide/16 v2, 0xa

    add-long v3, p2, v2

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, -0x1

    const/4 v10, 0x0

    const/16 v11, 0x48

    const/16 v12, 0x101

    move-wide/from16 v1, p2

    move v6, p1

    invoke-direct/range {v0 .. v12}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    .line 188
    .local v0, down:Landroid/view/KeyEvent;
    new-instance v1, Landroid/view/KeyEvent;

    const-wide/16 v2, 0x1e

    add-long v4, p2, v2

    const/4 v6, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, -0x1

    const/4 v11, 0x0

    const/16 v12, 0x48

    const/16 v13, 0x101

    move-wide/from16 v2, p2

    move v7, p1

    invoke-direct/range {v1 .. v13}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    .line 193
    .local v1, up:Landroid/view/KeyEvent;
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/PieController;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/PieController;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x42a

    invoke-static {v3, v4, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    const-wide/16 v4, 0xa

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 194
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/PieController;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/PieController;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x42b

    invoke-static {v3, v4, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    const-wide/16 v4, 0x1e

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 195
    return-void
.end method

.method private launchAssistAction(Z)V
    .locals 7
    .parameter "force"

    .prologue
    const/4 v5, -0x2

    .line 625
    const/4 v1, 0x0

    .line 627
    .local v1, isKeyguardShowing:Z
    :try_start_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/PieController;->mWm:Landroid/view/IWindowManager;

    invoke-interface {v3}, Landroid/view/IWindowManager;->isKeyguardLocked()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2

    move-result v1

    .line 632
    :goto_0
    if-eqz v1, :cond_1

    if-eqz p1, :cond_1

    .line 635
    :try_start_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/PieController;->mWm:Landroid/view/IWindowManager;

    invoke-interface {v3}, Landroid/view/IWindowManager;->showAssistant()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 655
    :cond_0
    :goto_1
    return-void

    .line 640
    :cond_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/PieController;->mContext:Landroid/content/Context;

    const-string v4, "search"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/SearchManager;

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/PieController;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4, v5}, Landroid/app/SearchManager;->getAssistIntent(Landroid/content/Context;I)Landroid/content/Intent;

    move-result-object v0

    .line 643
    .local v0, intent:Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 645
    :try_start_2
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/PieController;->mContext:Landroid/content/Context;

    const v4, 0x7f050010

    const v5, 0x7f050011

    invoke-static {v3, v4, v5}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object v2

    .line 647
    .local v2, opts:Landroid/app/ActivityOptions;
    const/high16 v3, 0x1000

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 648
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/PieController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v4

    new-instance v5, Landroid/os/UserHandle;

    const/4 v6, -0x2

    invoke-direct {v5, v6}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v3, v0, v4, v5}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V
    :try_end_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 650
    .end local v2           #opts:Landroid/app/ActivityOptions;
    :catch_0
    move-exception v3

    goto :goto_1

    .line 636
    .end local v0           #intent:Landroid/content/Intent;
    :catch_1
    move-exception v3

    goto :goto_1

    .line 628
    :catch_2
    move-exception v3

    goto :goto_0
.end method

.method private setItemWithTagVisibility(Lcom/android/systemui/statusbar/NavigationButtons$ButtonInfo;Z)V
    .locals 1
    .parameter "type"
    .parameter "show"

    .prologue
    .line 421
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/PieController;->findItem(Lcom/android/systemui/statusbar/NavigationButtons$ButtonInfo;)Lcom/android/systemui/statusbar/pie/PieItem;

    move-result-object v0

    .line 422
    .local v0, item:Lcom/android/systemui/statusbar/pie/PieItem;
    if-eqz v0, :cond_0

    .line 423
    invoke-virtual {v0, p2}, Lcom/android/systemui/statusbar/pie/PieItem;->show(Z)V

    .line 425
    :cond_0
    return-void
.end method

.method private setupContainer()V
    .locals 10

    .prologue
    const/high16 v9, 0x433e

    const/high16 v8, 0x4320

    .line 315
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/PieController;->mPieContainer:Lcom/android/systemui/statusbar/pie/PieView;

    if-nez v4, :cond_1

    .line 316
    new-instance v4, Lcom/android/systemui/statusbar/pie/PieView;

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/PieController;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/android/systemui/statusbar/pie/PieView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/systemui/statusbar/policy/PieController;->mPieContainer:Lcom/android/systemui/statusbar/pie/PieView;

    .line 317
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/PieController;->mPieContainer:Lcom/android/systemui/statusbar/pie/PieView;

    invoke-virtual {v4, p0}, Lcom/android/systemui/statusbar/pie/PieView;->setOnSnapListener(Lcom/android/systemui/statusbar/pie/PieView$OnSnapListener;)V

    .line 318
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/PieController;->mPieContainer:Lcom/android/systemui/statusbar/pie/PieView;

    invoke-virtual {v4, p0}, Lcom/android/systemui/statusbar/pie/PieView;->setOnExitListener(Lcom/android/systemui/statusbar/pie/PieView$OnExitListener;)V

    .line 320
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/PieController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v4, :cond_0

    .line 321
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/PieController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/PieController;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 324
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 325
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v4, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 326
    const-string v4, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 327
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/PieController;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/PieController;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v4, v5, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 330
    .end local v0           #filter:Landroid/content/IntentFilter;
    :cond_1
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/PieController;->mPieContainer:Lcom/android/systemui/statusbar/pie/PieView;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/pie/PieView;->clearSlices()V

    .line 332
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/PieController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 335
    .local v3, res:Landroid/content/res/Resources;
    const v4, 0x7f0e004e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 336
    .local v1, inner:I
    const v4, 0x7f0e004f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    add-int v2, v1, v4

    .line 337
    .local v2, outer:I
    new-instance v4, Lcom/android/systemui/statusbar/pie/PieSliceContainer;

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/PieController;->mPieContainer:Lcom/android/systemui/statusbar/pie/PieView;

    sget v6, Lcom/android/systemui/statusbar/pie/PieView$PieDrawable;->DISPLAY_ALL:I

    or-int/lit16 v6, v6, 0x80

    invoke-direct {v4, v5, v6}, Lcom/android/systemui/statusbar/pie/PieSliceContainer;-><init>(Lcom/android/systemui/statusbar/pie/PieView;I)V

    iput-object v4, p0, Lcom/android/systemui/statusbar/policy/PieController;->mNavigationSlice:Lcom/android/systemui/statusbar/pie/PieSliceContainer;

    .line 339
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/PieController;->mNavigationSlice:Lcom/android/systemui/statusbar/pie/PieSliceContainer;

    invoke-virtual {v4, v9, v8, v1, v2}, Lcom/android/systemui/statusbar/pie/PieSliceContainer;->setGeometry(FFII)V

    .line 340
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/PieController;->mPieContainer:Lcom/android/systemui/statusbar/pie/PieView;

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/PieController;->mNavigationSlice:Lcom/android/systemui/statusbar/pie/PieSliceContainer;

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/pie/PieView;->addSlice(Lcom/android/systemui/statusbar/pie/PieView$PieSlice;)V

    .line 343
    const v4, 0x7f0e0050

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 344
    const v4, 0x7f0e0051

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    add-int v2, v1, v4

    .line 345
    new-instance v4, Lcom/android/systemui/statusbar/pie/PieSysInfo;

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/PieController;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/PieController;->mPieContainer:Lcom/android/systemui/statusbar/pie/PieView;

    sget v7, Lcom/android/systemui/statusbar/pie/PieView$PieDrawable;->DISPLAY_NOT_AT_TOP:I

    invoke-direct {v4, v5, v6, p0, v7}, Lcom/android/systemui/statusbar/pie/PieSysInfo;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/pie/PieView;Lcom/android/systemui/statusbar/policy/PieController;I)V

    iput-object v4, p0, Lcom/android/systemui/statusbar/policy/PieController;->mSysInfo:Lcom/android/systemui/statusbar/pie/PieSysInfo;

    .line 346
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/PieController;->mSysInfo:Lcom/android/systemui/statusbar/pie/PieSysInfo;

    invoke-virtual {v4, v9, v8, v1, v2}, Lcom/android/systemui/statusbar/pie/PieSysInfo;->setGeometry(FFII)V

    .line 347
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/PieController;->mPieContainer:Lcom/android/systemui/statusbar/pie/PieView;

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/PieController;->mSysInfo:Lcom/android/systemui/statusbar/pie/PieSysInfo;

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/pie/PieView;->addSlice(Lcom/android/systemui/statusbar/pie/PieView$PieSlice;)V

    .line 348
    return-void
.end method

.method private setupListener()V
    .locals 5

    .prologue
    .line 351
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/PieController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 353
    .local v0, resolver:Landroid/content/ContentResolver;
    const-string v1, "pie_positions"

    sget-object v2, Lcom/android/internal/util/pie/PiePosition;->BOTTOM:Lcom/android/internal/util/pie/PiePosition;

    iget v2, v2, Lcom/android/internal/util/pie/PiePosition;->FLAG:I

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/policy/PieController;->mPieTriggerSlots:I

    .line 355
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/PieController;->mPieManager:Landroid/service/pie/PieManager;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/PieController;->mPieActivationListener:Landroid/service/pie/PieManager$PieActivationListener;

    iget v3, p0, Lcom/android/systemui/statusbar/policy/PieController;->mPieTriggerSlots:I

    iget v4, p0, Lcom/android/systemui/statusbar/policy/PieController;->mPieTriggerMask:I

    and-int/2addr v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/service/pie/PieManager;->updatePieActivationListener(Landroid/service/pie/PieManager$PieActivationListener;I)V

    .line 357
    return-void
.end method

.method private setupNavigationItems()V
    .locals 12

    .prologue
    .line 360
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/PieController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e004d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v4, v0

    .line 361
    .local v4, minimumImageSize:I
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/PieController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "kill_app_longpress_back"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    const/4 v10, 0x1

    .line 363
    .local v10, killAppLongPress:Z
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/PieController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/statusbar/NavigationButtons;->loadButtonMap(Landroid/content/Context;)[Lcom/android/systemui/statusbar/NavigationButtons$ButtonInfo;

    move-result-object v7

    .line 365
    .local v7, buttons:[Lcom/android/systemui/statusbar/NavigationButtons$ButtonInfo;
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/PieController;->mNavigationSlice:Lcom/android/systemui/statusbar/pie/PieSliceContainer;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pie/PieSliceContainer;->clear()V

    .line 367
    const/4 v8, 0x0

    .local v8, i:I
    :goto_1
    array-length v0, v7

    if-ge v8, v0, :cond_7

    .line 368
    aget-object v0, v7, v8

    sget-object v1, Lcom/android/systemui/statusbar/NavigationButtons;->EMPTY:Lcom/android/systemui/statusbar/NavigationButtons$ButtonInfo;

    if-eq v0, v1, :cond_2

    .line 369
    aget-object v6, v7, v8

    .line 372
    .local v6, bi:Lcom/android/systemui/statusbar/NavigationButtons$ButtonInfo;
    sget-object v0, Lcom/android/systemui/statusbar/NavigationButtons;->HOME:Lcom/android/systemui/statusbar/NavigationButtons$ButtonInfo;

    if-ne v6, v0, :cond_0

    .line 375
    const/4 v1, 0x6

    sget-object v2, Lcom/android/systemui/statusbar/policy/PieController;->SEARCHLIGHT:Lcom/android/systemui/statusbar/NavigationButtons$ButtonInfo;

    sget-object v0, Lcom/android/systemui/statusbar/policy/PieController;->SEARCHLIGHT:Lcom/android/systemui/statusbar/NavigationButtons$ButtonInfo;

    iget v3, v0, Lcom/android/systemui/statusbar/NavigationButtons$ButtonInfo;->portResource:I

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/statusbar/policy/PieController;->constructItem(ILcom/android/systemui/statusbar/NavigationButtons$ButtonInfo;IIZ)Lcom/android/systemui/statusbar/pie/PieItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/PieController;->mSearchLight:Lcom/android/systemui/statusbar/pie/PieItem;

    .line 377
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/PieController;->mNavigationSlice:Lcom/android/systemui/statusbar/pie/PieSliceContainer;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/PieController;->mSearchLight:Lcom/android/systemui/statusbar/pie/PieItem;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/pie/PieSliceContainer;->addItem(Lcom/android/systemui/statusbar/pie/PieItem;)V

    .line 380
    :cond_0
    sget-object v0, Lcom/android/systemui/statusbar/NavigationButtons;->HOME:Lcom/android/systemui/statusbar/NavigationButtons$ButtonInfo;

    if-eq v6, v0, :cond_1

    sget-object v0, Lcom/android/systemui/statusbar/NavigationButtons;->BACK:Lcom/android/systemui/statusbar/NavigationButtons$ButtonInfo;

    if-ne v6, v0, :cond_4

    if-eqz v10, :cond_4

    :cond_1
    const/4 v5, 0x1

    .line 382
    .local v5, canLongPress:Z
    :goto_2
    sget-object v0, Lcom/android/systemui/statusbar/NavigationButtons;->IS_SLOT_SMALL:[Z

    aget-boolean v9, v0, v8

    .line 383
    .local v9, isSmall:Z
    iget-object v11, p0, Lcom/android/systemui/statusbar/policy/PieController;->mNavigationSlice:Lcom/android/systemui/statusbar/pie/PieSliceContainer;

    if-eqz v9, :cond_5

    const/4 v1, 0x1

    :goto_3
    if-eqz v9, :cond_6

    iget v3, v6, Lcom/android/systemui/statusbar/NavigationButtons$ButtonInfo;->sideResource:I

    :goto_4
    move-object v0, p0

    move-object v2, v6

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/statusbar/policy/PieController;->constructItem(ILcom/android/systemui/statusbar/NavigationButtons$ButtonInfo;IIZ)Lcom/android/systemui/statusbar/pie/PieItem;

    move-result-object v0

    invoke-virtual {v11, v0}, Lcom/android/systemui/statusbar/pie/PieSliceContainer;->addItem(Lcom/android/systemui/statusbar/pie/PieItem;)V

    .line 367
    .end local v5           #canLongPress:Z
    .end local v6           #bi:Lcom/android/systemui/statusbar/NavigationButtons$ButtonInfo;
    .end local v9           #isSmall:Z
    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 361
    .end local v7           #buttons:[Lcom/android/systemui/statusbar/NavigationButtons$ButtonInfo;
    .end local v8           #i:I
    .end local v10           #killAppLongPress:Z
    :cond_3
    const/4 v10, 0x0

    goto :goto_0

    .line 380
    .restart local v6       #bi:Lcom/android/systemui/statusbar/NavigationButtons$ButtonInfo;
    .restart local v7       #buttons:[Lcom/android/systemui/statusbar/NavigationButtons$ButtonInfo;
    .restart local v8       #i:I
    .restart local v10       #killAppLongPress:Z
    :cond_4
    const/4 v5, 0x0

    goto :goto_2

    .line 383
    .restart local v5       #canLongPress:Z
    .restart local v9       #isSmall:Z
    :cond_5
    const/4 v1, 0x2

    goto :goto_3

    :cond_6
    iget v3, v6, Lcom/android/systemui/statusbar/NavigationButtons$ButtonInfo;->portResource:I

    goto :goto_4

    .line 388
    .end local v5           #canLongPress:Z
    .end local v6           #bi:Lcom/android/systemui/statusbar/NavigationButtons$ButtonInfo;
    .end local v9           #isSmall:Z
    :cond_7
    sget-object v0, Lcom/android/systemui/statusbar/NavigationButtons;->CONDITIONAL_MENU:Lcom/android/systemui/statusbar/NavigationButtons$ButtonInfo;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/PieController;->findItem(Lcom/android/systemui/statusbar/NavigationButtons$ButtonInfo;)Lcom/android/systemui/statusbar/pie/PieItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/PieController;->mMenuButton:Lcom/android/systemui/statusbar/pie/PieItem;

    .line 390
    iget v0, p0, Lcom/android/systemui/statusbar/policy/PieController;->mNavigationIconHints:I

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/policy/PieController;->setNavigationIconHints(IZ)V

    .line 391
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/PieController;->mShowMenu:Z

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/PieController;->setMenuVisibility(Z)V

    .line 392
    return-void
.end method


# virtual methods
.method public activateFromListener(IILcom/android/internal/util/pie/PiePosition;)V
    .locals 4
    .parameter "touchX"
    .parameter "touchY"
    .parameter "position"

    .prologue
    .line 428
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/PieController;->isShowing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 429
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/PieController;->doHapticTriggerFeedback()V

    .line 431
    iput-object p3, p0, Lcom/android/systemui/statusbar/policy/PieController;->mPosition:Lcom/android/internal/util/pie/PiePosition;

    .line 432
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, p1, p2}, Landroid/graphics/Point;-><init>(II)V

    .line 433
    .local v0, center:Landroid/graphics/Point;
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/PieController;->mPieContainer:Lcom/android/systemui/statusbar/pie/PieView;

    invoke-virtual {v1, v0, p3}, Lcom/android/systemui/statusbar/pie/PieView;->activate(Landroid/graphics/Point;Lcom/android/internal/util/pie/PiePosition;)V

    .line 434
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/PieController;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/PieController;->mPieContainer:Lcom/android/systemui/statusbar/pie/PieView;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/PieController;->generateLayoutParam()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 436
    .end local v0           #center:Landroid/graphics/Point;
    :cond_0
    return-void
.end method

.method public attachStatusBar(Lcom/android/systemui/statusbar/BaseStatusBar;)V
    .locals 0
    .parameter "statusBar"

    .prologue
    .line 311
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/PieController;->mStatusBar:Lcom/android/systemui/statusbar/BaseStatusBar;

    .line 312
    return-void
.end method

.method public getBatteryLevel()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 689
    iget v0, p0, Lcom/android/systemui/statusbar/policy/PieController;->mBatteryStatus:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 690
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/PieController;->mContext:Landroid/content/Context;

    const v1, 0x7f0a0037

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 695
    :goto_0
    return-object v0

    .line 692
    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/policy/PieController;->mBatteryStatus:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 693
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/PieController;->mContext:Landroid/content/Context;

    const v1, 0x7f0a0036

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p0, Lcom/android/systemui/statusbar/policy/PieController;->mBatteryLevel:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 695
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/PieController;->mContext:Landroid/content/Context;

    const v1, 0x7f0a0038

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p0, Lcom/android/systemui/statusbar/policy/PieController;->mBatteryLevel:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getOperatorState()Ljava/lang/String;
    .locals 2

    .prologue
    .line 673
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/PieController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_0

    .line 674
    const/4 v0, 0x0

    .line 685
    :goto_0
    return-object v0

    .line 676
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/PieController;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/PieController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 677
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/PieController;->mContext:Landroid/content/Context;

    const v1, 0x7f0a0039

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 679
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/PieController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 680
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/PieController;->mContext:Landroid/content/Context;

    const v1, 0x7f0a003a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 682
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/PieController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->isEmergencyOnly()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 683
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/PieController;->mContext:Landroid/content/Context;

    const v1, 0x7f0a003b

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 685
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/PieController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public isEnabled()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 666
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/PieController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "pie_controls"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 669
    .local v0, pie:I
    if-ne v0, v1, :cond_0

    iget v3, p0, Lcom/android/systemui/statusbar/policy/PieController;->mExpandedDesktopState:I

    if-nez v3, :cond_1

    :cond_0
    const/4 v3, 0x2

    if-ne v0, v3, :cond_2

    :cond_1
    :goto_0
    return v1

    :cond_2
    move v1, v2

    goto :goto_0
.end method

.method public isSearchLightEnabled()Z
    .locals 1

    .prologue
    .line 662
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/PieController;->mSearchLight:Lcom/android/systemui/statusbar/pie/PieItem;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/PieController;->mSearchLight:Lcom/android/systemui/statusbar/pie/PieItem;

    iget v0, v0, Lcom/android/systemui/statusbar/pie/PieItem;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 658
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/PieController;->mPieContainer:Lcom/android/systemui/statusbar/pie/PieView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pie/PieView;->isShowing()Z

    move-result v0

    return v0
.end method

.method public onClick(Lcom/android/systemui/statusbar/pie/PieItem;)V
    .locals 6
    .parameter "item"

    .prologue
    const/4 v5, 0x1

    .line 577
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 578
    .local v1, when:J
    iget-object v0, p1, Lcom/android/systemui/statusbar/pie/PieItem;->tag:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/statusbar/NavigationButtons$ButtonInfo;

    .line 580
    .local v0, bi:Lcom/android/systemui/statusbar/NavigationButtons$ButtonInfo;
    iget v3, v0, Lcom/android/systemui/statusbar/NavigationButtons$ButtonInfo;->keyCode:I

    if-eqz v3, :cond_1

    .line 581
    iget v3, v0, Lcom/android/systemui/statusbar/NavigationButtons$ButtonInfo;->keyCode:I

    invoke-direct {p0, v3, v1, v2}, Lcom/android/systemui/statusbar/policy/PieController;->injectKeyDelayed(IJ)V

    .line 594
    :cond_0
    :goto_0
    return-void

    .line 584
    :cond_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/PieController;->mPieContainer:Lcom/android/systemui/statusbar/pie/PieView;

    invoke-virtual {v3, v5}, Lcom/android/systemui/statusbar/pie/PieView;->performHapticFeedback(I)Z

    .line 585
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/PieController;->mPieContainer:Lcom/android/systemui/statusbar/pie/PieView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/pie/PieView;->playSoundEffect(I)V

    .line 586
    sget-object v3, Lcom/android/systemui/statusbar/NavigationButtons;->RECENT:Lcom/android/systemui/statusbar/NavigationButtons$ButtonInfo;

    if-ne v0, v3, :cond_2

    .line 587
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/PieController;->mStatusBar:Lcom/android/systemui/statusbar/BaseStatusBar;

    if-eqz v3, :cond_0

    .line 588
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/PieController;->mStatusBar:Lcom/android/systemui/statusbar/BaseStatusBar;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/BaseStatusBar;->toggleRecentApps()V

    goto :goto_0

    .line 590
    :cond_2
    sget-object v3, Lcom/android/systemui/statusbar/policy/PieController;->SEARCHLIGHT:Lcom/android/systemui/statusbar/NavigationButtons$ButtonInfo;

    if-ne v0, v3, :cond_0

    .line 591
    invoke-direct {p0, v5}, Lcom/android/systemui/statusbar/policy/PieController;->launchAssistAction(Z)V

    goto :goto_0
.end method

.method public onExit()V
    .locals 2

    .prologue
    .line 457
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/PieController;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/PieController;->mPieContainer:Lcom/android/systemui/statusbar/pie/PieView;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 458
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/PieController;->mPieActivationListener:Landroid/service/pie/PieManager$PieActivationListener;

    invoke-virtual {v0}, Landroid/service/pie/PieManager$PieActivationListener;->restoreListenerState()V

    .line 459
    return-void
.end method

.method public onLongClick(Lcom/android/systemui/statusbar/pie/PieItem;)V
    .locals 4
    .parameter "item"

    .prologue
    const/4 v3, 0x0

    .line 598
    iget-object v0, p1, Lcom/android/systemui/statusbar/pie/PieItem;->tag:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/statusbar/NavigationButtons$ButtonInfo;

    .line 599
    .local v0, bi:Lcom/android/systemui/statusbar/NavigationButtons$ButtonInfo;
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/PieController;->mPieContainer:Lcom/android/systemui/statusbar/pie/PieView;

    invoke-virtual {v1, v3}, Lcom/android/systemui/statusbar/pie/PieView;->performHapticFeedback(I)Z

    .line 600
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/PieController;->mPieContainer:Lcom/android/systemui/statusbar/pie/PieView;

    invoke-virtual {v1, v3}, Lcom/android/systemui/statusbar/pie/PieView;->playSoundEffect(I)V

    .line 602
    sget-object v1, Lcom/android/systemui/statusbar/NavigationButtons;->HOME:Lcom/android/systemui/statusbar/NavigationButtons$ButtonInfo;

    if-ne v0, v1, :cond_1

    .line 603
    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/policy/PieController;->launchAssistAction(Z)V

    .line 610
    :cond_0
    :goto_0
    return-void

    .line 604
    :cond_1
    sget-object v1, Lcom/android/systemui/statusbar/NavigationButtons;->BACK:Lcom/android/systemui/statusbar/NavigationButtons$ButtonInfo;

    if-ne v0, v1, :cond_0

    .line 605
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/PieController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/internal/util/cm/DevUtils;->killForegroundApplication(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 606
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/PieController;->mContext:Landroid/content/Context;

    const v2, 0x104003b

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public onSnap(Lcom/android/internal/util/pie/PiePosition;)V
    .locals 4
    .parameter "position"

    .prologue
    .line 556
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/PieController;->mPosition:Lcom/android/internal/util/pie/PiePosition;

    if-ne p1, v1, :cond_0

    .line 573
    :goto_0
    return-void

    .line 560
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/PieController;->doHapticTriggerFeedback()V

    .line 566
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/PieController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "pie_positions"

    sget-object v3, Lcom/android/internal/util/pie/PiePosition;->BOTTOM:Lcom/android/internal/util/pie/PiePosition;

    iget v3, v3, Lcom/android/internal/util/pie/PiePosition;->FLAG:I

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 569
    .local v0, triggerSlots:I
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/PieController;->mPosition:Lcom/android/internal/util/pie/PiePosition;

    iget v1, v1, Lcom/android/internal/util/pie/PiePosition;->FLAG:I

    xor-int/lit8 v1, v1, -0x1

    and-int/2addr v1, v0

    iget v2, p1, Lcom/android/internal/util/pie/PiePosition;->FLAG:I

    or-int v0, v1, v2

    .line 571
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/PieController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "pie_positions"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method

.method public setDisabledFlags(I)V
    .locals 1
    .parameter "disabledFlags"

    .prologue
    .line 513
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/PieController;->mNavigationSlice:Lcom/android/systemui/statusbar/pie/PieSliceContainer;

    if-eqz v0, :cond_0

    .line 514
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/policy/PieController;->setDisabledFlags(IZ)V

    .line 518
    :goto_0
    return-void

    .line 516
    :cond_0
    iput p1, p0, Lcom/android/systemui/statusbar/policy/PieController;->mDisabledFlags:I

    goto :goto_0
.end method

.method protected setDisabledFlags(IZ)V
    .locals 8
    .parameter "disabledFlags"
    .parameter "force"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 521
    if-nez p2, :cond_0

    iget v6, p0, Lcom/android/systemui/statusbar/policy/PieController;->mDisabledFlags:I

    if-ne v6, p1, :cond_0

    .line 542
    :goto_0
    return-void

    .line 523
    :cond_0
    iput p1, p0, Lcom/android/systemui/statusbar/policy/PieController;->mDisabledFlags:I

    .line 525
    const/high16 v6, 0x20

    and-int/2addr v6, p1

    if-eqz v6, :cond_2

    move v1, v4

    .line 526
    .local v1, disableHome:Z
    :goto_1
    const/high16 v6, 0x100

    and-int/2addr v6, p1

    if-eqz v6, :cond_3

    move v2, v4

    .line 527
    .local v2, disableRecent:Z
    :goto_2
    const/high16 v6, 0x40

    and-int/2addr v6, p1

    if-eqz v6, :cond_4

    iget v6, p0, Lcom/android/systemui/statusbar/policy/PieController;->mNavigationIconHints:I

    and-int/lit8 v6, v6, 0x8

    if-nez v6, :cond_4

    move v0, v4

    .line 529
    .local v0, disableBack:Z
    :goto_3
    const/high16 v6, 0x200

    and-int/2addr v6, p1

    if-eqz v6, :cond_5

    move v3, v4

    .line 531
    .local v3, disableSearch:Z
    :goto_4
    sget-object v7, Lcom/android/systemui/statusbar/NavigationButtons;->BACK:Lcom/android/systemui/statusbar/NavigationButtons$ButtonInfo;

    if-nez v0, :cond_6

    move v6, v4

    :goto_5
    invoke-direct {p0, v7, v6}, Lcom/android/systemui/statusbar/policy/PieController;->setItemWithTagVisibility(Lcom/android/systemui/statusbar/NavigationButtons$ButtonInfo;Z)V

    .line 532
    sget-object v7, Lcom/android/systemui/statusbar/NavigationButtons;->HOME:Lcom/android/systemui/statusbar/NavigationButtons$ButtonInfo;

    if-nez v1, :cond_7

    move v6, v4

    :goto_6
    invoke-direct {p0, v7, v6}, Lcom/android/systemui/statusbar/policy/PieController;->setItemWithTagVisibility(Lcom/android/systemui/statusbar/NavigationButtons$ButtonInfo;Z)V

    .line 533
    sget-object v7, Lcom/android/systemui/statusbar/NavigationButtons;->RECENT:Lcom/android/systemui/statusbar/NavigationButtons$ButtonInfo;

    if-nez v2, :cond_8

    move v6, v4

    :goto_7
    invoke-direct {p0, v7, v6}, Lcom/android/systemui/statusbar/policy/PieController;->setItemWithTagVisibility(Lcom/android/systemui/statusbar/NavigationButtons$ButtonInfo;Z)V

    .line 534
    sget-object v7, Lcom/android/systemui/statusbar/NavigationButtons;->ALWAYS_MENU:Lcom/android/systemui/statusbar/NavigationButtons$ButtonInfo;

    if-nez v2, :cond_9

    move v6, v4

    :goto_8
    invoke-direct {p0, v7, v6}, Lcom/android/systemui/statusbar/policy/PieController;->setItemWithTagVisibility(Lcom/android/systemui/statusbar/NavigationButtons$ButtonInfo;Z)V

    .line 535
    sget-object v7, Lcom/android/systemui/statusbar/NavigationButtons;->MENU_BIG:Lcom/android/systemui/statusbar/NavigationButtons$ButtonInfo;

    if-nez v2, :cond_a

    move v6, v4

    :goto_9
    invoke-direct {p0, v7, v6}, Lcom/android/systemui/statusbar/policy/PieController;->setItemWithTagVisibility(Lcom/android/systemui/statusbar/NavigationButtons$ButtonInfo;Z)V

    .line 536
    sget-object v7, Lcom/android/systemui/statusbar/NavigationButtons;->SEARCH:Lcom/android/systemui/statusbar/NavigationButtons$ButtonInfo;

    if-nez v2, :cond_b

    move v6, v4

    :goto_a
    invoke-direct {p0, v7, v6}, Lcom/android/systemui/statusbar/policy/PieController;->setItemWithTagVisibility(Lcom/android/systemui/statusbar/NavigationButtons$ButtonInfo;Z)V

    .line 538
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/PieController;->mSearchLight:Lcom/android/systemui/statusbar/pie/PieItem;

    if-eqz v6, :cond_1

    .line 539
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/PieController;->mSearchLight:Lcom/android/systemui/statusbar/pie/PieItem;

    if-eqz v1, :cond_c

    if-eqz v2, :cond_c

    if-eqz v0, :cond_c

    if-nez v3, :cond_c

    :goto_b
    invoke-virtual {v6, v4}, Lcom/android/systemui/statusbar/pie/PieItem;->show(Z)V

    .line 541
    :cond_1
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/policy/PieController;->mShowMenu:Z

    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/policy/PieController;->setMenuVisibility(Z)V

    goto :goto_0

    .end local v0           #disableBack:Z
    .end local v1           #disableHome:Z
    .end local v2           #disableRecent:Z
    .end local v3           #disableSearch:Z
    :cond_2
    move v1, v5

    .line 525
    goto :goto_1

    .restart local v1       #disableHome:Z
    :cond_3
    move v2, v5

    .line 526
    goto :goto_2

    .restart local v2       #disableRecent:Z
    :cond_4
    move v0, v5

    .line 527
    goto :goto_3

    .restart local v0       #disableBack:Z
    :cond_5
    move v3, v5

    .line 529
    goto :goto_4

    .restart local v3       #disableSearch:Z
    :cond_6
    move v6, v5

    .line 531
    goto :goto_5

    :cond_7
    move v6, v5

    .line 532
    goto :goto_6

    :cond_8
    move v6, v5

    .line 533
    goto :goto_7

    :cond_9
    move v6, v5

    .line 534
    goto :goto_8

    :cond_a
    move v6, v5

    .line 535
    goto :goto_9

    :cond_b
    move v6, v5

    .line 536
    goto :goto_a

    :cond_c
    move v4, v5

    .line 539
    goto :goto_b
.end method

.method public setMenuVisibility(Z)V
    .locals 1
    .parameter "showMenu"

    .prologue
    .line 547
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/PieController;->mMenuButton:Lcom/android/systemui/statusbar/pie/PieItem;

    if-eqz v0, :cond_0

    .line 548
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/PieController;->mMenuButton:Lcom/android/systemui/statusbar/pie/PieItem;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/pie/PieItem;->show(Z)V

    .line 551
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/PieController;->mShowMenu:Z

    .line 552
    return-void
.end method

.method public setNavigationIconHints(I)V
    .locals 1
    .parameter "hints"

    .prologue
    .line 475
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/PieController;->mNavigationSlice:Lcom/android/systemui/statusbar/pie/PieSliceContainer;

    if-eqz v0, :cond_0

    .line 476
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/policy/PieController;->setNavigationIconHints(IZ)V

    .line 480
    :goto_0
    return-void

    .line 478
    :cond_0
    iput p1, p0, Lcom/android/systemui/statusbar/policy/PieController;->mNavigationIconHints:I

    goto :goto_0
.end method

.method protected setNavigationIconHints(IZ)V
    .locals 7
    .parameter "hints"
    .parameter "force"

    .prologue
    const/high16 v5, 0x3f80

    const/high16 v4, 0x3f00

    const/4 v0, 0x0

    const/4 v6, 0x1

    .line 483
    if-nez p2, :cond_0

    iget v3, p0, Lcom/android/systemui/statusbar/policy/PieController;->mNavigationIconHints:I

    if-ne p1, v3, :cond_0

    .line 507
    :goto_0
    return-void

    .line 487
    :cond_0
    iput p1, p0, Lcom/android/systemui/statusbar/policy/PieController;->mNavigationIconHints:I

    .line 489
    sget-object v3, Lcom/android/systemui/statusbar/NavigationButtons;->HOME:Lcom/android/systemui/statusbar/NavigationButtons$ButtonInfo;

    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/policy/PieController;->findItem(Lcom/android/systemui/statusbar/NavigationButtons$ButtonInfo;)Lcom/android/systemui/statusbar/pie/PieItem;

    move-result-object v2

    .line 490
    .local v2, item:Lcom/android/systemui/statusbar/pie/PieItem;
    if-eqz v2, :cond_1

    .line 491
    and-int/lit8 v3, p1, 0x2

    if-eqz v3, :cond_5

    move v1, v6

    .line 492
    .local v1, isNop:Z
    :goto_1
    if-eqz v1, :cond_6

    move v3, v4

    :goto_2
    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/pie/PieItem;->setAlpha(F)V

    .line 494
    .end local v1           #isNop:Z
    :cond_1
    sget-object v3, Lcom/android/systemui/statusbar/NavigationButtons;->RECENT:Lcom/android/systemui/statusbar/NavigationButtons$ButtonInfo;

    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/policy/PieController;->findItem(Lcom/android/systemui/statusbar/NavigationButtons$ButtonInfo;)Lcom/android/systemui/statusbar/pie/PieItem;

    move-result-object v2

    .line 495
    if-eqz v2, :cond_2

    .line 496
    and-int/lit8 v3, p1, 0x4

    if-eqz v3, :cond_7

    move v1, v6

    .line 497
    .restart local v1       #isNop:Z
    :goto_3
    if-eqz v1, :cond_8

    move v3, v4

    :goto_4
    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/pie/PieItem;->setAlpha(F)V

    .line 499
    .end local v1           #isNop:Z
    :cond_2
    sget-object v3, Lcom/android/systemui/statusbar/NavigationButtons;->BACK:Lcom/android/systemui/statusbar/NavigationButtons$ButtonInfo;

    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/policy/PieController;->findItem(Lcom/android/systemui/statusbar/NavigationButtons$ButtonInfo;)Lcom/android/systemui/statusbar/pie/PieItem;

    move-result-object v2

    .line 500
    if-eqz v2, :cond_4

    .line 501
    and-int/lit8 v3, p1, 0x1

    if-eqz v3, :cond_9

    move v1, v6

    .line 502
    .restart local v1       #isNop:Z
    :goto_5
    and-int/lit8 v3, p1, 0x8

    if-eqz v3, :cond_3

    move v0, v6

    .line 503
    .local v0, isAlt:Z
    :cond_3
    if-eqz v1, :cond_a

    :goto_6
    invoke-virtual {v2, v4}, Lcom/android/systemui/statusbar/pie/PieItem;->setAlpha(F)V

    .line 504
    if-eqz v0, :cond_b

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/PieController;->mBackAltIcon:Landroid/graphics/drawable/Drawable;

    :goto_7
    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/pie/PieItem;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 506
    .end local v0           #isAlt:Z
    .end local v1           #isNop:Z
    :cond_4
    iget v3, p0, Lcom/android/systemui/statusbar/policy/PieController;->mDisabledFlags:I

    invoke-virtual {p0, v3, v6}, Lcom/android/systemui/statusbar/policy/PieController;->setDisabledFlags(IZ)V

    goto :goto_0

    :cond_5
    move v1, v0

    .line 491
    goto :goto_1

    .restart local v1       #isNop:Z
    :cond_6
    move v3, v5

    .line 492
    goto :goto_2

    .end local v1           #isNop:Z
    :cond_7
    move v1, v0

    .line 496
    goto :goto_3

    .restart local v1       #isNop:Z
    :cond_8
    move v3, v5

    .line 497
    goto :goto_4

    .end local v1           #isNop:Z
    :cond_9
    move v1, v0

    .line 501
    goto :goto_5

    .restart local v0       #isAlt:Z
    .restart local v1       #isNop:Z
    :cond_a
    move v4, v5

    .line 503
    goto :goto_6

    .line 504
    :cond_b
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/PieController;->mBackIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_7
.end method

.method public updatePieTriggerMask(I)V
    .locals 3
    .parameter "newMask"

    .prologue
    .line 462
    iget v1, p0, Lcom/android/systemui/statusbar/policy/PieController;->mPieTriggerSlots:I

    iget v2, p0, Lcom/android/systemui/statusbar/policy/PieController;->mPieTriggerMask:I

    and-int v0, v1, v2

    .line 463
    .local v0, oldState:I
    iput p1, p0, Lcom/android/systemui/statusbar/policy/PieController;->mPieTriggerMask:I

    .line 466
    iget v1, p0, Lcom/android/systemui/statusbar/policy/PieController;->mPieTriggerSlots:I

    iget v2, p0, Lcom/android/systemui/statusbar/policy/PieController;->mPieTriggerMask:I

    and-int/2addr v1, v2

    if-eq v1, v0, :cond_0

    .line 467
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/PieController;->setupListener()V

    .line 469
    :cond_0
    return-void
.end method
