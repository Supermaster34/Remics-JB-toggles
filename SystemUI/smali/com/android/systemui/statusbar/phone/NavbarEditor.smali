.class public Lcom/android/systemui/statusbar/phone/NavbarEditor;
.super Ljava/lang/Object;
.source "NavbarEditor.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/NavbarEditor$ButtonAdapter;
    }
.end annotation


# static fields
.field private static mIsDevicePhone:Ljava/lang/Boolean;

.field public static final smallButtonIds:[I

.field protected static visibleCount:I


# instance fields
.field mCheckLongPress:Ljava/lang/Runnable;

.field private mContext:Landroid/content/Context;

.field mDialog:Landroid/app/AlertDialog;

.field mIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mLongPressed:Z

.field private mParent:Landroid/view/ViewGroup;

.field mVertical:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 56
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/systemui/statusbar/phone/NavbarEditor;->smallButtonIds:[I

    .line 58
    const/4 v0, 0x4

    sput v0, Lcom/android/systemui/statusbar/phone/NavbarEditor;->visibleCount:I

    .line 59
    const/4 v0, 0x0

    sput-object v0, Lcom/android/systemui/statusbar/phone/NavbarEditor;->mIsDevicePhone:Ljava/lang/Boolean;

    return-void

    .line 56
    nop

    :array_0
    .array-data 0x4
        0x16t 0x0t 0x9t 0x7ft
        0x1ct 0x0t 0x9t 0x7ft
    .end array-data
.end method

.method public constructor <init>(Landroid/view/ViewGroup;Ljava/lang/Boolean;)V
    .locals 4
    .parameter "parent"
    .parameter "orientation"

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Integer;

    const/4 v2, 0x0

    const v3, 0x7f090016

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const v3, 0x7f090018

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const v3, 0x7f090019

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const v3, 0x7f09001a

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const v3, 0x7f09001b

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const v3, 0x7f09001c

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavbarEditor;->mIds:Ljava/util/ArrayList;

    .line 122
    new-instance v0, Lcom/android/systemui/statusbar/phone/NavbarEditor$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/NavbarEditor$1;-><init>(Lcom/android/systemui/statusbar/phone/NavbarEditor;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavbarEditor;->mCheckLongPress:Ljava/lang/Runnable;

    .line 80
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NavbarEditor;->mParent:Landroid/view/ViewGroup;

    .line 81
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavbarEditor;->mVertical:Z

    .line 82
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavbarEditor;->mContext:Landroid/content/Context;

    .line 83
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/phone/NavbarEditor;)Landroid/view/ViewGroup;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavbarEditor;->mParent:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/phone/NavbarEditor;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavbarEditor;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private adjustPadding()V
    .locals 12

    .prologue
    const/16 v11, 0x8

    const/4 v10, 0x0

    .line 317
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/NavbarEditor;->mParent:Landroid/view/ViewGroup;

    const v9, 0x7f090017

    invoke-virtual {v8, v9}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    .line 318
    .local v7, viewParent:Landroid/view/ViewGroup;
    sget v5, Lcom/android/systemui/statusbar/phone/NavbarEditor;->visibleCount:I

    .line 319
    .local v5, sCount:I
    const/4 v6, 0x0

    .local v6, v:I
    :goto_0
    invoke-virtual {v7}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v8

    if-ge v6, v8, :cond_5

    .line 320
    invoke-virtual {v7, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 321
    .local v0, cView:Landroid/view/View;
    instance-of v8, v0, Lcom/android/systemui/statusbar/policy/KeyButtonView;

    if-eqz v8, :cond_1

    .line 322
    add-int/lit8 v8, v6, 0x1

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 323
    .local v4, nextPadding:Landroid/view/View;
    if-eqz v4, :cond_1

    .line 324
    add-int/lit8 v8, v6, 0x2

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 325
    .local v3, nextKey:Landroid/view/View;
    sget-object v2, Lcom/android/systemui/statusbar/NavigationButtons;->EMPTY:Lcom/android/systemui/statusbar/NavigationButtons$ButtonInfo;

    .line 326
    .local v2, nextBi:Lcom/android/systemui/statusbar/NavigationButtons$ButtonInfo;
    if-eqz v3, :cond_0

    .line 327
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    .end local v2           #nextBi:Lcom/android/systemui/statusbar/NavigationButtons$ButtonInfo;
    check-cast v2, Lcom/android/systemui/statusbar/NavigationButtons$ButtonInfo;

    .line 329
    .restart local v2       #nextBi:Lcom/android/systemui/statusbar/NavigationButtons$ButtonInfo;
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/NavigationButtons$ButtonInfo;

    .line 330
    .local v1, curBi:Lcom/android/systemui/statusbar/NavigationButtons$ButtonInfo;
    if-eqz v3, :cond_4

    if-eqz v2, :cond_4

    if-eqz v1, :cond_4

    sget-object v8, Lcom/android/systemui/statusbar/NavigationButtons;->EMPTY:Lcom/android/systemui/statusbar/NavigationButtons$ButtonInfo;

    if-eq v1, v8, :cond_4

    .line 332
    sget-object v8, Lcom/android/systemui/statusbar/NavigationButtons;->EMPTY:Lcom/android/systemui/statusbar/NavigationButtons$ButtonInfo;

    if-eq v2, v8, :cond_2

    .line 333
    invoke-virtual {v4, v10}, Landroid/view/View;->setVisibility(I)V

    .line 341
    :goto_1
    add-int/lit8 v5, v5, -0x1

    .line 319
    .end local v1           #curBi:Lcom/android/systemui/statusbar/NavigationButtons$ButtonInfo;
    .end local v2           #nextBi:Lcom/android/systemui/statusbar/NavigationButtons$ButtonInfo;
    .end local v3           #nextKey:Landroid/view/View;
    .end local v4           #nextPadding:Landroid/view/View;
    :cond_1
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 335
    .restart local v1       #curBi:Lcom/android/systemui/statusbar/NavigationButtons$ButtonInfo;
    .restart local v2       #nextBi:Lcom/android/systemui/statusbar/NavigationButtons$ButtonInfo;
    .restart local v3       #nextKey:Landroid/view/View;
    .restart local v4       #nextPadding:Landroid/view/View;
    :cond_2
    const/4 v8, 0x1

    if-le v5, v8, :cond_3

    .line 336
    invoke-virtual {v4, v10}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 338
    :cond_3
    invoke-virtual {v4, v11}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 343
    :cond_4
    invoke-virtual {v4, v11}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 348
    .end local v0           #cView:Landroid/view/View;
    .end local v1           #curBi:Lcom/android/systemui/statusbar/NavigationButtons$ButtonInfo;
    .end local v2           #nextBi:Lcom/android/systemui/statusbar/NavigationButtons$ButtonInfo;
    .end local v3           #nextKey:Landroid/view/View;
    .end local v4           #nextPadding:Landroid/view/View;
    :cond_5
    return-void
.end method

.method private findInterceptingViewIndex(FLandroid/view/View;)I
    .locals 7
    .parameter "pos"
    .parameter "v"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 102
    const/4 v3, 0x2

    new-array v1, v3, [I

    .line 103
    .local v1, location:[I
    const/4 v0, 0x0

    .local v0, cc:I
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NavbarEditor;->mIds:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_3

    .line 104
    sget-object v4, Lcom/android/systemui/statusbar/phone/NavbarEditor;->smallButtonIds:[I

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NavbarEditor;->mIds:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v4, v3}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v3

    if-nez v3, :cond_0

    .line 105
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NavbarEditor;->mParent:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NavbarEditor;->mIds:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 106
    .local v2, tmpV:Landroid/view/View;
    invoke-virtual {v2, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 107
    if-ne v2, p2, :cond_1

    .line 103
    .end local v2           #tmpV:Landroid/view/View;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 109
    .restart local v2       #tmpV:Landroid/view/View;
    :cond_1
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NavbarEditor;->mVertical:Z

    if-nez v3, :cond_2

    aget v3, v1, v5

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x4

    add-int/2addr v3, v4

    int-to-float v3, v3

    cmpl-float v3, p1, v3

    if-lez v3, :cond_2

    aget v3, v1, v5

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v4

    add-int/2addr v3, v4

    int-to-float v3, v3

    cmpg-float v3, p1, v3

    if-gez v3, :cond_2

    .line 116
    .end local v0           #cc:I
    .end local v2           #tmpV:Landroid/view/View;
    :goto_1
    return v0

    .line 111
    .restart local v0       #cc:I
    .restart local v2       #tmpV:Landroid/view/View;
    :cond_2
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NavbarEditor;->mVertical:Z

    if-eqz v3, :cond_0

    aget v3, v1, v6

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x4

    add-int/2addr v3, v4

    int-to-float v3, v3

    cmpl-float v3, p1, v3

    if-lez v3, :cond_0

    aget v3, v1, v6

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    int-to-float v3, v3

    cmpg-float v3, p1, v3

    if-gez v3, :cond_0

    goto :goto_1

    .line 116
    .end local v2           #tmpV:Landroid/view/View;
    :cond_3
    const/4 v0, -0x1

    goto :goto_1
.end method

.method protected static isDevicePhone(Landroid/content/Context;)Z
    .locals 6
    .parameter "con"

    .prologue
    .line 133
    sget-object v4, Lcom/android/systemui/statusbar/phone/NavbarEditor;->mIsDevicePhone:Ljava/lang/Boolean;

    if-nez v4, :cond_0

    .line 134
    const-string v4, "window"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    .line 135
    .local v3, wm:Landroid/view/WindowManager;
    new-instance v0, Landroid/view/DisplayInfo;

    invoke-direct {v0}, Landroid/view/DisplayInfo;-><init>()V

    .line 136
    .local v0, outDisplayInfo:Landroid/view/DisplayInfo;
    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    .line 137
    iget v4, v0, Landroid/view/DisplayInfo;->logicalHeight:I

    iget v5, v0, Landroid/view/DisplayInfo;->logicalWidth:I

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 138
    .local v1, shortSize:I
    mul-int/lit16 v4, v1, 0xa0

    iget v5, v0, Landroid/view/DisplayInfo;->logicalDensityDpi:I

    div-int v2, v4, v5

    .line 139
    .local v2, shortSizeDp:I
    const/16 v4, 0x258

    if-ge v2, v4, :cond_1

    .line 141
    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    sput-object v4, Lcom/android/systemui/statusbar/phone/NavbarEditor;->mIsDevicePhone:Ljava/lang/Boolean;

    .line 146
    .end local v0           #outDisplayInfo:Landroid/view/DisplayInfo;
    .end local v1           #shortSize:I
    .end local v2           #shortSizeDp:I
    .end local v3           #wm:Landroid/view/WindowManager;
    :cond_0
    :goto_0
    sget-object v4, Lcom/android/systemui/statusbar/phone/NavbarEditor;->mIsDevicePhone:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    return v4

    .line 143
    .restart local v0       #outDisplayInfo:Landroid/view/DisplayInfo;
    .restart local v1       #shortSize:I
    .restart local v2       #shortSizeDp:I
    .restart local v3       #wm:Landroid/view/WindowManager;
    :cond_1
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    sput-object v4, Lcom/android/systemui/statusbar/phone/NavbarEditor;->mIsDevicePhone:Ljava/lang/Boolean;

    goto :goto_0
.end method

.method private switchId(IILandroid/view/View;)V
    .locals 5
    .parameter "to"
    .parameter "from"
    .parameter "view"

    .prologue
    .line 244
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NavbarEditor;->mParent:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NavbarEditor;->mIds:Ljava/util/ArrayList;

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 245
    .local v2, tView:Landroid/view/View;
    const/4 v3, 0x2

    new-array v1, v3, [I

    .line 246
    .local v1, screenLoc:[I
    invoke-virtual {v2, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 247
    invoke-virtual {p3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 248
    .local v0, a:Landroid/view/ViewGroup;
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NavbarEditor;->mVertical:Z

    if-nez v3, :cond_0

    .line 249
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NavbarEditor;->mParent:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLeft()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/view/View;->setX(F)V

    .line 250
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NavbarEditor;->mParent:Landroid/view/ViewGroup;

    const/4 v4, 0x0

    aget v4, v1, v4

    int-to-float v4, v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    .line 255
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NavbarEditor;->mIds:Ljava/util/ArrayList;

    invoke-static {v3, p1, p2}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    .line 256
    return-void

    .line 252
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NavbarEditor;->mParent:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getTop()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/view/View;->setY(F)V

    .line 253
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NavbarEditor;->mParent:Landroid/view/ViewGroup;

    const/4 v4, 0x1

    aget v4, v1, v4

    int-to-float v4, v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method final dismissDialog()V
    .locals 1

    .prologue
    .line 480
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavbarEditor;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavbarEditor;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 481
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavbarEditor;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 483
    :cond_0
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 13
    .parameter "view"
    .parameter "event"

    .prologue
    const/4 v11, 0x2

    const/high16 v12, 0x4000

    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 151
    invoke-static {}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getEditMode()Z

    move-result v8

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/NavbarEditor;->mDialog:Landroid/app/AlertDialog;

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/NavbarEditor;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v8}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 233
    :cond_0
    :goto_0
    return v10

    .line 154
    :cond_1
    const/4 v3, 0x0

    .line 155
    .local v3, curPos:F
    iget-boolean v8, p0, Lcom/android/systemui/statusbar/phone/NavbarEditor;->mVertical:Z

    if-nez v8, :cond_3

    .line 156
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    .line 160
    :goto_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    if-nez v8, :cond_5

    .line 161
    new-array v5, v11, [I

    .line 162
    .local v5, screenLoc:[I
    invoke-virtual {p1, v9}, Landroid/view/View;->setPressed(Z)V

    .line 163
    invoke-virtual {p1, v5}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 165
    iget-boolean v8, p0, Lcom/android/systemui/statusbar/phone/NavbarEditor;->mVertical:Z

    if-nez v8, :cond_4

    .line 166
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/NavbarEditor;->mParent:Landroid/view/ViewGroup;

    aget v10, v5, v10

    int-to-float v10, v10

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    invoke-virtual {v8, v10}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    .line 170
    :goto_2
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/NavbarEditor;->mCheckLongPress:Ljava/lang/Runnable;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v10

    int-to-long v10, v10

    invoke-virtual {p1, v8, v10, v11}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .end local v5           #screenLoc:[I
    :cond_2
    :goto_3
    move v10, v9

    .line 233
    goto :goto_0

    .line 158
    :cond_3
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    goto :goto_1

    .line 168
    .restart local v5       #screenLoc:[I
    :cond_4
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/NavbarEditor;->mParent:Landroid/view/ViewGroup;

    aget v10, v5, v9

    int-to-float v10, v10

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    invoke-virtual {v8, v10}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    goto :goto_2

    .line 171
    .end local v5           #screenLoc:[I
    :cond_5
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    if-ne v8, v11, :cond_a

    .line 172
    invoke-virtual {p1, v10}, Landroid/view/View;->setPressed(Z)V

    .line 173
    iget-boolean v8, p0, Lcom/android/systemui/statusbar/phone/NavbarEditor;->mLongPressed:Z

    if-eqz v8, :cond_0

    sget-object v8, Lcom/android/systemui/statusbar/phone/NavbarEditor;->smallButtonIds:[I

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v11

    invoke-static {v8, v11}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v8

    if-nez v8, :cond_0

    .line 176
    invoke-virtual {p1}, Landroid/view/View;->bringToFront()V

    .line 177
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    .line 178
    .local v7, viewParent:Landroid/view/ViewGroup;
    const/4 v2, 0x0

    .line 179
    .local v2, buttonSize:F
    iget-boolean v8, p0, Lcom/android/systemui/statusbar/phone/NavbarEditor;->mVertical:Z

    if-nez v8, :cond_8

    .line 180
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v8

    int-to-float v2, v8

    .line 185
    :goto_4
    iget-boolean v8, p0, Lcom/android/systemui/statusbar/phone/NavbarEditor;->mVertical:Z

    if-nez v8, :cond_6

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getWidth()I

    move-result v8

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getLeft()I

    move-result v11

    add-int/2addr v8, v11

    int-to-float v8, v8

    cmpl-float v8, v3, v8

    if-gtz v8, :cond_0

    div-float v8, v2, v12

    sub-float v8, v3, v8

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getLeft()I

    move-result v11

    int-to-float v11, v11

    cmpg-float v8, v8, v11

    if-lez v8, :cond_0

    :cond_6
    iget-boolean v8, p0, Lcom/android/systemui/statusbar/phone/NavbarEditor;->mVertical:Z

    if-eqz v8, :cond_7

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getHeight()I

    move-result v8

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getTop()I

    move-result v11

    add-int/2addr v8, v11

    int-to-float v8, v8

    cmpl-float v8, v3, v8

    if-gtz v8, :cond_0

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getTop()I

    move-result v8

    int-to-float v8, v8

    cmpg-float v8, v3, v8

    if-ltz v8, :cond_0

    .line 189
    :cond_7
    iget-boolean v8, p0, Lcom/android/systemui/statusbar/phone/NavbarEditor;->mVertical:Z

    if-nez v8, :cond_9

    .line 190
    invoke-virtual {v7}, Landroid/view/ViewGroup;->getLeft()I

    move-result v8

    int-to-float v8, v8

    sub-float v8, v3, v8

    div-float v11, v2, v12

    sub-float/2addr v8, v11

    invoke-virtual {p1, v8}, Landroid/view/View;->setX(F)V

    .line 194
    :goto_5
    invoke-direct {p0, v3, p1}, Lcom/android/systemui/statusbar/phone/NavbarEditor;->findInterceptingViewIndex(FLandroid/view/View;)I

    move-result v0

    .line 195
    .local v0, affectedViewPosition:I
    const/4 v8, -0x1

    if-eq v0, v8, :cond_0

    .line 198
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/NavbarEditor;->mIds:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v8

    invoke-direct {p0, v8, v0, p1}, Lcom/android/systemui/statusbar/phone/NavbarEditor;->switchId(IILandroid/view/View;)V

    goto/16 :goto_3

    .line 182
    .end local v0           #affectedViewPosition:I
    :cond_8
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v8

    int-to-float v2, v8

    goto :goto_4

    .line 192
    :cond_9
    invoke-virtual {v7}, Landroid/view/ViewGroup;->getTop()I

    move-result v8

    int-to-float v8, v8

    sub-float v8, v3, v8

    div-float v11, v2, v12

    sub-float/2addr v8, v11

    invoke-virtual {p1, v8}, Landroid/view/View;->setY(F)V

    goto :goto_5

    .line 199
    .end local v2           #buttonSize:F
    .end local v7           #viewParent:Landroid/view/ViewGroup;
    :cond_a
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    if-eq v8, v9, :cond_b

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    const/4 v11, 0x3

    if-ne v8, v11, :cond_2

    .line 200
    :cond_b
    invoke-virtual {p1, v10}, Landroid/view/View;->setPressed(Z)V

    .line 201
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/NavbarEditor;->mCheckLongPress:Ljava/lang/Runnable;

    invoke-virtual {p1, v8}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 202
    iget-boolean v8, p0, Lcom/android/systemui/statusbar/phone/NavbarEditor;->mLongPressed:Z

    if-nez v8, :cond_d

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    const-string v11, "home"

    invoke-virtual {v8, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_d

    .line 203
    new-instance v4, Lcom/android/systemui/statusbar/phone/NavbarEditor$ButtonAdapter;

    sget-object v8, Lcom/android/systemui/statusbar/phone/NavbarEditor;->smallButtonIds:[I

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v11

    invoke-static {v8, v11}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v8

    if-eqz v8, :cond_c

    move v8, v9

    :goto_6
    invoke-direct {v4, p0, v8}, Lcom/android/systemui/statusbar/phone/NavbarEditor$ButtonAdapter;-><init>(Lcom/android/systemui/statusbar/phone/NavbarEditor;Z)V

    .line 204
    .local v4, list:Lcom/android/systemui/statusbar/phone/NavbarEditor$ButtonAdapter;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/NavbarEditor;->mContext:Landroid/content/Context;

    invoke-direct {v1, v8}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 205
    .local v1, builder:Landroid/app/AlertDialog$Builder;
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/NavbarEditor;->mContext:Landroid/content/Context;

    const v11, 0x7f0a002d

    invoke-virtual {v8, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 206
    new-instance v8, Lcom/android/systemui/statusbar/phone/NavbarEditor$3;

    invoke-direct {v8, p0, p1, v4}, Lcom/android/systemui/statusbar/phone/NavbarEditor$3;-><init>(Lcom/android/systemui/statusbar/phone/NavbarEditor;Landroid/view/View;Lcom/android/systemui/statusbar/phone/NavbarEditor$ButtonAdapter;)V

    invoke-virtual {v1, v4, v8}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    const/high16 v11, 0x104

    new-instance v12, Lcom/android/systemui/statusbar/phone/NavbarEditor$2;

    invoke-direct {v12, p0}, Lcom/android/systemui/statusbar/phone/NavbarEditor$2;-><init>(Lcom/android/systemui/statusbar/phone/NavbarEditor;)V

    invoke-virtual {v8, v11, v12}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 217
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v8

    iput-object v8, p0, Lcom/android/systemui/statusbar/phone/NavbarEditor;->mDialog:Landroid/app/AlertDialog;

    .line 218
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/NavbarEditor;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v8}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v8

    const/16 v11, 0x7d3

    invoke-virtual {v8, v11}, Landroid/view/Window;->setType(I)V

    .line 219
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/NavbarEditor;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v8, v10}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 220
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/NavbarEditor;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v8}, Landroid/app/AlertDialog;->show()V

    .line 221
    iput-boolean v10, p0, Lcom/android/systemui/statusbar/phone/NavbarEditor;->mLongPressed:Z

    move v10, v9

    .line 222
    goto/16 :goto_0

    .end local v1           #builder:Landroid/app/AlertDialog$Builder;
    .end local v4           #list:Lcom/android/systemui/statusbar/phone/NavbarEditor$ButtonAdapter;
    :cond_c
    move v8, v10

    .line 203
    goto :goto_6

    .line 224
    :cond_d
    iput-boolean v10, p0, Lcom/android/systemui/statusbar/phone/NavbarEditor;->mLongPressed:Z

    .line 226
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    .line 227
    .local v6, vParent:Landroid/view/ViewGroup;
    iget-boolean v8, p0, Lcom/android/systemui/statusbar/phone/NavbarEditor;->mVertical:Z

    if-nez v8, :cond_e

    .line 228
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/NavbarEditor;->mParent:Landroid/view/ViewGroup;

    invoke-virtual {v8}, Landroid/view/ViewGroup;->getTag()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Float;

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v8

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getLeft()I

    move-result v10

    int-to-float v10, v10

    sub-float/2addr v8, v10

    invoke-virtual {p1, v8}, Landroid/view/View;->setX(F)V

    goto/16 :goto_3

    .line 230
    :cond_e
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/NavbarEditor;->mParent:Landroid/view/ViewGroup;

    invoke-virtual {v8}, Landroid/view/ViewGroup;->getTag()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Float;

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v8

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getTop()I

    move-result v10

    int-to-float v10, v10

    sub-float/2addr v8, v10

    invoke-virtual {p1, v8}, Landroid/view/View;->setY(F)V

    goto/16 :goto_3
.end method

.method protected reInflate()V
    .locals 3

    .prologue
    .line 279
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavbarEditor;->mParent:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 280
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavbarEditor;->mVertical:Z

    if-eqz v0, :cond_0

    .line 281
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavbarEditor;->mContext:Landroid/content/Context;

    const v1, 0x7f040006

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavbarEditor;->mParent:Landroid/view/ViewGroup;

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 285
    :goto_0
    return-void

    .line 283
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavbarEditor;->mContext:Landroid/content/Context;

    const v1, 0x7f040007

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavbarEditor;->mParent:Landroid/view/ViewGroup;

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    goto :goto_0
.end method

.method protected saveKeys()V
    .locals 6

    .prologue
    const/4 v5, 0x6

    .line 264
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NavbarEditor;->mParent:Landroid/view/ViewGroup;

    const v4, 0x7f090017

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 265
    new-array v0, v5, [Lcom/android/systemui/statusbar/NavigationButtons$ButtonInfo;

    .line 266
    .local v0, buttons:[Lcom/android/systemui/statusbar/NavigationButtons$ButtonInfo;
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NavbarEditor;->mIds:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 267
    .local v2, idMap:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NavbarEditor;->mVertical:Z

    if-eqz v3, :cond_0

    invoke-static {v2}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 268
    :cond_0
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v5, :cond_1

    .line 269
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NavbarEditor;->mParent:Landroid/view/ViewGroup;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/NavigationButtons$ButtonInfo;

    aput-object v3, v0, v1

    .line 268
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 271
    :cond_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NavbarEditor;->mContext:Landroid/content/Context;

    invoke-static {v3, v0}, Lcom/android/systemui/statusbar/NavigationButtons;->storeButtonMap(Landroid/content/Context;[Lcom/android/systemui/statusbar/NavigationButtons$ButtonInfo;)V

    .line 272
    return-void
.end method

.method protected setupListeners()V
    .locals 3

    .prologue
    .line 90
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavbarEditor;->mIds:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 91
    .local v1, id:I
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavbarEditor;->mParent:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_0

    .line 93
    .end local v1           #id:I
    :cond_0
    return-void
.end method

.method protected updateKeys()V
    .locals 11

    .prologue
    .line 293
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/NavbarEditor;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/android/systemui/statusbar/NavigationButtons;->loadButtonMap(Landroid/content/Context;)[Lcom/android/systemui/statusbar/NavigationButtons$ButtonInfo;

    move-result-object v2

    .line 294
    .local v2, buttons:[Lcom/android/systemui/statusbar/NavigationButtons$ButtonInfo;
    const/4 v3, 0x0

    .line 295
    .local v3, cc:I
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/NavbarEditor;->mIds:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    .line 296
    .local v6, idMap:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-boolean v9, p0, Lcom/android/systemui/statusbar/phone/NavbarEditor;->mVertical:Z

    if-eqz v9, :cond_0

    invoke-static {v6}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 297
    :cond_0
    const/4 v9, 0x0

    sput v9, Lcom/android/systemui/statusbar/phone/NavbarEditor;->visibleCount:I

    .line 298
    move-object v0, v2

    .local v0, arr$:[Lcom/android/systemui/statusbar/NavigationButtons$ButtonInfo;
    array-length v8, v0

    .local v8, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_0
    if-ge v5, v8, :cond_2

    aget-object v1, v0, v5

    .line 299
    .local v1, bi:Lcom/android/systemui/statusbar/NavigationButtons$ButtonInfo;
    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/NavbarEditor;->mParent:Landroid/view/ViewGroup;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v10, v9}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/policy/KeyButtonView;

    .line 300
    .local v4, curView:Lcom/android/systemui/statusbar/policy/KeyButtonView;
    sget-object v9, Lcom/android/systemui/statusbar/NavigationButtons;->IS_SLOT_SMALL:[Z

    aget-boolean v7, v9, v3

    .line 301
    .local v7, isSmallButton:Z
    iget-boolean v9, p0, Lcom/android/systemui/statusbar/phone/NavbarEditor;->mVertical:Z

    invoke-virtual {v4, v1, v9}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->setInfo(Lcom/android/systemui/statusbar/NavigationButtons$ButtonInfo;Z)V

    .line 302
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->getTag()Ljava/lang/Object;

    move-result-object v9

    sget-object v10, Lcom/android/systemui/statusbar/NavigationButtons;->EMPTY:Lcom/android/systemui/statusbar/NavigationButtons$ButtonInfo;

    invoke-virtual {v9, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    if-nez v7, :cond_1

    .line 303
    sget v9, Lcom/android/systemui/statusbar/phone/NavbarEditor;->visibleCount:I

    add-int/lit8 v9, v9, 0x1

    sput v9, Lcom/android/systemui/statusbar/phone/NavbarEditor;->visibleCount:I

    .line 305
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 298
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 307
    .end local v1           #bi:Lcom/android/systemui/statusbar/NavigationButtons$ButtonInfo;
    .end local v4           #curView:Lcom/android/systemui/statusbar/policy/KeyButtonView;
    .end local v7           #isSmallButton:Z
    :cond_2
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/NavbarEditor;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/android/systemui/statusbar/phone/NavbarEditor;->isDevicePhone(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 308
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavbarEditor;->adjustPadding()V

    .line 310
    :cond_3
    return-void
.end method

.method protected updateLowLights(Landroid/view/View;)V
    .locals 8
    .parameter "current"

    .prologue
    const/4 v7, 0x0

    const/16 v6, 0x8

    .line 351
    const v5, 0x7f09001f

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 352
    .local v1, lowLights:Landroid/view/ViewGroup;
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    .line 353
    .local v2, totalViews:I
    sget v4, Lcom/android/systemui/statusbar/phone/NavbarEditor;->visibleCount:I

    .line 354
    .local v4, visibleCount:I
    const/4 v3, 0x0

    .local v3, v:I
    :goto_0
    if-ge v3, v2, :cond_3

    .line 355
    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    instance-of v5, v5, Landroid/widget/ImageView;

    if-eqz v5, :cond_0

    .line 356
    add-int/lit8 v5, v3, 0x1

    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 357
    .local v0, blank:Landroid/view/View;
    if-gtz v4, :cond_1

    .line 358
    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 359
    if-eqz v0, :cond_0

    .line 360
    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 354
    .end local v0           #blank:Landroid/view/View;
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 363
    .restart local v0       #blank:Landroid/view/View;
    :cond_1
    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    .line 364
    add-int/lit8 v4, v4, -0x1

    .line 365
    if-lez v4, :cond_2

    if-eqz v0, :cond_2

    .line 366
    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 367
    :cond_2
    if-eqz v0, :cond_0

    .line 368
    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 373
    .end local v0           #blank:Landroid/view/View;
    :cond_3
    return-void
.end method
