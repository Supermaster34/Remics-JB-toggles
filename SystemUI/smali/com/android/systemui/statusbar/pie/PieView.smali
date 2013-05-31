.class public Lcom/android/systemui/statusbar/pie/PieView;
.super Landroid/view/View;
.source "PieView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/pie/PieView$3;,
        Lcom/android/systemui/statusbar/pie/PieView$OnExitListener;,
        Lcom/android/systemui/statusbar/pie/PieView$OnSnapListener;,
        Lcom/android/systemui/statusbar/pie/PieView$SnapPoint;,
        Lcom/android/systemui/statusbar/pie/PieView$PieSlice;,
        Lcom/android/systemui/statusbar/pie/PieView$PieDrawable;
    }
.end annotation


# instance fields
.field private mActivateStartDebug:J

.field private mActive:Z

.field private mActiveItem:Lcom/android/systemui/statusbar/pie/PieItem;

.field private mActiveSnap:Lcom/android/systemui/statusbar/pie/PieView$SnapPoint;

.field private mAnimationListenerCache:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/animation/ValueAnimator$AnimatorUpdateListener;",
            ">;"
        }
    .end annotation
.end field

.field private mBackgroundAnimator:Landroid/animation/ValueAnimator;

.field private mBackgroundFraction:F

.field private mBackgroundPaint:Landroid/graphics/Paint;

.field private mBackgroundTargetAlpha:I

.field private mCenter:Landroid/graphics/Point;

.field private mDrawableCache:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/systemui/statusbar/pie/PieView$PieDrawable;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field private mLayoutDoneForPosition:Lcom/android/internal/util/pie/PiePosition;

.field private mLongPressRunnable:Ljava/lang/Runnable;

.field private mLongPressed:Z

.field private mOnExitListener:Lcom/android/systemui/statusbar/pie/PieView$OnExitListener;

.field private mOnSnapListener:Lcom/android/systemui/statusbar/pie/PieView$OnSnapListener;

.field private mPadding:I

.field private mPieScale:F

.field private mPointerId:I

.field private mPosition:Lcom/android/internal/util/pie/PiePosition;

.field private mSlices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/systemui/statusbar/pie/PieView$PieSlice;",
            ">;"
        }
    .end annotation
.end field

.field private mSnapActivePaint:Landroid/graphics/Paint;

.field private mSnapPaint:Landroid/graphics/Paint;

.field private mSnapPointMask:I

