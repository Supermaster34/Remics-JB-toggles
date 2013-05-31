.class public Lcom/android/systemui/statusbar/phone/NavigationBarView;
.super Landroid/widget/LinearLayout;
.source "NavigationBarView.java"

# interfaces
.implements Lcom/android/systemui/statusbar/BaseStatusBar$NavigationBarCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/NavigationBarView$NavBarReceiver;,
        Lcom/android/systemui/statusbar/phone/NavigationBarView$H;
    }
.end annotation


# static fields
.field private static EDIT_MODE:Z


# instance fields
.field private mBackAltIcon:Landroid/graphics/drawable/Drawable;

.field private mBackAltLandIcon:Landroid/graphics/drawable/Drawable;

.field private mBackIcon:Landroid/graphics/drawable/Drawable;

.field private mBackLandIcon:Landroid/graphics/drawable/Drawable;

.field protected mBarService:Lcom/android/internal/statusbar/IStatusBarService;

.field mBarSize:I

.field mCurrentView:Landroid/view/View;

.field private mDeadZone:Lcom/android/systemui/statusbar/policy/DeadZone;

.field private mDelegateHelper:Lcom/android/systemui/statusbar/DelegateViewHelper;

.field mDisabledFlags:I

.field final mDisplay:Landroid/view/Display;

.field private mEditBar:Lcom/android/systemui/statusbar/phone/NavbarEditor;

.field private mHandler:Lcom/android/systemui/statusbar/phone/NavigationBarView$H;

.field mHidden:Z

.field private mHomeSearchActionListener:Landroid/view/View$OnTouchListener;

.field mLightsOutListener:Landroid/view/View$OnTouchListener;

.field mLowProfile:Z

.field private mNavBarReceiver:Lcom/android/systemui/statusbar/phone/NavigationBarView$NavBarReceiver;

.field mNavigationIconHints:I

.field private mRecentsClickListener:Landroid/view/View$OnClickListener;

.field private mRecentsPreloadListener:Landroid/view/View$OnTouchListener;

