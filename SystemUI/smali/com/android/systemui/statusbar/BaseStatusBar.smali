.class public abstract Lcom/android/systemui/statusbar/BaseStatusBar;
.super Lcom/android/systemui/SystemUI;
.source "BaseStatusBar.java"

# interfaces
.implements Lcom/android/systemui/statusbar/CommandQueue$Callbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;,
        Lcom/android/systemui/statusbar/BaseStatusBar$TouchOutsideListener;,
        Lcom/android/systemui/statusbar/BaseStatusBar$H;,
        Lcom/android/systemui/statusbar/BaseStatusBar$NavigationBarCallback;
    }
.end annotation


# instance fields
.field protected mBarService:Lcom/android/internal/statusbar/IStatusBarService;

.field protected mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

.field protected mCurrentUserId:I

.field protected mCurrentlyIntrudingNotification:Lcom/android/internal/statusbar/StatusBarNotification;

.field private mDeviceProvisioned:Z

.field protected mDisplay:Landroid/view/Display;

.field protected mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

.field private mNavigationCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/statusbar/BaseStatusBar$NavigationBarCallback;",
            ">;"
        }
    .end annotation
.end field

.field protected mNotificationBlamePopup:Landroid/widget/PopupMenu;

.field protected mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

.field private mOnClickHandler:Landroid/widget/RemoteViews$OnClickHandler;

.field protected mPanelSlightlyVisible:Z

.field protected mPieController:Lcom/android/systemui/statusbar/policy/PieController;

.field protected mPile:Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

.field private mProvisioningObserver:Landroid/database/ContentObserver;

.field protected mRecentsPreloadOnTouchListener:Landroid/view/View$OnTouchListener;

.field protected mSearchPanelView:Lcom/android/systemui/SearchPanelView;

.field private mShowNotificationCounts:Z

.field protected mStatusBarContainer:Landroid/widget/FrameLayout;

.field protected mWindowManager:Landroid/view/WindowManager;