.field private mSnapPoints:[Lcom/android/systemui/statusbar/pie/PieView$SnapPoint;

.field private mSnapRadius:F

.field private mSnapRadiusSqr:F

.field private mSnapThreshold:F

.field private mSnapThresholdSqr:F

.field private mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 256
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 54
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/systemui/statusbar/pie/PieView;->mActivateStartDebug:J

    .line 58
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/pie/PieView;->mBackgroundPaint:Landroid/graphics/Paint;

    .line 61
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/pie/PieView;->mSnapPaint:Landroid/graphics/Paint;

    .line 62
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/pie/PieView;->mSnapActivePaint:Landroid/graphics/Paint;

    .line 69
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/android/systemui/statusbar/pie/PieView;->mPieScale:F

    .line 72
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/pie/PieView;->mActive:Z

    .line 74
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, v3, v3}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/pie/PieView;->mCenter:Landroid/graphics/Point;

    .line 75
    sget-object v0, Lcom/android/internal/util/pie/PiePosition;->BOTTOM:Lcom/android/internal/util/pie/PiePosition;

    iput-object v0, p0, Lcom/android/systemui/statusbar/pie/PieView;->mPosition:Lcom/android/internal/util/pie/PiePosition;

    .line 79
    new-instance v0, Lcom/android/systemui/statusbar/pie/PieView$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/pie/PieView$1;-><init>(Lcom/android/systemui/statusbar/pie/PieView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/pie/PieView;->mLongPressRunnable:Ljava/lang/Runnable;

    .line 86
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/pie/PieView;->mBackgroundAnimator:Landroid/animation/ValueAnimator;

    .line 88
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/pie/PieView;->mAnimationListenerCache:Ljava/util/List;

    .line 91
    new-instance v0, Lcom/android/systemui/statusbar/pie/PieView$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/pie/PieView$2;-><init>(Lcom/android/systemui/statusbar/pie/PieView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/pie/PieView;->mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 180
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/pie/PieView;->mSlices:Ljava/util/List;

    .line 181
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/pie/PieView;->mDrawableCache:Ljava/util/List;

    .line 183
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/pie/PieView;->mLongPressed:Z

    .line 238
    iput v3, p0, Lcom/android/systemui/statusbar/pie/PieView;->mSnapPointMask:I

    .line 239
    invoke-static {}, Lcom/android/internal/util/pie/PiePosition;->values()[Lcom/android/internal/util/pie/PiePosition;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [Lcom/android/systemui/statusbar/pie/PieView$SnapPoint;

    iput-object v0, p0, Lcom/android/systemui/statusbar/pie/PieView;->mSnapPoints:[Lcom/android/systemui/statusbar/pie/PieView$SnapPoint;

    .line 240
    iput-object v4, p0, Lcom/android/systemui/statusbar/pie/PieView;->mActiveSnap:Lcom/android/systemui/statusbar/pie/PieView$SnapPoint;

    .line 248
    iput-object v4, p0, Lcom/android/systemui/statusbar/pie/PieView;->mOnSnapListener:Lcom/android/systemui/statusbar/pie/PieView$OnSnapListener;

    .line 253
    iput-object v4, p0, Lcom/android/systemui/statusbar/pie/PieView;->mOnExitListener:Lcom/android/systemui/statusbar/pie/PieView$OnExitListener;

    .line 258
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/pie/PieView;->mHandler:Landroid/os/Handler;

    .line 259
    iget-object v0, p0, Lcom/android/systemui/statusbar/pie/PieView;->mBackgroundAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/android/systemui/statusbar/pie/PieView;->mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 261
    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/pie/PieView;->setDrawingCacheEnabled(Z)V

    .line 262
    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/pie/PieView;->setVisibility(I)V

    .line 263
    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/pie/PieView;->setWillNotDraw(Z)V

    .line 264
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pie/PieView;->setFocusable(Z)V

    .line 265
    invoke-virtual {p0, p0}, Lcom/android/systemui/statusbar/pie/PieView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 267
    invoke-direct {p0}, Lcom/android/systemui/statusbar/pie/PieView;->getDimensions()V

    .line 268
    invoke-direct {p0}, Lcom/android/systemui/statusbar/pie/PieView;->getColors()V

    .line 269
    return-void

    .line 86
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/pie/PieView;)Lcom/android/systemui/statusbar/pie/PieItem;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/systemui/statusbar/pie/PieView;->mActiveItem:Lcom/android/systemui/statusbar/pie/PieItem;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/pie/PieView;Lcom/android/systemui/statusbar/pie/PieItem;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/pie/PieView;->updateActiveItem(Lcom/android/systemui/statusbar/pie/PieItem;Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/pie/PieView;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget v0, p0, Lcom/android/systemui/statusbar/pie/PieView;->mBackgroundFraction:F

    return v0
.end method

.method static synthetic access$202(Lcom/android/systemui/statusbar/pie/PieView;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    iput p1, p0, Lcom/android/systemui/statusbar/pie/PieView;->mBackgroundFraction:F

    return p1
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/pie/PieView;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/systemui/statusbar/pie/PieView;->mAnimationListenerCache:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/pie/PieView;)Lcom/android/systemui/statusbar/pie/PieView$SnapPoint;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/systemui/statusbar/pie/PieView;->mActiveSnap:Lcom/android/systemui/statusbar/pie/PieView$SnapPoint;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/pie/PieView;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget v0, p0, Lcom/android/systemui/statusbar/pie/PieView;->mSnapRadius:F

    return v0
.end method

.method static synthetic access$600(Lcom/android/systemui/statusbar/pie/PieView;)Landroid/graphics/Paint;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/systemui/statusbar/pie/PieView;->mSnapActivePaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/systemui/statusbar/pie/PieView;)Landroid/graphics/Paint;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/systemui/statusbar/pie/PieView;->mSnapPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/systemui/statusbar/pie/PieView;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget v0, p0, Lcom/android/systemui/statusbar/pie/PieView;->mSnapRadiusSqr:F

    return v0
.end method

.method static synthetic access$900(Lcom/android/systemui/statusbar/pie/PieView;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget v0, p0, Lcom/android/systemui/statusbar/pie/PieView;->mSnapThresholdSqr:F

    return v0
.end method

.method private getColors()V
    .locals 4

    .prologue
    const v3, 0x7f0b0005

    .line 303
    iget-object v1, p0, Lcom/android/systemui/statusbar/pie/PieView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 305
    .local v0, res:Landroid/content/res/Resources;
    iget-object v1, p0, Lcom/android/systemui/statusbar/pie/PieView;->mSnapPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 306
    iget-object v1, p0, Lcom/android/systemui/statusbar/pie/PieView;->mSnapPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 307
    iget-object v1, p0, Lcom/android/systemui/statusbar/pie/PieView;->mSnapPaint:Landroid/graphics/Paint;

    const v2, 0x7f0e004a

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 308
    iget-object v1, p0, Lcom/android/systemui/statusbar/pie/PieView;->mSnapPaint:Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 309
    iget-object v1, p0, Lcom/android/systemui/statusbar/pie/PieView;->mSnapActivePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 311
    iget-object v1, p0, Lcom/android/systemui/statusbar/pie/PieView;->mBackgroundPaint:Landroid/graphics/Paint;

    const v2, 0x7f0b0004

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 312
    iget-object v1, p0, Lcom/android/systemui/statusbar/pie/PieView;->mBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getAlpha()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/pie/PieView;->mBackgroundTargetAlpha:I

    .line 313
    return-void
.end method

.method private getDimensions()V
    .locals 4

    .prologue
    .line 288
    iget-object v1, p0, Lcom/android/systemui/statusbar/pie/PieView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "pie_size"

    const/high16 v3, 0x3f80

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/pie/PieView;->mPieScale:F

    .line 291
    iget-object v1, p0, Lcom/android/systemui/statusbar/pie/PieView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 293
    .local v0, res:Landroid/content/res/Resources;
    const v1, 0x7f0e0049

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/android/systemui/statusbar/pie/PieView;->mPieScale:F

    mul-float/2addr v1, v2

    iput v1, p0, Lcom/android/systemui/statusbar/pie/PieView;->mSnapRadius:F

    .line 294
    iget v1, p0, Lcom/android/systemui/statusbar/pie/PieView;->mSnapRadius:F

    iget v2, p0, Lcom/android/systemui/statusbar/pie/PieView;->mSnapRadius:F

    mul-float/2addr v1, v2

    iput v1, p0, Lcom/android/systemui/statusbar/pie/PieView;->mSnapRadiusSqr:F

    .line 295
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    int-to-float v1, v1

    const v2, 0x3e99999a

    mul-float/2addr v1, v2

    iput v1, p0, Lcom/android/systemui/statusbar/pie/PieView;->mSnapThreshold:F

    .line 297
    iget v1, p0, Lcom/android/systemui/statusbar/pie/PieView;->mSnapThreshold:F

    iget v2, p0, Lcom/android/systemui/statusbar/pie/PieView;->mSnapThreshold:F

    mul-float/2addr v1, v2

    iput v1, p0, Lcom/android/systemui/statusbar/pie/PieView;->mSnapThresholdSqr:F

    .line 299
    const v1, 0x7f0e0048

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/pie/PieView;->mPadding:I

    .line 300
    return-void
.end method

.method private setupSnapPoints(II)V
    .locals 10
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v9, 0x0

    .line 316
    iput-object v9, p0, Lcom/android/systemui/statusbar/pie/PieView;->mActiveSnap:Lcom/android/systemui/statusbar/pie/PieView$SnapPoint;

    .line 318
    invoke-static {}, Lcom/android/internal/util/pie/PiePosition;->values()[Lcom/android/internal/util/pie/PiePosition;

    move-result-object v0

    .local v0, arr$:[Lcom/android/internal/util/pie/PiePosition;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_4

    aget-object v1, v0, v2

    .line 319
    .local v1, g:Lcom/android/internal/util/pie/PiePosition;
    iget v6, p0, Lcom/android/systemui/statusbar/pie/PieView;->mSnapPointMask:I

    iget v7, v1, Lcom/android/internal/util/pie/PiePosition;->FLAG:I

    and-int/2addr v6, v7

    if-nez v6, :cond_3

    .line 320
    div-int/lit8 v4, p1, 0x2

    .line 321
    .local v4, x:I
    div-int/lit8 v5, p2, 0x2

    .line 322
    .local v5, y:I
    sget-object v6, Lcom/android/internal/util/pie/PiePosition;->LEFT:Lcom/android/internal/util/pie/PiePosition;

    if-eq v1, v6, :cond_0

    sget-object v6, Lcom/android/internal/util/pie/PiePosition;->RIGHT:Lcom/android/internal/util/pie/PiePosition;

    if-ne v1, v6, :cond_1

    .line 323
    :cond_0
    iget v6, v1, Lcom/android/internal/util/pie/PiePosition;->FACTOR:I

    mul-int v4, v6, p1

    .line 327
    :goto_1
    iget-object v6, p0, Lcom/android/systemui/statusbar/pie/PieView;->mSnapPoints:[Lcom/android/systemui/statusbar/pie/PieView$SnapPoint;

    iget v7, v1, Lcom/android/internal/util/pie/PiePosition;->INDEX:I

    aget-object v6, v6, v7

    if-eqz v6, :cond_2

    .line 328
    iget-object v6, p0, Lcom/android/systemui/statusbar/pie/PieView;->mSnapPoints:[Lcom/android/systemui/statusbar/pie/PieView$SnapPoint;

    iget v7, v1, Lcom/android/internal/util/pie/PiePosition;->INDEX:I

    aget-object v6, v6, v7

    invoke-virtual {v6, v4, v5}, Lcom/android/systemui/statusbar/pie/PieView$SnapPoint;->reposition(II)V

    .line 318
    .end local v4           #x:I
    .end local v5           #y:I
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 325
    .restart local v4       #x:I
    .restart local v5       #y:I
    :cond_1
    iget v6, v1, Lcom/android/internal/util/pie/PiePosition;->FACTOR:I

    mul-int v5, v6, p2

    goto :goto_1

    .line 330
    :cond_2
    iget-object v6, p0, Lcom/android/systemui/statusbar/pie/PieView;->mSnapPoints:[Lcom/android/systemui/statusbar/pie/PieView$SnapPoint;

    iget v7, v1, Lcom/android/internal/util/pie/PiePosition;->INDEX:I

    new-instance v8, Lcom/android/systemui/statusbar/pie/PieView$SnapPoint;

    invoke-direct {v8, p0, v4, v5, v1}, Lcom/android/systemui/statusbar/pie/PieView$SnapPoint;-><init>(Lcom/android/systemui/statusbar/pie/PieView;IILcom/android/internal/util/pie/PiePosition;)V

    aput-object v8, v6, v7

    goto :goto_2

    .line 333
    .end local v4           #x:I
    .end local v5           #y:I
    :cond_3
    iget-object v6, p0, Lcom/android/systemui/statusbar/pie/PieView;->mSnapPoints:[Lcom/android/systemui/statusbar/pie/PieView$SnapPoint;

    iget v7, v1, Lcom/android/internal/util/pie/PiePosition;->INDEX:I

    aput-object v9, v6, v7

    goto :goto_2

    .line 336
    .end local v1           #g:Lcom/android/internal/util/pie/PiePosition;
    :cond_4
    return-void
.end method

.method private updateActiveItem(Lcom/android/systemui/statusbar/pie/PieItem;Z)V
    .locals 5
    .parameter "newActiveItem"
    .parameter "newLongPressed"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 466
    iget-object v3, p0, Lcom/android/systemui/statusbar/pie/PieView;->mActiveItem:Lcom/android/systemui/statusbar/pie/PieItem;

    if-ne v3, p1, :cond_0

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/pie/PieView;->mLongPressed:Z

    if-eq v3, p2, :cond_3

    .line 467
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/pie/PieView;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/systemui/statusbar/pie/PieView;->mLongPressRunnable:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 468
    iget-object v3, p0, Lcom/android/systemui/statusbar/pie/PieView;->mActiveItem:Lcom/android/systemui/statusbar/pie/PieItem;

    if-eqz v3, :cond_1

    .line 469
    iget-object v3, p0, Lcom/android/systemui/statusbar/pie/PieView;->mActiveItem:Lcom/android/systemui/statusbar/pie/PieItem;

    invoke-virtual {v3, v2, v2}, Lcom/android/systemui/statusbar/pie/PieItem;->setSelected(ZZ)V

    .line 471
    :cond_1
    if-eqz p1, :cond_6

    .line 472
    iget v3, p1, Lcom/android/systemui/statusbar/pie/PieItem;->flags:I

    and-int/lit16 v3, v3, 0x400

    if-eqz v3, :cond_4

    move v0, v1

    .line 473
    .local v0, canLongPressed:Z
    :goto_0
    if-eqz p2, :cond_5

    if-eqz v0, :cond_5

    move p2, v1

    .line 474
    :goto_1
    invoke-virtual {p1, v1, p2}, Lcom/android/systemui/statusbar/pie/PieItem;->setSelected(ZZ)V

    .line 475
    if-eqz v0, :cond_2

    if-nez p2, :cond_2

    .line 476
    iget-object v1, p0, Lcom/android/systemui/statusbar/pie/PieView;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/systemui/statusbar/pie/PieView;->mLongPressRunnable:Ljava/lang/Runnable;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x3fc0

    mul-float/2addr v3, v4

    float-to-int v3, v3

    int-to-long v3, v3

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 480
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/pie/PieView;->mBackgroundAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v1

    if-nez v1, :cond_3

    iget v1, p0, Lcom/android/systemui/statusbar/pie/PieView;->mBackgroundFraction:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_3

    .line 481
    iget-object v1, p0, Lcom/android/systemui/statusbar/pie/PieView;->mBackgroundAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 482
    iget-object v1, p0, Lcom/android/systemui/statusbar/pie/PieView;->mBackgroundAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    .line 488
    .end local v0           #canLongPressed:Z
    :cond_3
    :goto_2
    iput-object p1, p0, Lcom/android/systemui/statusbar/pie/PieView;->mActiveItem:Lcom/android/systemui/statusbar/pie/PieItem;

    .line 489
    iput-boolean p2, p0, Lcom/android/systemui/statusbar/pie/PieView;->mLongPressed:Z

    .line 490
    return-void

    :cond_4
    move v0, v2

    .line 472
    goto :goto_0

    .restart local v0       #canLongPressed:Z
    :cond_5
    move p2, v2

    .line 473
    goto :goto_1

    .line 485
    .end local v0           #canLongPressed:Z
    :cond_6
    const/4 p2, 0x0

    goto :goto_2
.end method


# virtual methods
.method public activate(Landroid/graphics/Point;Lcom/android/internal/util/pie/PiePosition;)V
    .locals 8
    .parameter "center"
    .parameter "position"

    .prologue
    .line 574
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    if-eq v2, v3, :cond_0

    .line 575
    const-string v2, "PieLayout"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Activation not on main thread: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 578
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/systemui/statusbar/pie/PieView;->mActivateStartDebug:J

    .line 580
    invoke-direct {p0}, Lcom/android/systemui/statusbar/pie/PieView;->getDimensions()V

    .line 581
    iput-object p2, p0, Lcom/android/systemui/statusbar/pie/PieView;->mPosition:Lcom/android/internal/util/pie/PiePosition;

    .line 582
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/systemui/statusbar/pie/PieView;->mLayoutDoneForPosition:Lcom/android/internal/util/pie/PiePosition;

    .line 583
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/pie/PieView;->mActive:Z

    .line 587
    iput-object p1, p0, Lcom/android/systemui/statusbar/pie/PieView;->mCenter:Landroid/graphics/Point;

    .line 589
    iget-object v2, p0, Lcom/android/systemui/statusbar/pie/PieView;->mAnimationListenerCache:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 590
    iget-object v2, p0, Lcom/android/systemui/statusbar/pie/PieView;->mSlices:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/pie/PieView$PieSlice;

    .line 591
    .local v1, slice:Lcom/android/systemui/statusbar/pie/PieView$PieSlice;
    instance-of v2, v1, Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    if-eqz v2, :cond_1

    .line 592
    iget-object v2, p0, Lcom/android/systemui/statusbar/pie/PieView;->mAnimationListenerCache:Ljava/util/List;

    check-cast v1, Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .end local v1           #slice:Lcom/android/systemui/statusbar/pie/PieView$PieSlice;
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 596
    :cond_2
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/systemui/statusbar/pie/PieView;->mBackgroundFraction:F

    .line 597
    iget-object v2, p0, Lcom/android/systemui/statusbar/pie/PieView;->mBackgroundAnimator:Landroid/animation/ValueAnimator;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    int-to-long v3, v3

    invoke-virtual {v2, v3, v4}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 598
    iget-object v2, p0, Lcom/android/systemui/statusbar/pie/PieView;->mBackgroundAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    .line 600
    const-string v2, "PieLayout"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "activate finished within "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/android/systemui/statusbar/pie/PieView;->mActivateStartDebug:J

    sub-long/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ms"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 602
    return-void
.end method

.method public addSlice(Lcom/android/systemui/statusbar/pie/PieView$PieSlice;)V
    .locals 1
    .parameter "slice"

    .prologue
    .line 641
    iget-object v0, p0, Lcom/android/systemui/statusbar/pie/PieView;->mSlices:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 642
    return-void
.end method

.method public clearSlices()V
    .locals 2

    .prologue
    .line 630
    iget-object v0, p0, Lcom/android/systemui/statusbar/pie/PieView;->mSlices:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 633
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/pie/PieView;->mActive:Z

    if-nez v0, :cond_0

    .line 634
    iget-object v0, p0, Lcom/android/systemui/statusbar/pie/PieView;->mAnimationListenerCache:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 635
    iget-object v0, p0, Lcom/android/systemui/statusbar/pie/PieView;->mDrawableCache:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 636
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/pie/PieView;->updateActiveItem(Lcom/android/systemui/statusbar/pie/PieItem;Z)V

    .line 638
    :cond_0
    return-void
.end method

.method public exit()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 609
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/pie/PieView;->mActive:Z

    if-nez v1, :cond_1

    .line 627
    :cond_0
    :goto_0
    return-void

    .line 612
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/pie/PieView;->mBackgroundAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 614
    iput-object v3, p0, Lcom/android/systemui/statusbar/pie/PieView;->mActiveSnap:Lcom/android/systemui/statusbar/pie/PieView$SnapPoint;

    .line 615
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/pie/PieView;->mSnapPoints:[Lcom/android/systemui/statusbar/pie/PieView$SnapPoint;

    array-length v1, v1

    if-ge v0, v1, :cond_3

    .line 616
    iget-object v1, p0, Lcom/android/systemui/statusbar/pie/PieView;->mSnapPoints:[Lcom/android/systemui/statusbar/pie/PieView$SnapPoint;

    aget-object v1, v1, v0

    if-eqz v1, :cond_2

    .line 617
    iget-object v1, p0, Lcom/android/systemui/statusbar/pie/PieView;->mSnapPoints:[Lcom/android/systemui/statusbar/pie/PieView$SnapPoint;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/pie/PieView$SnapPoint;->reset()V

    .line 615
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 621
    :cond_3
    invoke-direct {p0, v3, v2}, Lcom/android/systemui/statusbar/pie/PieView;->updateActiveItem(Lcom/android/systemui/statusbar/pie/PieItem;Z)V

    .line 623
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/pie/PieView;->mActive:Z

    .line 624
    iget-object v1, p0, Lcom/android/systemui/statusbar/pie/PieView;->mOnExitListener:Lcom/android/systemui/statusbar/pie/PieView$OnExitListener;

    if-eqz v1, :cond_0

    .line 625
    iget-object v1, p0, Lcom/android/systemui/statusbar/pie/PieView;->mOnExitListener:Lcom/android/systemui/statusbar/pie/PieView$OnExitListener;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/pie/PieView$OnExitListener;->onExit()V

    goto :goto_0
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 645
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/pie/PieView;->mActive:Z

    return v0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "newConfig"

    .prologue
    .line 564
    invoke-super {p0, p1}, Landroid/view/View;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 570
    invoke-direct {p0}, Lcom/android/systemui/statusbar/pie/PieView;->getDimensions()V

    .line 571
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 12
    .parameter "canvas"

    .prologue
    const-wide/16 v10, 0x0

    .line 340
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/pie/PieView;->mActive:Z

    if-eqz v4, :cond_4

    .line 344
    iget-wide v4, p0, Lcom/android/systemui/statusbar/pie/PieView;->mActivateStartDebug:J

    cmp-long v4, v4, v10

    if-eqz v4, :cond_0

    .line 345
    const-string v4, "PieLayout"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "First draw within "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/android/systemui/statusbar/pie/PieView;->mActivateStartDebug:J

    sub-long/2addr v6, v8

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ms"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    :cond_0
    iput-wide v10, p0, Lcom/android/systemui/statusbar/pie/PieView;->mActivateStartDebug:J

    .line 351
    iget-object v4, p0, Lcom/android/systemui/statusbar/pie/PieView;->mBackgroundPaint:Landroid/graphics/Paint;

    iget v5, p0, Lcom/android/systemui/statusbar/pie/PieView;->mBackgroundFraction:F

    iget v6, p0, Lcom/android/systemui/statusbar/pie/PieView;->mBackgroundTargetAlpha:I

    int-to-float v6, v6

    mul-float/2addr v5, v6

    float-to-int v5, v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 352
    iget-object v4, p0, Lcom/android/systemui/statusbar/pie/PieView;->mBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->drawPaint(Landroid/graphics/Paint;)V

    .line 354
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/pie/PieView;->mSnapPoints:[Lcom/android/systemui/statusbar/pie/PieView$SnapPoint;

    array-length v4, v4

    if-ge v1, v4, :cond_2

    .line 355
    iget-object v4, p0, Lcom/android/systemui/statusbar/pie/PieView;->mSnapPoints:[Lcom/android/systemui/statusbar/pie/PieView$SnapPoint;

    aget-object v4, v4, v1

    if-eqz v4, :cond_1

    .line 356
    iget-object v4, p0, Lcom/android/systemui/statusbar/pie/PieView;->mSnapPoints:[Lcom/android/systemui/statusbar/pie/PieView$SnapPoint;

    aget-object v4, v4, v1

    invoke-virtual {v4, p1}, Lcom/android/systemui/statusbar/pie/PieView$SnapPoint;->draw(Landroid/graphics/Canvas;)V

    .line 354
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 361
    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v3

    .line 362
    .local v3, state:I
    sget-object v4, Lcom/android/systemui/statusbar/pie/PieView$3;->$SwitchMap$com$android$internal$util$pie$PiePosition:[I

    iget-object v5, p0, Lcom/android/systemui/statusbar/pie/PieView;->mPosition:Lcom/android/internal/util/pie/PiePosition;

    invoke-virtual {v5}, Lcom/android/internal/util/pie/PiePosition;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 379
    :goto_1
    iget-object v4, p0, Lcom/android/systemui/statusbar/pie/PieView;->mDrawableCache:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/pie/PieView$PieDrawable;

    .line 380
    .local v0, drawable:Lcom/android/systemui/statusbar/pie/PieView$PieDrawable;
    iget-object v4, p0, Lcom/android/systemui/statusbar/pie/PieView;->mPosition:Lcom/android/internal/util/pie/PiePosition;

    invoke-virtual {v0, p1, v4}, Lcom/android/systemui/statusbar/pie/PieView$PieDrawable;->draw(Landroid/graphics/Canvas;Lcom/android/internal/util/pie/PiePosition;)V

    goto :goto_2

    .line 364
    .end local v0           #drawable:Lcom/android/systemui/statusbar/pie/PieView$PieDrawable;
    .end local v2           #i$:Ljava/util/Iterator;
    :pswitch_0
    const/high16 v4, 0x42b4

    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->rotate(F)V

    .line 365
    iget-object v4, p0, Lcom/android/systemui/statusbar/pie/PieView;->mCenter:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    int-to-float v4, v4

    iget-object v5, p0, Lcom/android/systemui/statusbar/pie/PieView;->mCenter:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->x:I

    neg-int v5, v5

    int-to-float v5, v5

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_1

    .line 368
    :pswitch_1
    iget-object v4, p0, Lcom/android/systemui/statusbar/pie/PieView;->mCenter:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    int-to-float v4, v4

    iget-object v5, p0, Lcom/android/systemui/statusbar/pie/PieView;->mCenter:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->y:I

    int-to-float v5, v5

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_1

    .line 371
    :pswitch_2
    const/high16 v4, 0x4387

    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->rotate(F)V

    .line 372
    iget-object v4, p0, Lcom/android/systemui/statusbar/pie/PieView;->mCenter:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    neg-int v4, v4

    int-to-float v4, v4

    iget-object v5, p0, Lcom/android/systemui/statusbar/pie/PieView;->mCenter:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->x:I

    int-to-float v5, v5

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_1

    .line 375
    :pswitch_3
    const/high16 v4, 0x4334

    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->rotate(F)V

    .line 376
    iget-object v4, p0, Lcom/android/systemui/statusbar/pie/PieView;->mCenter:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    neg-int v4, v4

    int-to-float v4, v4

    iget-object v5, p0, Lcom/android/systemui/statusbar/pie/PieView;->mCenter:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->y:I

    neg-int v5, v5

    int-to-float v5, v5

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_1

    .line 383
    .restart local v2       #i$:Ljava/util/Iterator;
    :cond_3
    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 385
    .end local v1           #i:I
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #state:I
    :cond_4
    return-void

    .line 362
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 12
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 494
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 501
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    .line 502
    .local v5, start:J
    iget-wide v8, p0, Lcom/android/systemui/statusbar/pie/PieView;->mActivateStartDebug:J

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-eqz v8, :cond_0

    .line 503
    const-string v8, "PieLayout"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Layout within "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-wide v10, p0, Lcom/android/systemui/statusbar/pie/PieView;->mActivateStartDebug:J

    sub-long v10, v5, v10

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " ms"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    :cond_0
    iget-object v8, p0, Lcom/android/systemui/statusbar/pie/PieView;->mPosition:Lcom/android/internal/util/pie/PiePosition;

    iget v8, v8, Lcom/android/internal/util/pie/PiePosition;->FLAG:I

    or-int/lit8 v7, v8, 0x10

    .line 507
    .local v7, viewMask:I
    sub-int v8, p4, p2

    sub-int v9, p5, p3

    invoke-direct {p0, v8, v9}, Lcom/android/systemui/statusbar/pie/PieView;->setupSnapPoints(II)V

    .line 511
    if-nez p1, :cond_1

    iget-object v8, p0, Lcom/android/systemui/statusbar/pie/PieView;->mPosition:Lcom/android/internal/util/pie/PiePosition;

    iget-object v9, p0, Lcom/android/systemui/statusbar/pie/PieView;->mLayoutDoneForPosition:Lcom/android/internal/util/pie/PiePosition;

    if-eq v8, v9, :cond_5

    .line 512
    :cond_1
    iget-object v8, p0, Lcom/android/systemui/statusbar/pie/PieView;->mDrawableCache:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->clear()V

    .line 513
    iget-object v8, p0, Lcom/android/systemui/statusbar/pie/PieView;->mSlices:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/pie/PieView$PieSlice;

    .line 514
    .local v4, slice:Lcom/android/systemui/statusbar/pie/PieView$PieSlice;
    iget-object v8, p0, Lcom/android/systemui/statusbar/pie/PieView;->mPosition:Lcom/android/internal/util/pie/PiePosition;

    iget v9, p0, Lcom/android/systemui/statusbar/pie/PieView;->mPieScale:F

    invoke-virtual {v4, v8, v9}, Lcom/android/systemui/statusbar/pie/PieView$PieSlice;->prepare(Lcom/android/internal/util/pie/PiePosition;F)V

    .line 515
    iget v8, v4, Lcom/android/systemui/statusbar/pie/PieView$PieSlice;->flags:I

    and-int/2addr v8, v7

    if-ne v8, v7, :cond_2

    .line 516
    iget-object v8, p0, Lcom/android/systemui/statusbar/pie/PieView;->mDrawableCache:Ljava/util/List;

    invoke-interface {v8, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 519
    instance-of v8, v4, Lcom/android/systemui/statusbar/pie/PieSliceContainer;

    if-eqz v8, :cond_2

    .line 520
    check-cast v4, Lcom/android/systemui/statusbar/pie/PieSliceContainer;

    .end local v4           #slice:Lcom/android/systemui/statusbar/pie/PieView$PieSlice;
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/pie/PieSliceContainer;->getItems()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_3
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/pie/PieItem;

    .line 521
    .local v3, item:Lcom/android/systemui/statusbar/pie/PieItem;
    iget v8, v3, Lcom/android/systemui/statusbar/pie/PieItem;->flags:I

    and-int/2addr v8, v7

    if-ne v8, v7, :cond_3

    .line 522
    iget-object v8, p0, Lcom/android/systemui/statusbar/pie/PieView;->mPosition:Lcom/android/internal/util/pie/PiePosition;

    iget v9, p0, Lcom/android/systemui/statusbar/pie/PieView;->mPieScale:F

    invoke-virtual {v3, v8, v9}, Lcom/android/systemui/statusbar/pie/PieItem;->prepare(Lcom/android/internal/util/pie/PiePosition;F)V

    .line 523
    iget-object v8, p0, Lcom/android/systemui/statusbar/pie/PieView;->mDrawableCache:Ljava/util/List;

    invoke-interface {v8, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 529
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #item:Lcom/android/systemui/statusbar/pie/PieItem;
    :cond_4
    iget-object v8, p0, Lcom/android/systemui/statusbar/pie/PieView;->mPosition:Lcom/android/internal/util/pie/PiePosition;

    iput-object v8, p0, Lcom/android/systemui/statusbar/pie/PieView;->mLayoutDoneForPosition:Lcom/android/internal/util/pie/PiePosition;

    .line 532
    :cond_5
    const/4 v0, 0x0

    .line 534
    .local v0, estimatedWidth:F
    iget-object v8, p0, Lcom/android/systemui/statusbar/pie/PieView;->mSlices:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_6
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/pie/PieView$PieSlice;

    .line 535
    .restart local v4       #slice:Lcom/android/systemui/statusbar/pie/PieView$PieSlice;
    iget v8, v4, Lcom/android/systemui/statusbar/pie/PieView$PieSlice;->flags:I

    and-int/2addr v8, v7

    if-ne v8, v7, :cond_6

    iget v8, v4, Lcom/android/systemui/statusbar/pie/PieView$PieSlice;->flags:I

    and-int/lit16 v8, v8, 0x80

    if-eqz v8, :cond_6

    .line 536
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/pie/PieView$PieSlice;->estimateWidth()F

    move-result v8

    invoke-static {v0, v8}, Ljava/lang/Math;->max(FF)F

    move-result v0

    goto :goto_1

    .line 539
    .end local v4           #slice:Lcom/android/systemui/statusbar/pie/PieView$PieSlice;
    :cond_7
    iget v8, p0, Lcom/android/systemui/statusbar/pie/PieView;->mPieScale:F

    mul-float/2addr v0, v8

    .line 541
    iget-object v8, p0, Lcom/android/systemui/statusbar/pie/PieView;->mPosition:Lcom/android/internal/util/pie/PiePosition;

    sget-object v9, Lcom/android/internal/util/pie/PiePosition;->LEFT:Lcom/android/internal/util/pie/PiePosition;

    if-eq v8, v9, :cond_8

    iget-object v8, p0, Lcom/android/systemui/statusbar/pie/PieView;->mPosition:Lcom/android/internal/util/pie/PiePosition;

    sget-object v9, Lcom/android/internal/util/pie/PiePosition;->RIGHT:Lcom/android/internal/util/pie/PiePosition;

    if-ne v8, v9, :cond_a

    .line 542
    :cond_8
    iget-object v8, p0, Lcom/android/systemui/statusbar/pie/PieView;->mCenter:Landroid/graphics/Point;

    iget v9, p0, Lcom/android/systemui/statusbar/pie/PieView;->mPadding:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pie/PieView;->getWidth()I

    move-result v10

    iget v11, p0, Lcom/android/systemui/statusbar/pie/PieView;->mPadding:I

    mul-int/lit8 v11, v11, 0x2

    sub-int/2addr v10, v11

    iget-object v11, p0, Lcom/android/systemui/statusbar/pie/PieView;->mPosition:Lcom/android/internal/util/pie/PiePosition;

    iget v11, v11, Lcom/android/internal/util/pie/PiePosition;->FACTOR:I

    mul-int/2addr v10, v11

    add-int/2addr v9, v10

    iput v9, v8, Landroid/graphics/Point;->x:I

    .line 543
    const v8, 0x3fa66666

    mul-float/2addr v8, v0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pie/PieView;->getHeight()I

    move-result v9

    int-to-float v9, v9

    cmpl-float v8, v8, v9

    if-lez v8, :cond_9

    .line 544
    iget-object v8, p0, Lcom/android/systemui/statusbar/pie/PieView;->mCenter:Landroid/graphics/Point;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pie/PieView;->getHeight()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    iput v9, v8, Landroid/graphics/Point;->y:I

    .line 559
    :goto_2
    const-string v8, "PieLayout"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Layout finished within "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    sub-long/2addr v10, v5

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " ms"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 560
    return-void

    .line 546
    :cond_9
    iget-object v8, p0, Lcom/android/systemui/statusbar/pie/PieView;->mCenter:Landroid/graphics/Point;

    const/high16 v9, 0x4000

    div-float v9, v0, v9

    iget-object v10, p0, Lcom/android/systemui/statusbar/pie/PieView;->mCenter:Landroid/graphics/Point;

    iget v10, v10, Landroid/graphics/Point;->y:I

    int-to-float v10, v10

    invoke-static {v9, v10}, Ljava/lang/Math;->max(FF)F

    move-result v9

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pie/PieView;->getHeight()I

    move-result v10

    int-to-float v10, v10

    const/high16 v11, 0x4000

    div-float v11, v0, v11

    sub-float/2addr v10, v11

    invoke-static {v9, v10}, Ljava/lang/Math;->min(FF)F

    move-result v9

    float-to-int v9, v9

    iput v9, v8, Landroid/graphics/Point;->y:I

    goto :goto_2

    .line 550
    :cond_a
    const v8, 0x3fa66666

    mul-float/2addr v8, v0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pie/PieView;->getWidth()I

    move-result v9

    int-to-float v9, v9

    cmpl-float v8, v8, v9

    if-lez v8, :cond_b

    .line 551
    iget-object v8, p0, Lcom/android/systemui/statusbar/pie/PieView;->mCenter:Landroid/graphics/Point;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pie/PieView;->getWidth()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    iput v9, v8, Landroid/graphics/Point;->x:I

    .line 556
    :goto_3
    iget-object v8, p0, Lcom/android/systemui/statusbar/pie/PieView;->mCenter:Landroid/graphics/Point;

    iget v9, p0, Lcom/android/systemui/statusbar/pie/PieView;->mPadding:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pie/PieView;->getHeight()I

    move-result v10

    iget v11, p0, Lcom/android/systemui/statusbar/pie/PieView;->mPadding:I

    mul-int/lit8 v11, v11, 0x2

    sub-int/2addr v10, v11

    iget-object v11, p0, Lcom/android/systemui/statusbar/pie/PieView;->mPosition:Lcom/android/internal/util/pie/PiePosition;

    iget v11, v11, Lcom/android/internal/util/pie/PiePosition;->FACTOR:I

    mul-int/2addr v10, v11

    add-int/2addr v9, v10

    iput v9, v8, Landroid/graphics/Point;->y:I

    goto :goto_2

    .line 553
    :cond_b
    iget-object v8, p0, Lcom/android/systemui/statusbar/pie/PieView;->mCenter:Landroid/graphics/Point;

    const/high16 v9, 0x4000

    div-float v9, v0, v9

    iget-object v10, p0, Lcom/android/systemui/statusbar/pie/PieView;->mCenter:Landroid/graphics/Point;

    iget v10, v10, Landroid/graphics/Point;->x:I

    int-to-float v10, v10

    invoke-static {v9, v10}, Ljava/lang/Math;->max(FF)F

    move-result v9

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pie/PieView;->getWidth()I

    move-result v10

    int-to-float v10, v10

    const/high16 v11, 0x4000

    div-float v11, v0, v11

    sub-float/2addr v10, v11

    invoke-static {v9, v10}, Ljava/lang/Math;->min(FF)F

    move-result v9

    float-to-int v9, v9

    iput v9, v8, Landroid/graphics/Point;->x:I

    goto :goto_3
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 21
    .parameter "v"
    .parameter "event"

    .prologue
    .line 389
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    .line 390
    .local v2, action:I
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/systemui/statusbar/pie/PieView;->mPointerId:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v9

    .line 393
    .local v9, index:I
    if-eqz v2, :cond_0

    if-eqz v9, :cond_0

    .line 394
    const/4 v15, 0x0

    .line 462
    :goto_0
    return v15

    .line 397
    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v13

    .line 398
    .local v13, x:F
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v14

    .line 404
    .local v14, y:F
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/systemui/statusbar/pie/PieView;->mActive:Z

    if-eqz v15, :cond_4

    .line 405
    if-nez v2, :cond_5

    .line 406
    const/4 v15, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v15

    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/systemui/statusbar/pie/PieView;->mPointerId:I

    .line 444
    :cond_1
    :goto_1
    const/4 v15, 0x1

    if-ne v2, v15, :cond_3

    .line 446
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/pie/PieView;->mActiveSnap:Lcom/android/systemui/statusbar/pie/PieView$SnapPoint;

    if-eqz v15, :cond_d

    .line 447
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/pie/PieView;->mOnSnapListener:Lcom/android/systemui/statusbar/pie/PieView$OnSnapListener;

    if-eqz v15, :cond_2

    .line 448
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/pie/PieView;->mOnSnapListener:Lcom/android/systemui/statusbar/pie/PieView$OnSnapListener;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/pie/PieView;->mActiveSnap:Lcom/android/systemui/statusbar/pie/PieView$SnapPoint;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/systemui/statusbar/pie/PieView$SnapPoint;->position:Lcom/android/internal/util/pie/PiePosition;

    move-object/from16 v16, v0

    invoke-interface/range {v15 .. v16}, Lcom/android/systemui/statusbar/pie/PieView$OnSnapListener;->onSnap(Lcom/android/internal/util/pie/PiePosition;)V

    .line 455
    :cond_2
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/pie/PieView;->exit()V

    .line 458
    :cond_3
    const/4 v15, 0x3

    if-ne v2, v15, :cond_4

    .line 459
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/pie/PieView;->exit()V

    .line 462
    :cond_4
    const/4 v15, 0x1

    goto :goto_0

    .line 407
    :cond_5
    const/4 v15, 0x2

    if-eq v2, v15, :cond_6

    const/4 v15, 0x1

    if-ne v2, v15, :cond_1

    .line 408
    :cond_6
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/systemui/statusbar/pie/PieView;->mActiveSnap:Lcom/android/systemui/statusbar/pie/PieView$SnapPoint;

    .line 409
    const/4 v7, 0x0

    .local v7, i:I
    :goto_3
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/pie/PieView;->mSnapPoints:[Lcom/android/systemui/statusbar/pie/PieView$SnapPoint;

    array-length v15, v15

    if-ge v7, v15, :cond_8

    .line 410
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/pie/PieView;->mSnapPoints:[Lcom/android/systemui/statusbar/pie/PieView$SnapPoint;

    aget-object v15, v15, v7

    if-eqz v15, :cond_7

    .line 411
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/pie/PieView;->mSnapPoints:[Lcom/android/systemui/statusbar/pie/PieView$SnapPoint;

    aget-object v15, v15, v7

    invoke-virtual {v15, v13, v14}, Lcom/android/systemui/statusbar/pie/PieView$SnapPoint;->interact(FF)Z

    move-result v15

    if-eqz v15, :cond_7

    .line 412
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/pie/PieView;->mSnapPoints:[Lcom/android/systemui/statusbar/pie/PieView$SnapPoint;

    aget-object v15, v15, v7

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/systemui/statusbar/pie/PieView;->mActiveSnap:Lcom/android/systemui/statusbar/pie/PieView$SnapPoint;

    .line 409
    :cond_7
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 417
    :cond_8
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/pie/PieView;->mCenter:Landroid/graphics/Point;

    iget v15, v15, Landroid/graphics/Point;->x:I

    int-to-float v15, v15

    sub-float/2addr v15, v13

    float-to-double v15, v15

    const-wide/high16 v17, 0x4000

    invoke-static/range {v15 .. v18}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/pie/PieView;->mCenter:Landroid/graphics/Point;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    sub-float v17, v17, v14

    move/from16 v0, v17

    float-to-double v0, v0

    move-wide/from16 v17, v0

    const-wide/high16 v19, 0x4000

    invoke-static/range {v17 .. v20}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v17

    add-double v15, v15, v17

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    .line 419
    .local v4, distance:D
    const-wide/high16 v15, 0x3ff0

    cmpl-double v15, v4, v15

    if-lez v15, :cond_b

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/pie/PieView;->mCenter:Landroid/graphics/Point;

    iget v15, v15, Landroid/graphics/Point;->y:I

    int-to-float v15, v15

    sub-float v15, v14, v15

    float-to-double v15, v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/pie/PieView;->mCenter:Landroid/graphics/Point;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    sub-float v17, v13, v17

    move/from16 v0, v17

    float-to-double v0, v0

    move-wide/from16 v17, v0

    invoke-static/range {v15 .. v18}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v15

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v15

    :goto_4
    double-to-float v3, v15

    .line 421
    .local v3, alpha:F
    const/4 v15, 0x0

    cmpg-float v15, v3, v15

    if-gez v15, :cond_9

    .line 422
    const/high16 v15, 0x43b4

    add-float/2addr v3, v15

    .line 424
    :cond_9
    const/high16 v15, 0x43b4

    add-float/2addr v15, v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/pie/PieView;->mPosition:Lcom/android/internal/util/pie/PiePosition;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/internal/util/pie/PiePosition;->INDEX:I

    move/from16 v16, v0

    add-int/lit8 v16, v16, -0x1

    mul-int/lit8 v16, v16, 0x5a

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    add-float v15, v15, v16

    const/high16 v16, 0x43b4

    rem-float v3, v15, v16

    .line 428
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/systemui/statusbar/pie/PieView;->mPieScale:F

    float-to-double v15, v15

    div-double v15, v4, v15

    double-to-int v11, v15

    .line 434
    .local v11, radius:I
    const/4 v10, 0x0

    .line 435
    .local v10, newItem:Lcom/android/systemui/statusbar/pie/PieItem;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/pie/PieView;->mDrawableCache:Ljava/util/List;

    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, i$:Ljava/util/Iterator;
    :cond_a
    :goto_5
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_c

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/statusbar/pie/PieView$PieDrawable;

    .line 436
    .local v6, drawable:Lcom/android/systemui/statusbar/pie/PieView$PieDrawable;
    invoke-virtual {v6, v3, v11}, Lcom/android/systemui/statusbar/pie/PieView$PieDrawable;->interact(FI)Lcom/android/systemui/statusbar/pie/PieItem;

    move-result-object v12

    .line 437
    .local v12, tmp:Lcom/android/systemui/statusbar/pie/PieItem;
    if-eqz v12, :cond_a

    .line 438
    move-object v10, v12

    goto :goto_5

    .line 419
    .end local v3           #alpha:F
    .end local v6           #drawable:Lcom/android/systemui/statusbar/pie/PieView$PieDrawable;
    .end local v8           #i$:Ljava/util/Iterator;
    .end local v10           #newItem:Lcom/android/systemui/statusbar/pie/PieItem;
    .end local v11           #radius:I
    .end local v12           #tmp:Lcom/android/systemui/statusbar/pie/PieItem;
    :cond_b
    const-wide/16 v15, 0x0

    goto :goto_4

    .line 441
    .restart local v3       #alpha:F
    .restart local v8       #i$:Ljava/util/Iterator;
    .restart local v10       #newItem:Lcom/android/systemui/statusbar/pie/PieItem;
    .restart local v11       #radius:I
    :cond_c
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/systemui/statusbar/pie/PieView;->mLongPressed:Z

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v15}, Lcom/android/systemui/statusbar/pie/PieView;->updateActiveItem(Lcom/android/systemui/statusbar/pie/PieItem;Z)V

    goto/16 :goto_1

    .line 451
    .end local v3           #alpha:F
    .end local v4           #distance:D
    .end local v7           #i:I
    .end local v8           #i$:Ljava/util/Iterator;
    .end local v10           #newItem:Lcom/android/systemui/statusbar/pie/PieItem;
    .end local v11           #radius:I
    :cond_d
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/pie/PieView;->mActiveItem:Lcom/android/systemui/statusbar/pie/PieItem;

    if-eqz v15, :cond_2

    .line 452
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/pie/PieView;->mActiveItem:Lcom/android/systemui/statusbar/pie/PieItem;

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/pie/PieView;->mLongPressed:Z

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Lcom/android/systemui/statusbar/pie/PieItem;->onClickCall(Z)V

    goto/16 :goto_2
.end method

.method public setOnExitListener(Lcom/android/systemui/statusbar/pie/PieView$OnExitListener;)V
    .locals 0
    .parameter "onExitListener"

    .prologue
    .line 276
    iput-object p1, p0, Lcom/android/systemui/statusbar/pie/PieView;->mOnExitListener:Lcom/android/systemui/statusbar/pie/PieView$OnExitListener;

    .line 277
    return-void
.end method

.method public setOnSnapListener(Lcom/android/systemui/statusbar/pie/PieView$OnSnapListener;)V
    .locals 0
    .parameter "onSnapListener"

    .prologue
    .line 272
    iput-object p1, p0, Lcom/android/systemui/statusbar/pie/PieView;->mOnSnapListener:Lcom/android/systemui/statusbar/pie/PieView$OnSnapListener;

    .line 273
    return-void
.end method

.method public setSnapPoints(I)V
    .locals 0
    .parameter "mask"

    .prologue
    .line 284
    iput p1, p0, Lcom/android/systemui/statusbar/pie/PieView;->mSnapPointMask:I

    .line 285
    return-void
.end method