.field mRotatedViews:[Landroid/view/View;

.field mScreenOn:Z

.field mShowMenu:Z

.field mVertical:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 184
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 79
    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mCurrentView:Landroid/view/View;

    .line 80
    const/4 v1, 0x4

    new-array v1, v1, [Landroid/view/View;

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mRotatedViews:[Landroid/view/View;

    .line 87
    iput v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDisabledFlags:I

    .line 88
    iput v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mNavigationIconHints:I

    .line 147
    new-instance v1, Lcom/android/systemui/statusbar/phone/NavigationBarView$H;

    invoke-direct {v1, p0, v3}, Lcom/android/systemui/statusbar/phone/NavigationBarView$H;-><init>(Lcom/android/systemui/statusbar/phone/NavigationBarView;Lcom/android/systemui/statusbar/phone/NavigationBarView$1;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mHandler:Lcom/android/systemui/statusbar/phone/NavigationBarView$H;

    .line 247
    new-instance v1, Lcom/android/systemui/statusbar/phone/NavigationBarView$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView$1;-><init>(Lcom/android/systemui/statusbar/phone/NavigationBarView;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mLightsOutListener:Landroid/view/View$OnTouchListener;

    .line 186
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mHidden:Z

    .line 188
    const-string v1, "window"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDisplay:Landroid/view/Display;

    .line 190
    const-string v1, "statusbar"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    .line 193
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 194
    .local v0, res:Landroid/content/res/Resources;
    const v1, 0x7f0e0014

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mBarSize:I

    .line 195
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mVertical:Z

    .line 196
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mShowMenu:Z

    .line 197
    new-instance v1, Lcom/android/systemui/statusbar/DelegateViewHelper;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/DelegateViewHelper;-><init>(Landroid/view/View;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDelegateHelper:Lcom/android/systemui/statusbar/DelegateViewHelper;

    .line 198
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->updateResources()V

    .line 200
    new-instance v1, Lcom/android/systemui/statusbar/phone/NavigationBarView$NavBarReceiver;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView$NavBarReceiver;-><init>(Lcom/android/systemui/statusbar/phone/NavigationBarView;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mNavBarReceiver:Lcom/android/systemui/statusbar/phone/NavigationBarView$NavBarReceiver;

    .line 201
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mNavBarReceiver:Lcom/android/systemui/statusbar/phone/NavigationBarView$NavBarReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.NAVBAR_EDIT"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 202
    return-void
.end method

.method static synthetic access$100()Z
    .locals 1

    .prologue
    .line 58
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->EDIT_MODE:Z

    return v0
.end method

.method static synthetic access$102(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 58
    sput-boolean p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->EDIT_MODE:Z

    return p0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/phone/NavigationBarView;)Lcom/android/systemui/statusbar/phone/NavbarEditor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mEditBar:Lcom/android/systemui/statusbar/phone/NavbarEditor;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/systemui/statusbar/phone/NavigationBarView;Lcom/android/systemui/statusbar/phone/NavbarEditor;)Lcom/android/systemui/statusbar/phone/NavbarEditor;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mEditBar:Lcom/android/systemui/statusbar/phone/NavbarEditor;

    return-object p1
.end method

.method public static getEditMode()Z
    .locals 1

    .prologue
    .line 150
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->EDIT_MODE:Z

    return v0
.end method

.method private getResourceName(I)Ljava/lang/String;
    .locals 3
    .parameter "resId"

    .prologue
    .line 520
    if-eqz p1, :cond_0

    .line 521
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 523
    .local v1, res:Landroid/content/res/Resources;
    :try_start_0
    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 528
    .end local v1           #res:Landroid/content/res/Resources;
    :goto_0
    return-object v2

    .line 524
    .restart local v1       #res:Landroid/content/res/Resources;
    :catch_0
    move-exception v0

    .line 525
    .local v0, ex:Landroid/content/res/Resources$NotFoundException;
    const-string v2, "(unknown)"

    goto :goto_0

    .line 528
    .end local v0           #ex:Landroid/content/res/Resources$NotFoundException;
    .end local v1           #res:Landroid/content/res/Resources;
    :cond_0
    const-string v2, "(null)"

    goto :goto_0
.end method

.method private postCheckForInvalidLayout(Ljava/lang/String;)V
    .locals 3
    .parameter "how"

    .prologue
    const/4 v2, 0x0

    .line 533
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mHandler:Lcom/android/systemui/statusbar/phone/NavigationBarView$H;

    const/16 v1, 0x21ee

    invoke-virtual {v0, v1, v2, v2, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarView$H;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 534
    return-void
.end method

.method private setButtonWithTagVisibility(Lcom/android/systemui/statusbar/NavigationButtons$ButtonInfo;I)V
    .locals 2
    .parameter "type"
    .parameter "visibility"

    .prologue
    .line 172
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mCurrentView:Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    .line 173
    .local v0, findView:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 174
    invoke-virtual {v0, p2}, Landroid/view/View;->setVisibility(I)V

    .line 176
    :cond_0
    return-void
.end method

.method private static visibilityToString(I)Ljava/lang/String;
    .locals 1
    .parameter "vis"

    .prologue
    .line 537
    sparse-switch p0, :sswitch_data_0

    .line 543
    const-string v0, "VISIBLE"

    :goto_0
    return-object v0

    .line 539
    :sswitch_0
    const-string v0, "INVISIBLE"

    goto :goto_0

    .line 541
    :sswitch_1
    const-string v0, "GONE"

    goto :goto_0

    .line 537
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x8 -> :sswitch_1
    .end sparse-switch
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 10
    .parameter "fd"
    .parameter "pw"
    .parameter "args"

    .prologue
    .line 548
    const-string v6, "NavigationBarView {"

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 549
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 550
    .local v3, r:Landroid/graphics/Rect;
    new-instance v5, Landroid/graphics/Point;

    invoke-direct {v5}, Landroid/graphics/Point;-><init>()V

    .line 551
    .local v5, size:Landroid/graphics/Point;
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDisplay:Landroid/view/Display;

    invoke-virtual {v6, v5}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 553
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "      this: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->viewInfo(Landroid/view/View;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getVisibility()I

    move-result v7

    invoke-static {v7}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->visibilityToString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 556
    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 557
    iget v6, v3, Landroid/graphics/Rect;->right:I

    iget v7, v5, Landroid/graphics/Point;->x:I

    if-gt v6, v7, :cond_0

    iget v6, v3, Landroid/graphics/Rect;->bottom:I

    iget v7, v5, Landroid/graphics/Point;->y:I

    if-le v6, v7, :cond_1

    :cond_0
    const/4 v2, 0x1

    .line 558
    .local v2, offscreen:Z
    :goto_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "      window: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getWindowVisibility()I

    move-result v7

    invoke-static {v7}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->visibilityToString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    if-eqz v2, :cond_2

    const-string v6, " OFFSCREEN!"

    :goto_1
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 563
    const-string v6, "      mCurrentView: id=%s (%dx%d) %s"

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mCurrentView:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getId()I

    move-result v9

    invoke-direct {p0, v9}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getResourceName(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mCurrentView:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getWidth()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mCurrentView:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getHeight()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x3

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mCurrentView:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getVisibility()I

    move-result v9

    invoke-static {v9}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->visibilityToString(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 568
    const-string v7, "      disabled=0x%08x vertical=%s hidden=%s low=%s menu=%s"

    const/4 v6, 0x5

    new-array v8, v6, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget v9, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDisabledFlags:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v6

    const/4 v9, 0x1

    iget-boolean v6, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mVertical:Z

    if-eqz v6, :cond_3

    const-string v6, "true"

    :goto_2
    aput-object v6, v8, v9

    const/4 v9, 0x2

    iget-boolean v6, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mHidden:Z

    if-eqz v6, :cond_4

    const-string v6, "true"

    :goto_3
    aput-object v6, v8, v9

    const/4 v9, 0x3

    iget-boolean v6, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mLowProfile:Z

    if-eqz v6, :cond_5

    const-string v6, "true"

    :goto_4
    aput-object v6, v8, v9

    const/4 v9, 0x4

    iget-boolean v6, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mShowMenu:Z

    if-eqz v6, :cond_6

    const-string v6, "true"

    :goto_5
    aput-object v6, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 575
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mCurrentView:Landroid/view/View;

    const-string v7, "back"

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    .line 576
    .local v0, back:Landroid/view/View;
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mCurrentView:Landroid/view/View;

    const-string v7, "home"

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v1

    .line 577
    .local v1, home:Landroid/view/View;
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mCurrentView:Landroid/view/View;

    const-string v7, "recent"

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v4

    .line 579
    .local v4, recent:Landroid/view/View;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "      back: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->viewInfo(Landroid/view/View;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v7

    invoke-static {v7}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->visibilityToString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 583
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "      home: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->viewInfo(Landroid/view/View;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v7

    invoke-static {v7}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->visibilityToString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 587
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "      rcnt: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->viewInfo(Landroid/view/View;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v7

    invoke-static {v7}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->visibilityToString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 591
    const-string v6, "    }"

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 592
    return-void

    .line 557
    .end local v0           #back:Landroid/view/View;
    .end local v1           #home:Landroid/view/View;
    .end local v2           #offscreen:Z
    .end local v4           #recent:Landroid/view/View;
    :cond_1
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 558
    .restart local v2       #offscreen:Z
    :cond_2
    const-string v6, ""

    goto/16 :goto_1

    .line 568
    :cond_3
    const-string v6, "false"

    goto/16 :goto_2

    :cond_4
    const-string v6, "false"

    goto/16 :goto_3

    :cond_5
    const-string v6, "false"

    goto/16 :goto_4

    :cond_6
    const-string v6, "false"

    goto/16 :goto_5
.end method

.method public getSearchLight()Landroid/view/View;
    .locals 2

    .prologue
    .line 180
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mCurrentView:Landroid/view/View;

    const v1, 0x7f090020

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public notifyScreenOn(Z)V
    .locals 2
    .parameter "screenOn"

    .prologue
    .line 243
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mScreenOn:Z

    .line 244
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDisabledFlags:I

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setDisabledFlags(IZ)V

    .line 245
    return-void
.end method

.method public onFinishInflate()V
    .locals 3

    .prologue
    .line 433
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mRotatedViews:[Landroid/view/View;

    const/4 v1, 0x1

    const v2, 0x7f09001d

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    aput-object v2, v0, v1

    .line 434
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mRotatedViews:[Landroid/view/View;

    const/4 v1, 0x2

    const v2, 0x7f090022

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    aput-object v2, v0, v1

    .line 435
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mRotatedViews:[Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mCurrentView:Landroid/view/View;

    .line 436
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 144
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDelegateHelper:Lcom/android/systemui/statusbar/DelegateViewHelper;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/DelegateViewHelper;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 5
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 472
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 473
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mCurrentView:Landroid/view/View;

    const v4, 0x7f090017

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 474
    .local v1, mid_nav:Landroid/view/ViewGroup;
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    new-array v2, v3, [Landroid/view/View;

    .line 475
    .local v2, vViews:[Landroid/view/View;
    const/4 v0, 0x0

    .local v0, cc:I
    :goto_0
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 476
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    aput-object v3, v2, v0

    .line 475
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 478
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDelegateHelper:Lcom/android/systemui/statusbar/DelegateViewHelper;

    invoke-virtual {v3, v2}, Lcom/android/systemui/statusbar/DelegateViewHelper;->setInitialTouchRegion([Landroid/view/View;)V

    .line 479
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 2
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 486
    if-lez p1, :cond_1

    if-le p2, p1, :cond_1

    const/4 v0, 0x1

    .line 487
    .local v0, newVertical:Z
    :goto_0
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mVertical:Z

    if-eq v0, v1, :cond_0

    .line 488
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mVertical:Z

    .line 490
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->reorient()V

    .line 493
    :cond_0
    const-string v1, "sizeChanged"

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->postCheckForInvalidLayout(Ljava/lang/String;)V

    .line 494
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;->onSizeChanged(IIII)V

    .line 495
    return-void

    .line 486
    .end local v0           #newVertical:Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    .line 132
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDeadZone:Lcom/android/systemui/statusbar/policy/DeadZone;

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    .line 133
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDeadZone:Lcom/android/systemui/statusbar/policy/DeadZone;

    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/policy/DeadZone;->poke(Landroid/view/MotionEvent;)V

    .line 135
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDelegateHelper:Lcom/android/systemui/statusbar/DelegateViewHelper;

    if-eqz v1, :cond_1

    .line 136
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDelegateHelper:Lcom/android/systemui/statusbar/DelegateViewHelper;

    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/DelegateViewHelper;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 137
    .local v0, ret:Z
    if-eqz v0, :cond_1

    const/4 v1, 0x1

    .line 139
    .end local v0           #ret:Z
    :goto_0
    return v1

    :cond_1
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_0
.end method

.method public reorient()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 439
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v1, v2, Landroid/content/res/Configuration;->orientation:I

    .line 440
    .local v1, rot:I
    const/4 v0, 0x1

    .local v0, i:I
    :goto_0
    if-ge v0, v6, :cond_0

    .line 441
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mRotatedViews:[Landroid/view/View;

    aget-object v2, v2, v0

    const/16 v5, 0x8

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 440
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 443
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mRotatedViews:[Landroid/view/View;

    aget-object v2, v2, v1

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mCurrentView:Landroid/view/View;

    .line 444
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mCurrentView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 445
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/NavbarEditor;->isDevicePhone(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 446
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDisplay:Landroid/view/Display;

    invoke-virtual {v2}, Landroid/view/Display;->getRotation()I

    move-result v1

    .line 447
    if-eq v1, v4, :cond_1

    if-ne v1, v6, :cond_2

    :cond_1
    move v2, v4

    :goto_1
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mVertical:Z

    .line 451
    :goto_2
    new-instance v5, Lcom/android/systemui/statusbar/phone/NavbarEditor;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mCurrentView:Landroid/view/View;

    const v6, 0x7f09001e

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iget-boolean v6, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mVertical:Z

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-direct {v5, v2, v6}, Lcom/android/systemui/statusbar/phone/NavbarEditor;-><init>(Landroid/view/ViewGroup;Ljava/lang/Boolean;)V

    iput-object v5, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mEditBar:Lcom/android/systemui/statusbar/phone/NavbarEditor;

    .line 452
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mEditBar:Lcom/android/systemui/statusbar/phone/NavbarEditor;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/NavbarEditor;->updateKeys()V

    .line 453
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mEditBar:Lcom/android/systemui/statusbar/phone/NavbarEditor;

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mCurrentView:Landroid/view/View;

    invoke-virtual {v2, v5}, Lcom/android/systemui/statusbar/phone/NavbarEditor;->updateLowLights(Landroid/view/View;)V

    .line 454
    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->toggleButtonListener(Z)V

    .line 456
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mCurrentView:Landroid/view/View;

    const v5, 0x7f090021

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/policy/DeadZone;

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDeadZone:Lcom/android/systemui/statusbar/policy/DeadZone;

    .line 459
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mLowProfile:Z

    invoke-virtual {p0, v2, v3, v4}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setLowProfile(ZZZ)V

    .line 460
    iget v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDisabledFlags:I

    invoke-virtual {p0, v2, v4}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setDisabledFlags(IZ)V

    .line 461
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mShowMenu:Z

    invoke-virtual {p0, v2, v4}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setMenuVisibility(ZZ)V

    .line 467
    iget v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mNavigationIconHints:I

    invoke-virtual {p0, v2, v4}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setNavigationIconHints(IZ)V

    .line 468
    return-void

    :cond_2
    move v2, v3

    .line 447
    goto :goto_1

    .line 449
    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getWidth()I

    move-result v2

    if-lez v2, :cond_4

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getWidth()I

    move-result v5

    if-le v2, v5, :cond_4

    move v2, v4

    :goto_3
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mVertical:Z

    goto :goto_2

    :cond_4
    move v2, v3

    goto :goto_3
.end method

.method public setBar(Lcom/android/systemui/statusbar/BaseStatusBar;)V
    .locals 1
    .parameter "phoneStatusBar"

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDelegateHelper:Lcom/android/systemui/statusbar/DelegateViewHelper;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/DelegateViewHelper;->setBar(Lcom/android/systemui/statusbar/BaseStatusBar;)V

    .line 128
    return-void
.end method

.method public setDelegateView(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 123
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDelegateHelper:Lcom/android/systemui/statusbar/DelegateViewHelper;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/DelegateViewHelper;->setDelegateView(Landroid/view/View;)V

    .line 124
    return-void
.end method

.method public setDisabledFlags(I)V
    .locals 1
    .parameter "disabledFlags"

    .prologue
    .line 305
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setDisabledFlags(IZ)V

    .line 306
    return-void
.end method

.method public setDisabledFlags(IZ)V
    .locals 10
    .parameter "disabledFlags"
    .parameter "force"

    .prologue
    const/4 v6, 0x1

    const/4 v8, 0x4

    const/4 v7, 0x0

    .line 309
    if-nez p2, :cond_0

    iget v9, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDisabledFlags:I

    if-ne v9, p1, :cond_0

    .line 341
    :goto_0
    return-void

    .line 311
    :cond_0
    iput p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDisabledFlags:I

    .line 313
    const/high16 v9, 0x20

    and-int/2addr v9, p1

    if-eqz v9, :cond_2

    move v1, v6

    .line 314
    .local v1, disableHome:Z
    :goto_1
    const/high16 v9, 0x100

    and-int/2addr v9, p1

    if-eqz v9, :cond_3

    move v2, v6

    .line 315
    .local v2, disableRecent:Z
    :goto_2
    const/high16 v9, 0x40

    and-int/2addr v9, p1

    if-eqz v9, :cond_4

    iget v9, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mNavigationIconHints:I

    and-int/lit8 v9, v9, 0x8

    if-nez v9, :cond_4

    move v0, v6

    .line 317
    .local v0, disableBack:Z
    :goto_3
    const/high16 v9, 0x200

    and-int/2addr v9, p1

    if-eqz v9, :cond_5

    move v3, v6

    .line 320
    .local v3, disableSearch:Z
    :goto_4
    if-eqz v1, :cond_6

    if-eqz v2, :cond_6

    if-eqz v0, :cond_6

    if-eqz v3, :cond_6

    :goto_5
    invoke-virtual {p0, v6}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setSlippery(Z)V

    .line 323
    iget-boolean v6, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mScreenOn:Z

    if-nez v6, :cond_1

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mCurrentView:Landroid/view/View;

    if-eqz v6, :cond_1

    .line 324
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mCurrentView:Landroid/view/View;

    const v9, 0x7f090015

    invoke-virtual {v6, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    .line 325
    .local v5, navButtons:Landroid/view/ViewGroup;
    if-nez v5, :cond_7

    const/4 v4, 0x0

    .line 326
    .local v4, lt:Landroid/animation/LayoutTransition;
    :goto_6
    if-eqz v4, :cond_1

    .line 327
    const/4 v6, 0x3

    invoke-virtual {v4, v6}, Landroid/animation/LayoutTransition;->disableTransitionType(I)V

    .line 333
    .end local v4           #lt:Landroid/animation/LayoutTransition;
    .end local v5           #navButtons:Landroid/view/ViewGroup;
    :cond_1
    sget-object v9, Lcom/android/systemui/statusbar/NavigationButtons;->BACK:Lcom/android/systemui/statusbar/NavigationButtons$ButtonInfo;

    if-eqz v0, :cond_8

    move v6, v8

    :goto_7
    invoke-direct {p0, v9, v6}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setButtonWithTagVisibility(Lcom/android/systemui/statusbar/NavigationButtons$ButtonInfo;I)V

    .line 334
    sget-object v9, Lcom/android/systemui/statusbar/NavigationButtons;->HOME:Lcom/android/systemui/statusbar/NavigationButtons$ButtonInfo;

    if-eqz v1, :cond_9

    move v6, v8

    :goto_8
    invoke-direct {p0, v9, v6}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setButtonWithTagVisibility(Lcom/android/systemui/statusbar/NavigationButtons$ButtonInfo;I)V

    .line 335
    sget-object v9, Lcom/android/systemui/statusbar/NavigationButtons;->RECENT:Lcom/android/systemui/statusbar/NavigationButtons$ButtonInfo;

    if-eqz v2, :cond_a

    move v6, v8

    :goto_9
    invoke-direct {p0, v9, v6}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setButtonWithTagVisibility(Lcom/android/systemui/statusbar/NavigationButtons$ButtonInfo;I)V

    .line 336
    sget-object v9, Lcom/android/systemui/statusbar/NavigationButtons;->RECENT:Lcom/android/systemui/statusbar/NavigationButtons$ButtonInfo;

    if-eqz v2, :cond_b

    move v6, v8

    :goto_a
    invoke-direct {p0, v9, v6}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setButtonWithTagVisibility(Lcom/android/systemui/statusbar/NavigationButtons$ButtonInfo;I)V

    .line 337
    sget-object v9, Lcom/android/systemui/statusbar/NavigationButtons;->ALWAYS_MENU:Lcom/android/systemui/statusbar/NavigationButtons$ButtonInfo;

    if-eqz v2, :cond_c

    move v6, v8

    :goto_b
    invoke-direct {p0, v9, v6}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setButtonWithTagVisibility(Lcom/android/systemui/statusbar/NavigationButtons$ButtonInfo;I)V

    .line 338
    sget-object v9, Lcom/android/systemui/statusbar/NavigationButtons;->MENU_BIG:Lcom/android/systemui/statusbar/NavigationButtons$ButtonInfo;

    if-eqz v2, :cond_d

    move v6, v8

    :goto_c
    invoke-direct {p0, v9, v6}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setButtonWithTagVisibility(Lcom/android/systemui/statusbar/NavigationButtons$ButtonInfo;I)V

    .line 339
    sget-object v6, Lcom/android/systemui/statusbar/NavigationButtons;->SEARCH:Lcom/android/systemui/statusbar/NavigationButtons$ButtonInfo;

    if-eqz v2, :cond_e

    :goto_d
    invoke-direct {p0, v6, v8}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setButtonWithTagVisibility(Lcom/android/systemui/statusbar/NavigationButtons$ButtonInfo;I)V

    .line 340
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getSearchLight()Landroid/view/View;

    move-result-object v6

    if-eqz v1, :cond_f

    if-nez v3, :cond_f

    :goto_e
    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .end local v0           #disableBack:Z
    .end local v1           #disableHome:Z
    .end local v2           #disableRecent:Z
    .end local v3           #disableSearch:Z
    :cond_2
    move v1, v7

    .line 313
    goto/16 :goto_1

    .restart local v1       #disableHome:Z
    :cond_3
    move v2, v7

    .line 314
    goto/16 :goto_2

    .restart local v2       #disableRecent:Z
    :cond_4
    move v0, v7

    .line 315
    goto :goto_3

    .restart local v0       #disableBack:Z
    :cond_5
    move v3, v7

    .line 317
    goto :goto_4

    .restart local v3       #disableSearch:Z
    :cond_6
    move v6, v7

    .line 320
    goto :goto_5

    .line 325
    .restart local v5       #navButtons:Landroid/view/ViewGroup;
    :cond_7
    invoke-virtual {v5}, Landroid/view/ViewGroup;->getLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v4

    goto :goto_6

    .end local v5           #navButtons:Landroid/view/ViewGroup;
    :cond_8
    move v6, v7

    .line 333
    goto :goto_7

    :cond_9
    move v6, v7

    .line 334
    goto :goto_8

    :cond_a
    move v6, v7

    .line 335
    goto :goto_9

    :cond_b
    move v6, v7

    .line 336
    goto :goto_a

    :cond_c
    move v6, v7

    .line 337
    goto :goto_b

    :cond_d
    move v6, v7

    .line 338
    goto :goto_c

    :cond_e
    move v8, v7

    .line 339
    goto :goto_d

    .line 340
    :cond_f
    const/16 v7, 0x8

    goto :goto_e
.end method

.method protected setListener(Landroid/view/View$OnClickListener;Landroid/view/View$OnTouchListener;Landroid/view/View$OnTouchListener;)V
    .locals 0
    .parameter "RecentsClickListener"
    .parameter "RecentsPreloadListener"
    .parameter "HomeSearchActionListener"

    .prologue
    .line 154
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mRecentsClickListener:Landroid/view/View$OnClickListener;

    .line 155
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mRecentsPreloadListener:Landroid/view/View$OnTouchListener;

    .line 156
    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mHomeSearchActionListener:Landroid/view/View$OnTouchListener;

    .line 157
    return-void
.end method

.method public setLowProfile(Z)V
    .locals 2
    .parameter "lightsOut"

    .prologue
    .line 373
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setLowProfile(ZZZ)V

    .line 374
    return-void
.end method

.method public setLowProfile(ZZZ)V
    .locals 11
    .parameter "lightsOut"
    .parameter "animate"
    .parameter "force"

    .prologue
    const-wide/16 v9, 0xfa

    const/16 v6, 0x8

    const/4 v5, 0x0

    const/high16 v4, 0x3f80

    const/4 v3, 0x0

    .line 377
    if-nez p3, :cond_0

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mLowProfile:Z

    if-ne p1, v2, :cond_0

    .line 418
    :goto_0
    return-void

    .line 379
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mLowProfile:Z

    .line 383
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mCurrentView:Landroid/view/View;

    const v7, 0x7f090015

    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 384
    .local v1, navButtons:Landroid/view/View;
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mCurrentView:Landroid/view/View;

    const v7, 0x7f09001f

    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 387
    .local v0, lowLights:Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 388
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 390
    if-nez p2, :cond_4

    .line 391
    if-eqz p1, :cond_1

    move v2, v3

    :goto_1
    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 393
    if-eqz p1, :cond_2

    :goto_2
    invoke-virtual {v0, v4}, Landroid/view/View;->setAlpha(F)V

    .line 394
    if-eqz p1, :cond_3

    move v2, v5

    :goto_3
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_1
    move v2, v4

    .line 391
    goto :goto_1

    :cond_2
    move v4, v3

    .line 393
    goto :goto_2

    :cond_3
    move v2, v6

    .line 394
    goto :goto_3

    .line 396
    :cond_4
    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v7

    if-eqz p1, :cond_7

    move v2, v3

    :goto_4
    invoke-virtual {v7, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    if-eqz p1, :cond_8

    const-wide/16 v7, 0x2ee

    :goto_5
    invoke-virtual {v2, v7, v8}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 401
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mLightsOutListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 402
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-ne v2, v6, :cond_5

    .line 403
    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    .line 404
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 406
    :cond_5
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    if-eqz p1, :cond_9

    :goto_6
    invoke-virtual {v2, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    if-eqz p1, :cond_6

    const-wide/16 v9, 0x2ee

    :cond_6
    invoke-virtual {v2, v9, v10}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    new-instance v3, Landroid/view/animation/AccelerateInterpolator;

    const/high16 v4, 0x4000

    invoke-direct {v3, v4}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    if-eqz p1, :cond_a

    const/4 v2, 0x0

    :goto_7
    invoke-virtual {v3, v2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->start()V

    goto/16 :goto_0

    :cond_7
    move v2, v4

    .line 396
    goto :goto_4

    :cond_8
    move-wide v7, v9

    goto :goto_5

    :cond_9
    move v4, v3

    .line 406
    goto :goto_6

    :cond_a
    new-instance v2, Lcom/android/systemui/statusbar/phone/NavigationBarView$2;

    invoke-direct {v2, p0, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView$2;-><init>(Lcom/android/systemui/statusbar/phone/NavigationBarView;Landroid/view/View;)V

    goto :goto_7
.end method

.method public setMenuVisibility(Z)V
    .locals 1
    .parameter "show"

    .prologue
    .line 361
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setMenuVisibility(ZZ)V

    .line 362
    return-void
.end method

.method public setMenuVisibility(ZZ)V
    .locals 2
    .parameter "show"
    .parameter "force"

    .prologue
    .line 365
    if-nez p2, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mShowMenu:Z

    if-ne v0, p1, :cond_0

    .line 370
    :goto_0
    return-void

    .line 367
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mShowMenu:Z

    .line 369
    sget-object v1, Lcom/android/systemui/statusbar/NavigationButtons;->CONDITIONAL_MENU:Lcom/android/systemui/statusbar/NavigationButtons$ButtonInfo;

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mShowMenu:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_1
    invoke-direct {p0, v1, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setButtonWithTagVisibility(Lcom/android/systemui/statusbar/NavigationButtons$ButtonInfo;I)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x4

    goto :goto_1
.end method

.method public setNavigationIconHints(I)V
    .locals 1
    .parameter "hints"

    .prologue
    .line 267
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setNavigationIconHints(IZ)V

    .line 268
    return-void
.end method

.method public setNavigationIconHints(IZ)V
    .locals 5
    .parameter "hints"
    .parameter "force"

    .prologue
    const/high16 v3, 0x3f80

    const/high16 v2, 0x3f00

    .line 271
    if-nez p2, :cond_0

    iget v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mNavigationIconHints:I

    if-ne p1, v1, :cond_0

    .line 301
    :goto_0
    return-void

    .line 279
    :cond_0
    iput p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mNavigationIconHints:I

    .line 281
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mCurrentView:Landroid/view/View;

    sget-object v4, Lcom/android/systemui/statusbar/NavigationButtons;->HOME:Lcom/android/systemui/statusbar/NavigationButtons$ButtonInfo;

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    .line 282
    .local v0, button:Landroid/view/View;
    if-eqz v0, :cond_1

    .line 283
    and-int/lit8 v1, p1, 0x2

    if-eqz v1, :cond_4

    move v1, v2

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 286
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mCurrentView:Landroid/view/View;

    sget-object v4, Lcom/android/systemui/statusbar/NavigationButtons;->RECENT:Lcom/android/systemui/statusbar/NavigationButtons$ButtonInfo;

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    .line 287
    if-eqz v0, :cond_2

    .line 288
    and-int/lit8 v1, p1, 0x4

    if-eqz v1, :cond_5

    move v1, v2

    :goto_2
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 291
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mCurrentView:Landroid/view/View;

    sget-object v4, Lcom/android/systemui/statusbar/NavigationButtons;->BACK:Lcom/android/systemui/statusbar/NavigationButtons$ButtonInfo;

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    .line 292
    if-eqz v0, :cond_3

    .line 293
    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_6

    :goto_3
    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 295
    check-cast v0, Landroid/widget/ImageView;

    .end local v0           #button:Landroid/view/View;
    and-int/lit8 v1, p1, 0x8

    if-eqz v1, :cond_8

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mVertical:Z

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mBackAltLandIcon:Landroid/graphics/drawable/Drawable;

    :goto_4
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 300
    :cond_3
    iget v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDisabledFlags:I

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setDisabledFlags(IZ)V

    goto :goto_0

    .restart local v0       #button:Landroid/view/View;
    :cond_4
    move v1, v3

    .line 283
    goto :goto_1

    :cond_5
    move v1, v3

    .line 288
    goto :goto_2

    :cond_6
    move v2, v3

    .line 293
    goto :goto_3

    .line 295
    .end local v0           #button:Landroid/view/View;
    :cond_7
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mBackAltIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_4

    :cond_8
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mVertical:Z

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mBackLandIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_4

    :cond_9
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mBackIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_4
.end method

.method public setSlippery(Z)V
    .locals 5
    .parameter "newSlippery"

    .prologue
    const/high16 v4, 0x400

    .line 344
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    .line 345
    .local v0, lp:Landroid/view/WindowManager$LayoutParams;
    if-eqz v0, :cond_0

    .line 346
    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/2addr v3, v4

    if-eqz v3, :cond_1

    const/4 v1, 0x1

    .line 347
    .local v1, oldSlippery:Z
    :goto_0
    if-nez v1, :cond_2

    if-eqz p1, :cond_2

    .line 348
    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/2addr v3, v4

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 354
    :goto_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "window"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    .line 355
    .local v2, wm:Landroid/view/WindowManager;
    invoke-interface {v2, p0, v0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 357
    .end local v1           #oldSlippery:Z
    .end local v2           #wm:Landroid/view/WindowManager;
    :cond_0
    return-void

    .line 346
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 349
    .restart local v1       #oldSlippery:Z
    :cond_2
    if-eqz v1, :cond_0

    if-nez p1, :cond_0

    .line 350
    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v4, -0x4000001

    and-int/2addr v3, v4

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_1
.end method

.method protected toggleButtonListener(Z)V
    .locals 5
    .parameter "enable"

    .prologue
    const/4 v3, 0x0

    .line 160
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mCurrentView:Landroid/view/View;

    sget-object v4, Lcom/android/systemui/statusbar/NavigationButtons;->RECENT:Lcom/android/systemui/statusbar/NavigationButtons$ButtonInfo;

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v1

    .line 161
    .local v1, recentView:Landroid/view/View;
    if-eqz v1, :cond_0

    .line 162
    if-eqz p1, :cond_3

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mRecentsClickListener:Landroid/view/View$OnClickListener;

    :goto_0
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 163
    if-eqz p1, :cond_4

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mRecentsPreloadListener:Landroid/view/View$OnTouchListener;

    :goto_1
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 165
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mCurrentView:Landroid/view/View;

    sget-object v4, Lcom/android/systemui/statusbar/NavigationButtons;->HOME:Lcom/android/systemui/statusbar/NavigationButtons$ButtonInfo;

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    .line 166
    .local v0, homeView:Landroid/view/View;
    if-eqz v0, :cond_2

    .line 167
    if-eqz p1, :cond_1

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mHomeSearchActionListener:Landroid/view/View$OnTouchListener;

    :cond_1
    invoke-virtual {v0, v3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 169
    :cond_2
    return-void

    .end local v0           #homeView:Landroid/view/View;
    :cond_3
    move-object v2, v3

    .line 162
    goto :goto_0

    :cond_4
    move-object v2, v3

    .line 163
    goto :goto_1
.end method

.method protected updateResources()V
    .locals 2

    .prologue
    .line 205
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 206
    .local v0, res:Landroid/content/res/Resources;
    const v1, 0x7f0200cf

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mBackIcon:Landroid/graphics/drawable/Drawable;

    .line 207
    const v1, 0x7f0200d2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mBackLandIcon:Landroid/graphics/drawable/Drawable;

    .line 208
    const v1, 0x7f0200d0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mBackAltIcon:Landroid/graphics/drawable/Drawable;

    .line 209
    const v1, 0x7f0200d1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mBackAltLandIcon:Landroid/graphics/drawable/Drawable;

    .line 210
    return-void
.end method