.field protected mWindowManagerService:Landroid/view/IWindowManager;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 88
    invoke-direct {p0}, Lcom/android/systemui/SystemUI;-><init>()V

    .line 113
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->createHandler()Lcom/android/systemui/statusbar/BaseStatusBar$H;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    .line 116
    new-instance v0, Lcom/android/systemui/statusbar/NotificationData;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/NotificationData;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    .line 129
    iput v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mCurrentUserId:I

    .line 156
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNavigationCallbacks:Ljava/util/ArrayList;

    .line 174
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mDeviceProvisioned:Z

    .line 186
    new-instance v0, Lcom/android/systemui/statusbar/BaseStatusBar$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/BaseStatusBar$1;-><init>(Lcom/android/systemui/statusbar/BaseStatusBar;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mProvisioningObserver:Landroid/database/ContentObserver;

    .line 198
    new-instance v0, Lcom/android/systemui/statusbar/BaseStatusBar$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/BaseStatusBar$2;-><init>(Lcom/android/systemui/statusbar/BaseStatusBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mOnClickHandler:Landroid/widget/RemoteViews$OnClickHandler;

    .line 649
    new-instance v0, Lcom/android/systemui/statusbar/BaseStatusBar$7;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/BaseStatusBar$7;-><init>(Lcom/android/systemui/statusbar/BaseStatusBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mRecentsPreloadOnTouchListener:Landroid/view/View$OnTouchListener;

    .line 846
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/BaseStatusBar;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mDeviceProvisioned:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/systemui/statusbar/BaseStatusBar;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 88
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mDeviceProvisioned:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/BaseStatusBar;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 88
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/BaseStatusBar;->startApplicationDetailsActivity(Ljava/lang/String;)V

    return-void
.end method

.method private startApplicationDetailsActivity(Ljava/lang/String;)V
    .locals 4
    .parameter "packageName"

    .prologue
    const/4 v3, 0x0

    .line 390
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.APPLICATION_DETAILS_SETTINGS"

    const-string v2, "package"

    invoke-static {v2, p1, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 392
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 393
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/app/TaskStackBuilder;->create(Landroid/content/Context;)Landroid/app/TaskStackBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/TaskStackBuilder;->addNextIntentWithParentStack(Landroid/content/Intent;)Landroid/app/TaskStackBuilder;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v3, v2}, Landroid/app/TaskStackBuilder;->startActivities(Landroid/os/Bundle;Landroid/os/UserHandle;)V

    .line 395
    return-void
.end method


# virtual methods
.method public addNavigationBarCallback(Lcom/android/systemui/statusbar/BaseStatusBar$NavigationBarCallback;)V
    .locals 1
    .parameter "callback"

    .prologue
    .line 1207
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNavigationCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1208
    return-void
.end method

.method protected addNotificationViews(Landroid/os/IBinder;Lcom/android/internal/statusbar/StatusBarNotification;)Lcom/android/systemui/statusbar/StatusBarIconView;
    .locals 9
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x0

    .line 954
    new-instance v8, Lcom/android/systemui/statusbar/StatusBarIconView;

    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p2, Lcom/android/internal/statusbar/StatusBarNotification;->pkg:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p2, Lcom/android/internal/statusbar/StatusBarNotification;->id:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p2, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    invoke-direct {v8, v0, v1, v2}, Lcom/android/systemui/statusbar/StatusBarIconView;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/app/Notification;)V

    .line 957
    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v8, v0}, Lcom/android/systemui/statusbar/StatusBarIconView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 959
    new-instance v0, Lcom/android/internal/statusbar/StatusBarIcon;

    iget-object v1, p2, Lcom/android/internal/statusbar/StatusBarNotification;->pkg:Ljava/lang/String;

    iget-object v2, p2, Lcom/android/internal/statusbar/StatusBarNotification;->user:Landroid/os/UserHandle;

    iget-object v3, p2, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    iget v3, v3, Landroid/app/Notification;->icon:I

    iget-object v4, p2, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    iget v4, v4, Landroid/app/Notification;->iconLevel:I

    iget-object v5, p2, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    iget v5, v5, Landroid/app/Notification;->number:I

    iget-object v6, p2, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    iget-object v6, v6, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/statusbar/StatusBarIcon;-><init>(Ljava/lang/String;Landroid/os/UserHandle;IIILjava/lang/CharSequence;)V

    .line 965
    invoke-virtual {v8, v0}, Lcom/android/systemui/statusbar/StatusBarIconView;->set(Lcom/android/internal/statusbar/StatusBarIcon;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 966
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Couldn\'t create icon: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/BaseStatusBar;->handleNotificationError(Landroid/os/IBinder;Lcom/android/internal/statusbar/StatusBarNotification;Ljava/lang/String;)V

    move-object v0, v7

    .line 985
    :goto_0
    return-object v0

    .line 970
    :cond_0
    new-instance v0, Lcom/android/systemui/statusbar/NotificationData$Entry;

    invoke-direct {v0, p1, p2, v8}, Lcom/android/systemui/statusbar/NotificationData$Entry;-><init>(Landroid/os/IBinder;Lcom/android/internal/statusbar/StatusBarNotification;Lcom/android/systemui/statusbar/StatusBarIconView;)V

    .line 971
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mPile:Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/BaseStatusBar;->inflateViews(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/view/ViewGroup;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 972
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Couldn\'t expand RemoteViews for: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/BaseStatusBar;->handleNotificationError(Landroid/os/IBinder;Lcom/android/internal/statusbar/StatusBarNotification;Ljava/lang/String;)V

    move-object v0, v7

    .line 974
    goto :goto_0

    .line 978
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/NotificationData;->add(Lcom/android/systemui/statusbar/NotificationData$Entry;)I

    .line 982
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->updateExpansionStates()V

    .line 983
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->updateNotificationIcons()V

    move-object v0, v8

    .line 985
    goto :goto_0
.end method

.method protected applyLegacyRowBackground(Lcom/android/internal/statusbar/StatusBarNotification;Landroid/view/View;)V
    .locals 6
    .parameter "sbn"
    .parameter "content"

    .prologue
    .line 372
    iget-object v3, p1, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    iget-object v3, v3, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    invoke-virtual {v3}, Landroid/widget/RemoteViews;->getLayoutId()I

    move-result v3

    const v4, 0x109008f

    if-eq v3, v4, :cond_0

    .line 374
    const/4 v2, 0x0

    .line 376
    .local v2, version:I
    :try_start_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iget-object v4, p1, Lcom/android/internal/statusbar/StatusBarNotification;->pkg:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 377
    .local v1, info:Landroid/content/pm/ApplicationInfo;
    iget v2, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 381
    .end local v1           #info:Landroid/content/pm/ApplicationInfo;
    :goto_0
    if-lez v2, :cond_1

    const/16 v3, 0x9

    if-ge v2, v3, :cond_1

    .line 382
    const v3, 0x7f02012f

    invoke-virtual {p2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 387
    .end local v2           #version:I
    :cond_0
    :goto_1
    return-void

    .line 378
    .restart local v2       #version:I
    :catch_0
    move-exception v0

    .line 379
    .local v0, ex:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v3, "StatusBar"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed looking up ApplicationInfo for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/android/internal/statusbar/StatusBarNotification;->pkg:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 384
    .end local v0           #ex:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_1
    const v3, 0x1080475

    invoke-virtual {p2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1
.end method

.method public cancelPreloadRecentApps()V
    .locals 2

    .prologue
    .line 453
    const/16 v0, 0x3ff

    .line 454
    .local v0, msg:I
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->removeMessages(I)V

    .line 455
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->sendEmptyMessage(I)Z

    .line 456
    return-void
.end method

.method protected cancelPreloadingRecentTasksList()V
    .locals 4

    .prologue
    .line 681
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.systemui.recent.CANCEL_PRELOAD"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 682
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.android.systemui"

    const-string v2, "com.android.systemui.recent.RecentsPreloadReceiver"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 684
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/os/UserHandle;

    const/4 v3, -0x2

    invoke-direct {v2, v3}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 686
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/recent/RecentTasksLoader;->getInstance(Landroid/content/Context;)Lcom/android/systemui/recent/RecentTasksLoader;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/recent/RecentTasksLoader;->cancelPreloadingFirstTask()V

    .line 687
    return-void
.end method

.method protected abstract createAndAddWindows()V
.end method

.method protected createHandler()Lcom/android/systemui/statusbar/BaseStatusBar$H;
    .locals 1

    .prologue
    .line 505
    new-instance v0, Lcom/android/systemui/statusbar/BaseStatusBar$H;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/BaseStatusBar$H;-><init>(Lcom/android/systemui/statusbar/BaseStatusBar;)V

    return-object v0
.end method

.method public dismissIntruder()V
    .locals 0

    .prologue
    .line 435
    return-void
.end method

.method public dismissPopups()V
    .locals 1

    .prologue
    .line 427
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationBlamePopup:Landroid/widget/PopupMenu;

    if-eqz v0, :cond_0

    .line 428
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationBlamePopup:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->dismiss()V

    .line 429
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationBlamePopup:Landroid/widget/PopupMenu;

    .line 431
    :cond_0
    return-void
.end method

.method protected expandView(Lcom/android/systemui/statusbar/NotificationData$Entry;Z)Z
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 989
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e001a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 991
    iget-object v1, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 992
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/NotificationData$Entry;->expandable()Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz p2, :cond_0

    .line 994
    const/4 v0, -0x2

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 999
    :goto_0
    iget-object v0, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1000
    return p2

    .line 997
    :cond_0
    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_0
.end method

.method public getExpandedDesktopMode()I
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1197
    iget-object v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 1198
    const-string v3, "expanded_desktop_state"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_1

    .line 1200
    :goto_0
    if-eqz v1, :cond_0

    .line 1201
    const-string v1, "expanded_desktop_style"

    invoke-static {v2, v1, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1203
    :cond_0
    return v0

    :cond_1
    move v1, v0

    .line 1198
    goto :goto_0
.end method

.method protected getNotificationLongClicker()Landroid/view/View$OnLongClickListener;
    .locals 1

    .prologue
    .line 398
    new-instance v0, Lcom/android/systemui/statusbar/BaseStatusBar$5;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/BaseStatusBar$5;-><init>(Lcom/android/systemui/statusbar/BaseStatusBar;)V

    return-object v0
.end method

.method protected abstract getSearchLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/WindowManager$LayoutParams;
.end method

.method protected abstract getStatusBarView()Landroid/view/View;
.end method

.method protected abstract haltTicker()V
.end method

.method handleNotificationError(Landroid/os/IBinder;Lcom/android/internal/statusbar/StatusBarNotification;Ljava/lang/String;)V
    .locals 7
    .parameter "key"
    .parameter "n"
    .parameter "message"

    .prologue
    .line 925
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/BaseStatusBar;->removeNotification(Landroid/os/IBinder;)V

    .line 927
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    iget-object v1, p2, Lcom/android/internal/statusbar/StatusBarNotification;->pkg:Ljava/lang/String;

    iget-object v2, p2, Lcom/android/internal/statusbar/StatusBarNotification;->tag:Ljava/lang/String;

    iget v3, p2, Lcom/android/internal/statusbar/StatusBarNotification;->id:I

    iget v4, p2, Lcom/android/internal/statusbar/StatusBarNotification;->uid:I

    iget v5, p2, Lcom/android/internal/statusbar/StatusBarNotification;->initialPid:I

    move-object v6, p3

    invoke-interface/range {v0 .. v6}, Lcom/android/internal/statusbar/IStatusBarService;->onNotificationError(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 931
    :goto_0
    return-void

    .line 928
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public hideSearchPanel()V
    .locals 2

    .prologue
    .line 467
    const/16 v0, 0x401

    .line 468
    .local v0, msg:I
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->removeMessages(I)V

    .line 469
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->sendEmptyMessage(I)Z

    .line 470
    return-void
.end method

.method public inKeyguardRestrictedInputMode()Z
    .locals 2

    .prologue
    .line 1192
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    const-string v1, "keyguard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    .line 1193
    invoke-virtual {v0}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v0

    return v0
.end method

.method protected inflateViews(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/view/ViewGroup;)Z
    .locals 15
    .parameter
    .parameter

    .prologue
    .line 751
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0018

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    .line 753
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0019

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    .line 755
    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/internal/statusbar/StatusBarNotification;

    .line 756
    iget-object v1, v11, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    iget-object v12, v1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 757
    iget-object v1, v11, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    iget-object v13, v1, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    .line 758
    if-nez v12, :cond_0

    .line 759
    const/4 v1, 0x0

    .line 839
    :goto_0
    return v1

    .line 763
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 765
    const v2, 0x7f040028

    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v1, v2, v0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v14

    .line 768
    iget-object v1, v11, Lcom/android/internal/statusbar/StatusBarNotification;->pkg:Ljava/lang/String;

    invoke-virtual {v14, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 770
    invoke-virtual {p0, v14}, Lcom/android/systemui/statusbar/BaseStatusBar;->workAroundBadLayerDrawableOpacity(Landroid/view/View;)V

    .line 771
    invoke-virtual {p0, v14, v11}, Lcom/android/systemui/statusbar/BaseStatusBar;->updateNotificationVetoButton(Landroid/view/View;Lcom/android/internal/statusbar/StatusBarNotification;)Landroid/view/View;

    move-result-object v1

    .line 772
    iget-object v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    const v3, 0x7f0a00b5

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 778
    const v1, 0x7f090075

    invoke-virtual {v14, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/view/ViewGroup;

    .line 779
    const v1, 0x7f090076

    invoke-virtual {v14, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/view/ViewGroup;

    .line 781
    const/high16 v1, 0x6

    invoke-virtual {v7, v1}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    .line 783
    iget-object v1, v11, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    iget-object v3, v1, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 784
    if-eqz v3, :cond_4

    .line 785
    new-instance v1, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;

    iget-object v4, v11, Lcom/android/internal/statusbar/StatusBarNotification;->pkg:Ljava/lang/String;

    iget-object v5, v11, Lcom/android/internal/statusbar/StatusBarNotification;->tag:Ljava/lang/String;

    iget v6, v11, Lcom/android/internal/statusbar/StatusBarNotification;->id:I

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;-><init>(Lcom/android/systemui/statusbar/BaseStatusBar;Landroid/app/PendingIntent;Ljava/lang/String;Ljava/lang/String;I)V

    .line 787
    invoke-virtual {v7, v1}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 794
    :goto_1
    const/4 v1, 0x0

    .line 796
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mOnClickHandler:Landroid/widget/RemoteViews$OnClickHandler;

    invoke-virtual {v12, v2, v8, v3}, Landroid/widget/RemoteViews;->apply(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$OnClickHandler;)Landroid/view/View;

    move-result-object v3

    .line 797
    if-eqz v13, :cond_1

    .line 798
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mOnClickHandler:Landroid/widget/RemoteViews$OnClickHandler;

    invoke-virtual {v13, v1, v8, v2}, Landroid/widget/RemoteViews;->apply(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$OnClickHandler;)Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 807
    :cond_1
    if-eqz v3, :cond_2

    .line 808
    new-instance v2, Lcom/android/internal/widget/SizeAdaptiveLayout$LayoutParams;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/android/internal/widget/SizeAdaptiveLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 810
    iput v9, v2, Lcom/android/internal/widget/SizeAdaptiveLayout$LayoutParams;->minHeight:I

    .line 811
    iput v9, v2, Lcom/android/internal/widget/SizeAdaptiveLayout$LayoutParams;->maxHeight:I

    .line 812
    invoke-virtual {v8, v3, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 814
    :cond_2
    if-eqz v1, :cond_3

    .line 815
    new-instance v2, Lcom/android/internal/widget/SizeAdaptiveLayout$LayoutParams;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/android/internal/widget/SizeAdaptiveLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 817
    add-int/lit8 v4, v9, 0x1

    iput v4, v2, Lcom/android/internal/widget/SizeAdaptiveLayout$LayoutParams;->minHeight:I

    .line 818
    iput v10, v2, Lcom/android/internal/widget/SizeAdaptiveLayout$LayoutParams;->maxHeight:I

    .line 819
    invoke-virtual {v8, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 821
    :cond_3
    const/4 v2, 0x1

    invoke-virtual {v14, v2}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 823
    invoke-virtual {p0, v11, v7}, Lcom/android/systemui/statusbar/BaseStatusBar;->applyLegacyRowBackground(Lcom/android/internal/statusbar/StatusBarNotification;Landroid/view/View;)V

    .line 825
    const v4, 0x7f090002

    if-eqz v13, :cond_5

    const/4 v2, 0x1

    :goto_2
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v14, v4, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 834
    move-object/from16 v0, p1

    iput-object v14, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Landroid/view/View;

    .line 835
    move-object/from16 v0, p1

    iput-object v7, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->content:Landroid/view/View;

    .line 836
    move-object/from16 v0, p1

    iput-object v3, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->expanded:Landroid/view/View;

    .line 837
    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/NotificationData$Entry;->setLargeView(Landroid/view/View;)V

    .line 839
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 789
    :cond_4
    const/4 v1, 0x0

    invoke-virtual {v7, v1}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 801
    :catch_0
    move-exception v1

    .line 802
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v11, Lcom/android/internal/statusbar/StatusBarNotification;->pkg:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v11, Lcom/android/internal/statusbar/StatusBarNotification;->id:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 803
    const-string v3, "StatusBar"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "couldn\'t inflate view for notification "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 804
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 825
    :cond_5
    const/4 v2, 0x0

    goto :goto_2
.end method

.method public isDeviceProvisioned()Z
    .locals 1

    .prologue
    .line 183
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mDeviceProvisioned:Z

    return v0
.end method

.method protected isTopNotification(Landroid/view/ViewGroup;Lcom/android/systemui/statusbar/NotificationData$Entry;)Z
    .locals 1
    .parameter "parent"
    .parameter "entry"

    .prologue
    .line 1034
    if-eqz p1, :cond_0

    iget-object v0, p2, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public makeClicker(Landroid/app/PendingIntent;Ljava/lang/String;Ljava/lang/String;I)Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;
    .locals 6
    .parameter "intent"
    .parameter "pkg"
    .parameter "tag"
    .parameter "id"

    .prologue
    .line 843
    new-instance v0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;-><init>(Lcom/android/systemui/statusbar/BaseStatusBar;Landroid/app/PendingIntent;Ljava/lang/String;Ljava/lang/String;I)V

    return-object v0
.end method

.method public notificationIsForCurrentUser(Lcom/android/internal/statusbar/StatusBarNotification;)Z
    .locals 3
    .parameter "n"

    .prologue
    .line 333
    iget v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mCurrentUserId:I

    .line 334
    .local v1, thisUserId:I
    invoke-virtual {p1}, Lcom/android/internal/statusbar/StatusBarNotification;->getUserId()I

    move-result v0

    .line 339
    .local v0, notificationUserId:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    if-ne v1, v0, :cond_1

    :cond_0
    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public preloadRecentApps()V
    .locals 2

    .prologue
    .line 446
    const/16 v0, 0x3fe

    .line 447
    .local v0, msg:I
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->removeMessages(I)V

    .line 448
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->sendEmptyMessage(I)Z

    .line 449
    return-void
.end method

.method protected preloadRecentTasksList()V
    .locals 4

    .prologue
    .line 671
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.systemui.recent.action.PRELOAD"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 672
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.android.systemui"

    const-string v2, "com.android.systemui.recent.RecentsPreloadReceiver"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 674
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/os/UserHandle;

    const/4 v3, -0x2

    invoke-direct {v2, v3}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 676
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/recent/RecentTasksLoader;->getInstance(Landroid/content/Context;)Lcom/android/systemui/recent/RecentTasksLoader;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/recent/RecentTasksLoader;->preloadFirstTask()V

    .line 677
    return-void
.end method

.method protected propagateDisabledFlags(I)V
    .locals 3
    .parameter "disabledFlags"

    .prologue
    .line 1223
    iget-object v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNavigationCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/BaseStatusBar$NavigationBarCallback;

    .line 1224
    .local v0, callback:Lcom/android/systemui/statusbar/BaseStatusBar$NavigationBarCallback;
    invoke-interface {v0, p1}, Lcom/android/systemui/statusbar/BaseStatusBar$NavigationBarCallback;->setDisabledFlags(I)V

    goto :goto_0

    .line 1226
    .end local v0           #callback:Lcom/android/systemui/statusbar/BaseStatusBar$NavigationBarCallback;
    :cond_0
    return-void
.end method

.method protected propagateMenuVisibility(Z)V
    .locals 3
    .parameter "showMenu"

    .prologue
    .line 1217
    iget-object v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNavigationCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/BaseStatusBar$NavigationBarCallback;

    .line 1218
    .local v0, callback:Lcom/android/systemui/statusbar/BaseStatusBar$NavigationBarCallback;
    invoke-interface {v0, p1}, Lcom/android/systemui/statusbar/BaseStatusBar$NavigationBarCallback;->setMenuVisibility(Z)V

    goto :goto_0

    .line 1220
    .end local v0           #callback:Lcom/android/systemui/statusbar/BaseStatusBar$NavigationBarCallback;
    :cond_0
    return-void
.end method

.method protected propagateNavigationIconHints(I)V
    .locals 3
    .parameter "hints"

    .prologue
    .line 1211
    iget-object v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNavigationCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/BaseStatusBar$NavigationBarCallback;

    .line 1212
    .local v0, callback:Lcom/android/systemui/statusbar/BaseStatusBar$NavigationBarCallback;
    invoke-interface {v0, p1}, Lcom/android/systemui/statusbar/BaseStatusBar$NavigationBarCallback;->setNavigationIconHints(I)V

    goto :goto_0

    .line 1214
    .end local v0           #callback:Lcom/android/systemui/statusbar/BaseStatusBar$NavigationBarCallback;
    :cond_0
    return-void
.end method

.method protected removeNotificationViews(Landroid/os/IBinder;)Lcom/android/internal/statusbar/StatusBarNotification;
    .locals 3
    .parameter

    .prologue
    .line 934
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/NotificationData;->remove(Landroid/os/IBinder;)Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v1

    .line 935
    if-nez v1, :cond_0

    .line 936
    const-string v0, "StatusBar"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeNotification for unknown key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 937
    const/4 v0, 0x0

    .line 945
    :goto_0
    return-object v0

    .line 940
    :cond_0
    iget-object v0, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 941
    if-eqz v0, :cond_1

    iget-object v2, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 942
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->updateExpansionStates()V

    .line 943
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->updateNotificationIcons()V

    .line 945
    iget-object v0, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/internal/statusbar/StatusBarNotification;

    goto :goto_0
.end method

.method protected abstract setAreThereNotifications()V
.end method

.method protected abstract shouldDisableNavbarGestures()Z
.end method

.method protected showNotificationEvenIfUnprovisioned(Lcom/android/internal/statusbar/StatusBarNotification;)Z
    .locals 7
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1178
    const-string v2, "android"

    iget-object v3, p1, Lcom/android/internal/statusbar/StatusBarNotification;->pkg:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1179
    iget-object v2, p1, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    iget-object v2, v2, Landroid/app/Notification;->kind:[Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 1180
    iget-object v2, p1, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    iget-object v3, v2, Landroid/app/Notification;->kind:[Ljava/lang/String;

    array-length v4, v3

    move v2, v1

    :goto_0
    if-ge v2, v4, :cond_2

    aget-object v5, v3, v2

    .line 1182
    const-string v6, "android.system.imeswitcher"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1188
    :cond_0
    :goto_1
    return v0

    .line 1184
    :cond_1
    const-string v6, "android.system.update"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1180
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    .line 1188
    goto :goto_1
.end method

.method public showSearchPanel()V
    .locals 2

    .prologue
    .line 460
    const/16 v0, 0x400

    .line 461
    .local v0, msg:I
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->removeMessages(I)V

    .line 462
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->sendEmptyMessage(I)Z

    .line 463
    return-void
.end method

.method public start()V
    .locals 15

    .prologue
    const/4 v12, 0x1

    const/4 v13, 0x0

    .line 231
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mWindowManager:Landroid/view/WindowManager;

    .line 232
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mWindowManagerService:Landroid/view/IWindowManager;

    .line 233
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mDisplay:Landroid/view/Display;

    .line 235
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mProvisioningObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v13}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 236
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "device_provisioned"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v14, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mProvisioningObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v12, v14}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 240
    const-string v0, "statusbar"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    .line 243
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "status_bar_notif_count"

    invoke-static {v0, v1, v13}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v12, :cond_1

    move v0, v12

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mShowNotificationCounts:Z

    .line 246
    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mStatusBarContainer:Landroid/widget/FrameLayout;

    .line 249
    new-instance v2, Lcom/android/internal/statusbar/StatusBarIconList;

    invoke-direct {v2}, Lcom/android/internal/statusbar/StatusBarIconList;-><init>()V

    .line 250
    .local v2, iconList:Lcom/android/internal/statusbar/StatusBarIconList;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 251
    .local v3, notificationKeys:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/IBinder;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 252
    .local v4, notifications:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/statusbar/StatusBarNotification;>;"
    new-instance v0, Lcom/android/systemui/statusbar/CommandQueue;

    invoke-direct {v0, p0, v2}, Lcom/android/systemui/statusbar/CommandQueue;-><init>(Lcom/android/systemui/statusbar/CommandQueue$Callbacks;Lcom/android/internal/statusbar/StatusBarIconList;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    .line 254
    const/4 v0, 0x7

    new-array v5, v0, [I

    .line 255
    .local v5, switches:[I
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 257
    .local v6, binders:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/IBinder;>;"
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-interface/range {v0 .. v6}, Lcom/android/internal/statusbar/IStatusBarService;->registerStatusBar(Lcom/android/internal/statusbar/IStatusBar;Lcom/android/internal/statusbar/StatusBarIconList;Ljava/util/List;Ljava/util/List;[ILjava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 263
    :goto_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->createAndAddWindows()V

    .line 265
    aget v0, v5, v13

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/BaseStatusBar;->disable(I)V

    .line 266
    aget v0, v5, v12

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/BaseStatusBar;->setSystemUiVisibility(II)V

    .line 267
    const/4 v0, 0x2

    aget v0, v5, v0

    if-eqz v0, :cond_2

    move v0, v12

    :goto_2
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/BaseStatusBar;->topAppWindowChanged(Z)V

    .line 269
    invoke-virtual {v6, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    const/4 v1, 0x3

    aget v1, v5, v1

    const/4 v14, 0x4

    aget v14, v5, v14

    invoke-virtual {p0, v0, v1, v14}, Lcom/android/systemui/statusbar/BaseStatusBar;->setImeWindowStatus(Landroid/os/IBinder;II)V

    .line 270
    const/4 v0, 0x5

    aget v0, v5, v0

    if-eqz v0, :cond_3

    move v0, v12

    :goto_3
    const/4 v1, 0x6

    aget v1, v5, v1

    if-eqz v1, :cond_4

    :goto_4
    invoke-virtual {p0, v0, v12}, Lcom/android/systemui/statusbar/BaseStatusBar;->setHardKeyboardStatus(ZZ)V

    .line 273
    invoke-virtual {v2}, Lcom/android/internal/statusbar/StatusBarIconList;->size()I

    move-result v7

    .line 274
    .local v7, N:I
    const/4 v11, 0x0

    .line 275
    .local v11, viewIndex:I
    const/4 v9, 0x0

    .local v9, i:I
    :goto_5
    if-ge v9, v7, :cond_5

    .line 276
    invoke-virtual {v2, v9}, Lcom/android/internal/statusbar/StatusBarIconList;->getIcon(I)Lcom/android/internal/statusbar/StatusBarIcon;

    move-result-object v10

    .line 277
    .local v10, icon:Lcom/android/internal/statusbar/StatusBarIcon;
    if-eqz v10, :cond_0

    .line 278
    invoke-virtual {v2, v9}, Lcom/android/internal/statusbar/StatusBarIconList;->getSlot(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v9, v11, v10}, Lcom/android/systemui/statusbar/BaseStatusBar;->addIcon(Ljava/lang/String;IILcom/android/internal/statusbar/StatusBarIcon;)V

    .line 279
    add-int/lit8 v11, v11, 0x1

    .line 275
    :cond_0
    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    .end local v2           #iconList:Lcom/android/internal/statusbar/StatusBarIconList;
    .end local v3           #notificationKeys:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/IBinder;>;"
    .end local v4           #notifications:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/statusbar/StatusBarNotification;>;"
    .end local v5           #switches:[I
    .end local v6           #binders:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/IBinder;>;"
    .end local v7           #N:I
    .end local v9           #i:I
    .end local v10           #icon:Lcom/android/internal/statusbar/StatusBarIcon;
    .end local v11           #viewIndex:I
    :cond_1
    move v0, v13

    .line 243
    goto :goto_0

    .restart local v2       #iconList:Lcom/android/internal/statusbar/StatusBarIconList;
    .restart local v3       #notificationKeys:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/IBinder;>;"
    .restart local v4       #notifications:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/statusbar/StatusBarNotification;>;"
    .restart local v5       #switches:[I
    .restart local v6       #binders:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/IBinder;>;"
    :cond_2
    move v0, v13

    .line 267
    goto :goto_2

    :cond_3
    move v0, v13

    .line 270
    goto :goto_3

    :cond_4
    move v12, v13

    goto :goto_4

    .line 284
    .restart local v7       #N:I
    .restart local v9       #i:I
    .restart local v11       #viewIndex:I
    :cond_5
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 285
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v7, v0, :cond_6

    .line 286
    const/4 v9, 0x0

    :goto_6
    if-ge v9, v7, :cond_7

    .line 287
    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/statusbar/StatusBarNotification;

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/BaseStatusBar;->addNotification(Landroid/os/IBinder;Lcom/android/internal/statusbar/StatusBarNotification;)V

    .line 286
    add-int/lit8 v9, v9, 0x1

    goto :goto_6

    .line 290
    :cond_6
    const-string v0, "StatusBar"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Notification list length mismatch: keys="

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v12, " notifications="

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v12

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    :cond_7
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mCurrentUserId:I

    .line 307
    new-instance v8, Landroid/content/IntentFilter;

    invoke-direct {v8}, Landroid/content/IntentFilter;-><init>()V

    .line 308
    .local v8, filter:Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 309
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/android/systemui/statusbar/BaseStatusBar$3;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/BaseStatusBar$3;-><init>(Lcom/android/systemui/statusbar/BaseStatusBar;)V

    invoke-virtual {v0, v1, v8}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 321
    invoke-static {}, Landroid/service/pie/PieManager;->getInstance()Landroid/service/pie/PieManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/pie/PieManager;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 322
    new-instance v0, Lcom/android/systemui/statusbar/policy/PieController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/policy/PieController;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mPieController:Lcom/android/systemui/statusbar/policy/PieController;

    .line 323
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mPieController:Lcom/android/systemui/statusbar/policy/PieController;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/policy/PieController;->attachStatusBar(Lcom/android/systemui/statusbar/BaseStatusBar;)V

    .line 324
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mPieController:Lcom/android/systemui/statusbar/policy/PieController;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/BaseStatusBar;->addNavigationBarCallback(Lcom/android/systemui/statusbar/BaseStatusBar$NavigationBarCallback;)V

    .line 326
    :cond_8
    return-void

    .line 259
    .end local v7           #N:I
    .end local v8           #filter:Landroid/content/IntentFilter;
    .end local v9           #i:I
    .end local v11           #viewIndex:I
    :catch_0
    move-exception v0

    goto/16 :goto_1
.end method

.method protected abstract tick(Landroid/os/IBinder;Lcom/android/internal/statusbar/StatusBarNotification;Z)V
.end method

.method public toggleRecentApps()V
    .locals 2

    .prologue
    .line 439
    const/16 v0, 0x3fc

    .line 440
    .local v0, msg:I
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->removeMessages(I)V

    .line 441
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->sendEmptyMessage(I)Z

    .line 442
    return-void
.end method

.method protected toggleRecentsActivity()V
    .locals 37

    .prologue
    .line 522
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    move-object/from16 v33, v0

    invoke-static/range {v33 .. v33}, Lcom/android/systemui/recent/RecentTasksLoader;->getInstance(Landroid/content/Context;)Lcom/android/systemui/recent/RecentTasksLoader;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Lcom/android/systemui/recent/RecentTasksLoader;->getFirstTask()Lcom/android/systemui/recent/TaskDescription;

    move-result-object v12

    .line 524
    .local v12, firstTask:Lcom/android/systemui/recent/TaskDescription;
    new-instance v14, Landroid/content/Intent;

    const-string v33, "com.android.systemui.recent.action.TOGGLE_RECENTS"

    move-object/from16 v0, v33

    invoke-direct {v14, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 525
    .local v14, intent:Landroid/content/Intent;
    const-string v33, "com.android.systemui"

    const-string v34, "com.android.systemui.recent.RecentsActivity"

    move-object/from16 v0, v33

    move-object/from16 v1, v34

    invoke-virtual {v14, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 527
    const/high16 v33, 0x1080

    move/from16 v0, v33

    invoke-virtual {v14, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 530
    if-nez v12, :cond_1

    .line 531
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    move-object/from16 v33, v0

    invoke-static/range {v33 .. v33}, Lcom/android/systemui/recent/RecentsActivity;->forceOpaqueBackground(Landroid/content/Context;)Z

    move-result v33

    if-eqz v33, :cond_0

    .line 532
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    move-object/from16 v33, v0

    const v34, 0x7f05000c

    const v35, 0x7f05000d

    invoke-static/range {v33 .. v35}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object v17

    .line 535
    .local v17, opts:Landroid/app/ActivityOptions;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    move-object/from16 v33, v0

    invoke-virtual/range {v17 .. v17}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v34

    new-instance v35, Landroid/os/UserHandle;

    const/16 v36, -0x2

    invoke-direct/range {v35 .. v36}, Landroid/os/UserHandle;-><init>(I)V

    move-object/from16 v0, v33

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    invoke-virtual {v0, v14, v1, v2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    .line 647
    .end local v12           #firstTask:Lcom/android/systemui/recent/TaskDescription;
    .end local v14           #intent:Landroid/content/Intent;
    .end local v17           #opts:Landroid/app/ActivityOptions;
    :goto_0
    return-void

    .line 539
    .restart local v12       #firstTask:Lcom/android/systemui/recent/TaskDescription;
    .restart local v14       #intent:Landroid/content/Intent;
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    move-object/from16 v33, v0

    new-instance v34, Landroid/os/UserHandle;

    const/16 v35, -0x2

    invoke-direct/range {v34 .. v35}, Landroid/os/UserHandle;-><init>(I)V

    move-object/from16 v0, v33

    move-object/from16 v1, v34

    invoke-virtual {v0, v14, v1}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 644
    .end local v12           #firstTask:Lcom/android/systemui/recent/TaskDescription;
    .end local v14           #intent:Landroid/content/Intent;
    :catch_0
    move-exception v10

    .line 645
    .local v10, e:Landroid/content/ActivityNotFoundException;
    const-string v33, "StatusBar"

    const-string v34, "Failed to launch RecentAppsIntent"

    move-object/from16 v0, v33

    move-object/from16 v1, v34

    invoke-static {v0, v1, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 544
    .end local v10           #e:Landroid/content/ActivityNotFoundException;
    .restart local v12       #firstTask:Lcom/android/systemui/recent/TaskDescription;
    .restart local v14       #intent:Landroid/content/Intent;
    :cond_1
    :try_start_1
    invoke-virtual {v12}, Lcom/android/systemui/recent/TaskDescription;->getThumbnail()Landroid/graphics/Bitmap;

    move-result-object v11

    .line 545
    .local v11, first:Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    .line 547
    .local v22, res:Landroid/content/res/Resources;
    const v33, 0x7f0e0003

    move-object/from16 v0, v22

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v33

    move/from16 v0, v33

    int-to-float v0, v0

    move/from16 v29, v0

    .line 549
    .local v29, thumbWidth:F
    const v33, 0x7f0e0004

    move-object/from16 v0, v22

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v33

    move/from16 v0, v33

    int-to-float v0, v0

    move/from16 v26, v0

    .line 551
    .local v26, thumbHeight:F
    if-nez v11, :cond_2

    .line 552
    new-instance v33, Ljava/lang/RuntimeException;

    const-string v34, "Recents thumbnail is null"

    invoke-direct/range {v33 .. v34}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v33

    .line 554
    :cond_2
    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v33

    move/from16 v0, v33

    int-to-float v0, v0

    move/from16 v33, v0

    cmpl-float v33, v33, v29

    if-nez v33, :cond_3

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v33

    move/from16 v0, v33

    int-to-float v0, v0

    move/from16 v33, v0

    cmpl-float v33, v33, v26

    if-eqz v33, :cond_4

    .line 555
    :cond_3
    move/from16 v0, v29

    float-to-int v0, v0

    move/from16 v33, v0

    move/from16 v0, v26

    float-to-int v0, v0

    move/from16 v34, v0

    const/16 v35, 0x1

    move/from16 v0, v33

    move/from16 v1, v34

    move/from16 v2, v35

    invoke-static {v11, v0, v1, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 557
    if-nez v11, :cond_4

    .line 558
    new-instance v33, Ljava/lang/RuntimeException;

    const-string v34, "Recents thumbnail is null"

    invoke-direct/range {v33 .. v34}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v33

    .line 563
    :cond_4
    new-instance v9, Landroid/util/DisplayMetrics;

    invoke-direct {v9}, Landroid/util/DisplayMetrics;-><init>()V

    .line 564
    .local v9, dm:Landroid/util/DisplayMetrics;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mDisplay:Landroid/view/Display;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    invoke-virtual {v0, v9}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 568
    invoke-virtual/range {v22 .. v22}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    .line 571
    .local v6, config:Landroid/content/res/Configuration;
    iget v0, v6, Landroid/content/res/Configuration;->orientation:I

    move/from16 v33, v0

    const/16 v34, 0x1

    move/from16 v0, v33

    move/from16 v1, v34

    if-ne v0, v1, :cond_5

    .line 572
    const v33, 0x7f0e000e

    move-object/from16 v0, v22

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v33

    move/from16 v0, v33

    int-to-float v4, v0

    .line 574
    .local v4, appLabelLeftMargin:F
    const v33, 0x7f0e000d

    move-object/from16 v0, v22

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v33

    move/from16 v0, v33

    int-to-float v5, v0

    .line 576
    .local v5, appLabelWidth:F
    const v33, 0x7f0e000b

    move-object/from16 v0, v22

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v33

    move/from16 v0, v33

    int-to-float v0, v0

    move/from16 v27, v0

    .line 578
    .local v27, thumbLeftMargin:F
    const v33, 0x7f0e0005

    move-object/from16 v0, v22

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v33

    move/from16 v0, v33

    int-to-float v0, v0

    move/from16 v25, v0

    .line 581
    .local v25, thumbBgPadding:F
    add-float v33, v4, v5

    add-float v33, v33, v27

    add-float v33, v33, v29

    const/high16 v34, 0x4000

    mul-float v34, v34, v25

    add-float v30, v33, v34

    .line 587
    .local v30, width:F
    iget v0, v9, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v33, v0

    move/from16 v0, v33

    int-to-float v0, v0

    move/from16 v33, v0

    sub-float v33, v33, v30

    const/high16 v34, 0x4000

    div-float v33, v33, v34

    add-float v33, v33, v4

    add-float v33, v33, v5

    add-float v33, v33, v25

    add-float v33, v33, v27

    move/from16 v0, v33

    float-to-int v0, v0

    move/from16 v31, v0

    .line 589
    .local v31, x:I
    iget v0, v9, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v33, v0

    const v34, 0x7f0e0004

    move-object/from16 v0, v22

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v34

    sub-int v33, v33, v34

    move/from16 v0, v33

    int-to-float v0, v0

    move/from16 v33, v0

    sub-float v33, v33, v25

    move/from16 v0, v33

    float-to-int v0, v0

    move/from16 v32, v0

    .line 629
    .end local v4           #appLabelLeftMargin:F
    .end local v5           #appLabelWidth:F
    .end local v27           #thumbLeftMargin:F
    .end local v30           #width:F
    .local v32, y:I
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->getStatusBarView()Landroid/view/View;

    move-result-object v33

    new-instance v34, Lcom/android/systemui/statusbar/BaseStatusBar$6;

    move-object/from16 v0, v34

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/BaseStatusBar$6;-><init>(Lcom/android/systemui/statusbar/BaseStatusBar;)V

    move-object/from16 v0, v33

    move/from16 v1, v31

    move/from16 v2, v32

    move-object/from16 v3, v34

    invoke-static {v0, v11, v1, v2, v3}, Landroid/app/ActivityOptions;->makeThumbnailScaleDownAnimation(Landroid/view/View;Landroid/graphics/Bitmap;IILandroid/app/ActivityOptions$OnAnimationStartedListener;)Landroid/app/ActivityOptions;

    move-result-object v17

    .line 639
    .restart local v17       #opts:Landroid/app/ActivityOptions;
    const-string v33, "com.android.systemui.recent.WAITING_FOR_WINDOW_ANIMATION"

    const/16 v34, 0x1

    move-object/from16 v0, v33

    move/from16 v1, v34

    invoke-virtual {v14, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 640
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    move-object/from16 v33, v0

    invoke-virtual/range {v17 .. v17}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v34

    new-instance v35, Landroid/os/UserHandle;

    const/16 v36, -0x2

    invoke-direct/range {v35 .. v36}, Landroid/os/UserHandle;-><init>(I)V

    move-object/from16 v0, v33

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    invoke-virtual {v0, v14, v1, v2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    goto/16 :goto_0

    .line 592
    .end local v17           #opts:Landroid/app/ActivityOptions;
    .end local v25           #thumbBgPadding:F
    .end local v31           #x:I
    .end local v32           #y:I
    :cond_5
    const v33, 0x7f0e0052

    move-object/from16 v0, v22

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v33

    move/from16 v0, v33

    int-to-float v0, v0

    move/from16 v28, v0

    .line 594
    .local v28, thumbTopMargin:F
    const v33, 0x7f0e0005

    move-object/from16 v0, v22

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v33

    move/from16 v0, v33

    int-to-float v0, v0

    move/from16 v25, v0

    .line 596
    .restart local v25       #thumbBgPadding:F
    const v33, 0x7f0e000c

    move-object/from16 v0, v22

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v33

    move/from16 v0, v33

    int-to-float v0, v0

    move/from16 v24, v0

    .line 598
    .local v24, textPadding:F
    const v33, 0x7f0e0006

    move-object/from16 v0, v22

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v33

    move/from16 v0, v33

    int-to-float v0, v0

    move/from16 v16, v0

    .line 600
    .local v16, labelTextSize:F
    new-instance v18, Landroid/graphics/Paint;

    invoke-direct/range {v18 .. v18}, Landroid/graphics/Paint;-><init>()V

    .line 601
    .local v18, p:Landroid/graphics/Paint;
    move-object/from16 v0, v18

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 602
    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v33

    move-object/from16 v0, v33

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    move/from16 v33, v0

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v34

    move-object/from16 v0, v34

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    move/from16 v34, v0

    sub-int v33, v33, v34

    move/from16 v0, v33

    int-to-float v15, v0

    .line 604
    .local v15, labelTextHeight:F
    const v33, 0x7f0e0007

    move-object/from16 v0, v22

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v33

    move/from16 v0, v33

    int-to-float v8, v0

    .line 606
    .local v8, descriptionTextSize:F
    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 607
    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v33

    move-object/from16 v0, v33

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    move/from16 v33, v0

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v34

    move-object/from16 v0, v34

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    move/from16 v34, v0

    sub-int v33, v33, v34

    move/from16 v0, v33

    int-to-float v7, v0

    .line 610
    .local v7, descriptionTextHeight:F
    const v33, 0x105000c

    move-object/from16 v0, v22

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v33

    move/from16 v0, v33

    int-to-float v0, v0

    move/from16 v23, v0

    .line 612
    .local v23, statusBarHeight:F
    move/from16 v20, v23

    .line 614
    .local v20, recentsItemTopPadding:F
    add-float v33, v28, v26

    const/high16 v34, 0x4000

    mul-float v34, v34, v25

    add-float v33, v33, v34

    add-float v33, v33, v24

    add-float v33, v33, v15

    add-float v33, v33, v20

    add-float v33, v33, v24

    add-float v13, v33, v7

    .line 618
    .local v13, height:F
    const v33, 0x7f0e000f

    move-object/from16 v0, v22

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v33

    move/from16 v0, v33

    int-to-float v0, v0

    move/from16 v19, v0

    .line 620
    .local v19, recentsItemRightPadding:F
    const v33, 0x7f0e000a

    move-object/from16 v0, v22

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v33

    move/from16 v0, v33

    int-to-float v0, v0

    move/from16 v21, v0

    .line 622
    .local v21, recentsScrollViewRightPadding:F
    iget v0, v9, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v33, v0

    const v34, 0x7f0e0003

    move-object/from16 v0, v22

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v34

    sub-int v33, v33, v34

    move/from16 v0, v33

    int-to-float v0, v0

    move/from16 v33, v0

    sub-float v33, v33, v25

    sub-float v33, v33, v19

    sub-float v33, v33, v21

    move/from16 v0, v33

    float-to-int v0, v0

    move/from16 v31, v0

    .line 625
    .restart local v31       #x:I
    iget v0, v9, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v33, v0
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move/from16 v0, v33

    int-to-float v0, v0

    move/from16 v33, v0

    sub-float v33, v33, v23

    sub-float v33, v33, v13

    const/high16 v34, 0x4000

    div-float v33, v33, v34

    add-float v33, v33, v28

    add-float v33, v33, v20

    add-float v33, v33, v25

    add-float v33, v33, v23

    move/from16 v0, v33

    float-to-int v0, v0

    move/from16 v32, v0

    .restart local v32       #y:I
    goto/16 :goto_1
.end method

.method protected abstract updateExpandedViewPos(I)V
.end method

.method protected updateExpansionStates()V
    .locals 4

    .prologue
    .line 1004
    iget-object v3, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/NotificationData;->size()I

    move-result v0

    .line 1005
    .local v0, N:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 1006
    iget-object v3, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v3, v2}, Lcom/android/systemui/statusbar/NotificationData;->get(I)Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v1

    .line 1007
    .local v1, entry:Lcom/android/systemui/statusbar/NotificationData$Entry;
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/NotificationData$Entry;->userLocked()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1008
    add-int/lit8 v3, v0, -0x1

    if-ne v2, v3, :cond_1

    .line 1010
    const/4 v3, 0x1

    invoke-virtual {p0, v1, v3}, Lcom/android/systemui/statusbar/BaseStatusBar;->expandView(Lcom/android/systemui/statusbar/NotificationData$Entry;Z)Z

    .line 1005
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1012
    :cond_1
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/NotificationData$Entry;->userExpanded()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1014
    const/4 v3, 0x0

    invoke-virtual {p0, v1, v3}, Lcom/android/systemui/statusbar/BaseStatusBar;->expandView(Lcom/android/systemui/statusbar/NotificationData$Entry;Z)Z

    goto :goto_1

    .line 1023
    .end local v1           #entry:Lcom/android/systemui/statusbar/NotificationData$Entry;
    :cond_2
    return-void
.end method

.method public updateNotification(Landroid/os/IBinder;Lcom/android/internal/statusbar/StatusBarNotification;)V
    .locals 12
    .parameter
    .parameter

    .prologue
    .line 1040
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/NotificationData;->findByKey(Landroid/os/IBinder;)Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v8

    .line 1041
    if-nez v8, :cond_0

    .line 1042
    const-string v0, "StatusBar"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateNotification for unknown key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1172
    :goto_0
    return-void

    .line 1046
    :cond_0
    iget-object v3, v8, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/internal/statusbar/StatusBarNotification;

    .line 1049
    iget-object v0, v3, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 1050
    iget-object v1, p2, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    iget-object v9, v1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 1051
    iget-object v1, v3, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    iget-object v2, v1, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    .line 1052
    iget-object v1, p2, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    iget-object v5, v1, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    .line 1071
    iget-object v1, v8, Lcom/android/systemui/statusbar/NotificationData$Entry;->expanded:Landroid/view/View;

    if-eqz v1, :cond_7

    invoke-virtual {v9}, Landroid/widget/RemoteViews;->getPackage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-virtual {v0}, Landroid/widget/RemoteViews;->getPackage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-virtual {v0}, Landroid/widget/RemoteViews;->getPackage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9}, Landroid/widget/RemoteViews;->getPackage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {v0}, Landroid/widget/RemoteViews;->getLayoutId()I

    move-result v0

    invoke-virtual {v9}, Landroid/widget/RemoteViews;->getLayoutId()I

    move-result v1

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    move v1, v0

    .line 1077
    :goto_1
    invoke-virtual {v8}, Lcom/android/systemui/statusbar/NotificationData$Entry;->getLargeView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    if-eqz v5, :cond_2

    :cond_1
    invoke-virtual {v8}, Lcom/android/systemui/statusbar/NotificationData$Entry;->getLargeView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_8

    if-eqz v5, :cond_8

    invoke-virtual {v5}, Landroid/widget/RemoteViews;->getPackage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {v2}, Landroid/widget/RemoteViews;->getPackage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {v2}, Landroid/widget/RemoteViews;->getPackage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5}, Landroid/widget/RemoteViews;->getPackage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {v2}, Landroid/widget/RemoteViews;->getLayoutId()I

    move-result v0

    invoke-virtual {v5}, Landroid/widget/RemoteViews;->getLayoutId()I

    move-result v2

    if-ne v0, v2, :cond_8

    :cond_2
    const/4 v0, 0x1

    move v2, v0

    .line 1084
    :goto_2
    iget-object v0, v8, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 1085
    iget-object v4, p2, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    iget-wide v6, v4, Landroid/app/Notification;->when:J

    iget-object v4, v3, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    iget-wide v10, v4, Landroid/app/Notification;->when:J

    cmp-long v4, v6, v10

    if-nez v4, :cond_9

    iget v4, p2, Lcom/android/internal/statusbar/StatusBarNotification;->score:I

    iget v3, v3, Lcom/android/internal/statusbar/StatusBarNotification;->score:I

    if-ne v4, v3, :cond_9

    const/4 v3, 0x1

    .line 1089
    :goto_3
    iget-object v4, p2, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    iget-object v4, v4, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    if-eqz v4, :cond_a

    iget-object v4, p2, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    iget-object v4, v4, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    iget-object v6, v8, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/internal/statusbar/StatusBarNotification;

    iget-object v6, v6, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    iget-object v6, v6, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    invoke-static {v4, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_a

    const/4 v4, 0x1

    move v7, v4

    .line 1092
    :goto_4
    invoke-virtual {p0, v0, v8}, Lcom/android/systemui/statusbar/BaseStatusBar;->isTopNotification(Landroid/view/ViewGroup;Lcom/android/systemui/statusbar/NotificationData$Entry;)Z

    move-result v0

    .line 1093
    if-eqz v1, :cond_d

    if-eqz v2, :cond_d

    if-nez v3, :cond_3

    if-eqz v0, :cond_d

    .line 1095
    :cond_3
    iput-object p2, v8, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/internal/statusbar/StatusBarNotification;

    .line 1098
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    iget-object v1, v8, Lcom/android/systemui/statusbar/NotificationData$Entry;->expanded:Landroid/view/View;

    iget-object v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mOnClickHandler:Landroid/widget/RemoteViews$OnClickHandler;

    invoke-virtual {v9, v0, v1, v2}, Landroid/widget/RemoteViews;->reapply(Landroid/content/Context;Landroid/view/View;Landroid/widget/RemoteViews$OnClickHandler;)V

    .line 1099
    if-eqz v5, :cond_4

    invoke-virtual {v8}, Lcom/android/systemui/statusbar/NotificationData$Entry;->getLargeView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 1100
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Lcom/android/systemui/statusbar/NotificationData$Entry;->getLargeView()Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mOnClickHandler:Landroid/widget/RemoteViews$OnClickHandler;

    invoke-virtual {v5, v0, v1, v2}, Landroid/widget/RemoteViews;->reapply(Landroid/content/Context;Landroid/view/View;Landroid/widget/RemoteViews$OnClickHandler;)V

    .line 1103
    :cond_4
    iget-object v0, p2, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 1104
    if-eqz v0, :cond_b

    .line 1105
    iget-object v1, p2, Lcom/android/internal/statusbar/StatusBarNotification;->pkg:Ljava/lang/String;

    iget-object v2, p2, Lcom/android/internal/statusbar/StatusBarNotification;->tag:Ljava/lang/String;

    iget v3, p2, Lcom/android/internal/statusbar/StatusBarNotification;->id:I

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/systemui/statusbar/BaseStatusBar;->makeClicker(Landroid/app/PendingIntent;Ljava/lang/String;Ljava/lang/String;I)Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;

    move-result-object v0

    .line 1107
    iget-object v1, v8, Lcom/android/systemui/statusbar/NotificationData$Entry;->content:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1112
    :goto_5
    new-instance v0, Lcom/android/internal/statusbar/StatusBarIcon;

    iget-object v1, p2, Lcom/android/internal/statusbar/StatusBarNotification;->pkg:Ljava/lang/String;

    iget-object v2, p2, Lcom/android/internal/statusbar/StatusBarNotification;->user:Landroid/os/UserHandle;

    iget-object v3, p2, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    iget v3, v3, Landroid/app/Notification;->icon:I

    iget-object v4, p2, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    iget v4, v4, Landroid/app/Notification;->iconLevel:I

    iget-object v5, p2, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    iget v5, v5, Landroid/app/Notification;->number:I

    iget-object v6, p2, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    iget-object v6, v6, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/statusbar/StatusBarIcon;-><init>(Ljava/lang/String;Landroid/os/UserHandle;IIILjava/lang/CharSequence;)V

    .line 1117
    iget-object v1, v8, Lcom/android/systemui/statusbar/NotificationData$Entry;->icon:Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/StatusBarIconView;->set(Lcom/android/internal/statusbar/StatusBarIcon;)Z

    move-result v1

    if-nez v1, :cond_c

    .line 1118
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Couldn\'t update icon: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/BaseStatusBar;->handleNotificationError(Landroid/os/IBinder;Lcom/android/internal/statusbar/StatusBarNotification;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 1123
    :catch_0
    move-exception v0

    .line 1125
    const-string v1, "StatusBar"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Couldn\'t reapply views for package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v9}, Landroid/widget/RemoteViews;->getPackage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1126
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/BaseStatusBar;->removeNotificationViews(Landroid/os/IBinder;)Lcom/android/internal/statusbar/StatusBarNotification;

    .line 1127
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/BaseStatusBar;->addNotificationViews(Landroid/os/IBinder;Lcom/android/internal/statusbar/StatusBarNotification;)Lcom/android/systemui/statusbar/StatusBarIconView;

    .line 1146
    :cond_5
    :goto_6
    iget-object v0, v8, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Landroid/view/View;

    invoke-virtual {p0, v0, p2}, Lcom/android/systemui/statusbar/BaseStatusBar;->updateNotificationVetoButton(Landroid/view/View;Lcom/android/internal/statusbar/StatusBarNotification;)Landroid/view/View;

    .line 1149
    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/BaseStatusBar;->notificationIsForCurrentUser(Lcom/android/internal/statusbar/StatusBarNotification;)Z

    move-result v0

    .line 1153
    if-eqz v7, :cond_6

    if-eqz v0, :cond_6

    .line 1154
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->haltTicker()V

    .line 1155
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/BaseStatusBar;->tick(Landroid/os/IBinder;Lcom/android/internal/statusbar/StatusBarNotification;Z)V

    .line 1159
    :cond_6
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->setAreThereNotifications()V

    .line 1160
    const/16 v0, -0x2710

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/BaseStatusBar;->updateExpandedViewPos(I)V

    goto/16 :goto_0

    .line 1071
    :cond_7
    const/4 v0, 0x0

    move v1, v0

    goto/16 :goto_1

    .line 1077
    :cond_8
    const/4 v0, 0x0

    move v2, v0

    goto/16 :goto_2

    .line 1085
    :cond_9
    const/4 v3, 0x0

    goto/16 :goto_3

    .line 1089
    :cond_a
    const/4 v4, 0x0

    move v7, v4

    goto/16 :goto_4

    .line 1109
    :cond_b
    :try_start_1
    iget-object v0, v8, Lcom/android/systemui/statusbar/NotificationData$Entry;->content:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_5

    .line 1121
    :cond_c
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->updateExpansionStates()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_6

    .line 1134
    :cond_d
    invoke-virtual {v8}, Lcom/android/systemui/statusbar/NotificationData$Entry;->userExpanded()Z

    move-result v0

    .line 1135
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/BaseStatusBar;->removeNotificationViews(Landroid/os/IBinder;)Lcom/android/internal/statusbar/StatusBarNotification;

    .line 1136
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/BaseStatusBar;->addNotificationViews(Landroid/os/IBinder;Lcom/android/internal/statusbar/StatusBarNotification;)Lcom/android/systemui/statusbar/StatusBarIconView;

    .line 1137
    if-eqz v0, :cond_5

    .line 1138
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/NotificationData;->findByKey(Landroid/os/IBinder;)Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v0

    .line 1139
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/BaseStatusBar;->expandView(Lcom/android/systemui/statusbar/NotificationData$Entry;Z)Z

    .line 1140
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/NotificationData$Entry;->setUserExpanded(Z)Z

    goto :goto_6
.end method

.method protected abstract updateNotificationIcons()V
.end method

.method protected updateNotificationVetoButton(Landroid/view/View;Lcom/android/internal/statusbar/StatusBarNotification;)Landroid/view/View;
    .locals 5
    .parameter "row"
    .parameter "n"

    .prologue
    .line 344
    const v4, 0x7f090074

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 345
    .local v3, vetoButton:Landroid/view/View;
    invoke-virtual {p2}, Lcom/android/internal/statusbar/StatusBarNotification;->isClearable()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 346
    iget-object v1, p2, Lcom/android/internal/statusbar/StatusBarNotification;->pkg:Ljava/lang/String;

    .line 347
    .local v1, _pkg:Ljava/lang/String;
    iget-object v2, p2, Lcom/android/internal/statusbar/StatusBarNotification;->tag:Ljava/lang/String;

    .line 348
    .local v2, _tag:Ljava/lang/String;
    iget v0, p2, Lcom/android/internal/statusbar/StatusBarNotification;->id:I

    .line 349
    .local v0, _id:I
    new-instance v4, Lcom/android/systemui/statusbar/BaseStatusBar$4;

    invoke-direct {v4, p0, v1, v2, v0}, Lcom/android/systemui/statusbar/BaseStatusBar$4;-><init>(Lcom/android/systemui/statusbar/BaseStatusBar;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 362
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 366
    .end local v0           #_id:I
    .end local v1           #_pkg:Ljava/lang/String;
    .end local v2           #_tag:Ljava/lang/String;
    :goto_0
    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 367
    return-object v3

    .line 364
    :cond_0
    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public updatePieTriggerMask(I)V
    .locals 1
    .parameter "newMask"

    .prologue
    .line 1231
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mPieController:Lcom/android/systemui/statusbar/policy/PieController;

    if-eqz v0, :cond_0

    .line 1232
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mPieController:Lcom/android/systemui/statusbar/policy/PieController;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/policy/PieController;->updatePieTriggerMask(I)V

    .line 1234
    :cond_0
    return-void
.end method

.method protected updateSearchPanel()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 481
    const/4 v2, 0x0

    .line 482
    .local v2, visible:Z
    iget-object v3, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mSearchPanelView:Lcom/android/systemui/SearchPanelView;

    if-eqz v3, :cond_0

    .line 483
    iget-object v3, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mSearchPanelView:Lcom/android/systemui/SearchPanelView;

    invoke-virtual {v3}, Lcom/android/systemui/SearchPanelView;->isShowing()Z

    move-result v2

    .line 484
    iget-object v3, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mWindowManager:Landroid/view/WindowManager;

    iget-object v4, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mSearchPanelView:Lcom/android/systemui/SearchPanelView;

    invoke-interface {v3, v4}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 488
    :cond_0
    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-direct {v1, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 489
    .local v1, tmpRoot:Landroid/widget/LinearLayout;
    iget-object v3, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f04002b

    invoke-virtual {v3, v4, v1, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/SearchPanelView;

    iput-object v3, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mSearchPanelView:Lcom/android/systemui/SearchPanelView;

    .line 491
    iget-object v3, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mSearchPanelView:Lcom/android/systemui/SearchPanelView;

    new-instance v4, Lcom/android/systemui/statusbar/BaseStatusBar$TouchOutsideListener;

    const/16 v5, 0x401

    iget-object v6, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mSearchPanelView:Lcom/android/systemui/SearchPanelView;

    invoke-direct {v4, p0, v5, v6}, Lcom/android/systemui/statusbar/BaseStatusBar$TouchOutsideListener;-><init>(Lcom/android/systemui/statusbar/BaseStatusBar;ILcom/android/systemui/statusbar/tablet/StatusBarPanel;)V

    invoke-virtual {v3, v4}, Lcom/android/systemui/SearchPanelView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 493
    iget-object v3, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mSearchPanelView:Lcom/android/systemui/SearchPanelView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Lcom/android/systemui/SearchPanelView;->setVisibility(I)V

    .line 495
    iget-object v3, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mSearchPanelView:Lcom/android/systemui/SearchPanelView;

    invoke-virtual {v3}, Lcom/android/systemui/SearchPanelView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/BaseStatusBar;->getSearchLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 497
    .local v0, lp:Landroid/view/WindowManager$LayoutParams;
    iget-object v3, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mWindowManager:Landroid/view/WindowManager;

    iget-object v4, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mSearchPanelView:Lcom/android/systemui/SearchPanelView;

    invoke-interface {v3, v4, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 498
    iget-object v3, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mSearchPanelView:Lcom/android/systemui/SearchPanelView;

    invoke-virtual {v3, p0}, Lcom/android/systemui/SearchPanelView;->setBar(Lcom/android/systemui/statusbar/BaseStatusBar;)V

    .line 499
    if-eqz v2, :cond_1

    .line 500
    iget-object v3, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mSearchPanelView:Lcom/android/systemui/SearchPanelView;

    const/4 v4, 0x1

    invoke-virtual {v3, v4, v7}, Lcom/android/systemui/SearchPanelView;->show(ZZ)V

    .line 502
    :cond_1
    return-void
.end method

.method public userSwitched(I)V
    .locals 0
    .parameter "newUserId"

    .prologue
    .line 330
    return-void
.end method

.method protected visibilityChanged(Z)V
    .locals 1
    .parameter "visible"

    .prologue
    .line 908
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mPanelSlightlyVisible:Z

    if-eq v0, p1, :cond_0

    .line 909
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mPanelSlightlyVisible:Z

    .line 911
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-interface {v0}, Lcom/android/internal/statusbar/IStatusBarService;->onPanelRevealed()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 916
    :cond_0
    :goto_0
    return-void

    .line 912
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected workAroundBadLayerDrawableOpacity(Landroid/view/View;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 748
    return-void
.end method
