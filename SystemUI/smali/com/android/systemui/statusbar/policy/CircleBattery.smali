.class public Lcom/android/systemui/statusbar/policy/CircleBattery;
.super Landroid/widget/ImageView;
.source "CircleBattery.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/CircleBattery$BatteryReceiver;,
        Lcom/android/systemui/statusbar/policy/CircleBattery$SettingsObserver;
    }
.end annotation


# instance fields
.field private mActivated:Z

.field private mAnimOffset:I

.field private mAttached:Z

.field private mBatteryPlugged:Z

.field private mBatteryReceiver:Lcom/android/systemui/statusbar/policy/CircleBattery$BatteryReceiver;

.field private mBatteryStatus:I

.field private mCircleSize:I

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private final mInvalidate:Ljava/lang/Runnable;

.field private mIsAnimating:Z

.field private mLevel:I

.field private mObserver:Lcom/android/systemui/statusbar/policy/CircleBattery$SettingsObserver;

.field private mPaintFont:Landroid/graphics/Paint;

.field private mPaintGray:Landroid/graphics/Paint;

.field private mPaintRed:Landroid/graphics/Paint;

.field private mPaintSystem:Landroid/graphics/Paint;

.field private mPercentage:Z

.field private mRectLeft:Landroid/graphics/RectF;

.field private mTextLeftX:Ljava/lang/Float;

.field private mTextY:Ljava/lang/Float;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 185
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/policy/CircleBattery;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 186
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 189
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/policy/CircleBattery;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 190
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const v4, 0x1060013

    const/4 v3, 0x1

    .line 193
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 56
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/CircleBattery;->mBatteryReceiver:Lcom/android/systemui/statusbar/policy/CircleBattery$BatteryReceiver;

    .line 83
    new-instance v1, Lcom/android/systemui/statusbar/policy/CircleBattery$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/policy/CircleBattery$1;-><init>(Lcom/android/systemui/statusbar/policy/CircleBattery;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/CircleBattery;->mInvalidate:Ljava/lang/Runnable;

    .line 195
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/CircleBattery;->mContext:Landroid/content/Context;

    .line 196
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/CircleBattery;->mHandler:Landroid/os/Handler;

    .line 198
    new-instance v1, Lcom/android/systemui/statusbar/policy/CircleBattery$SettingsObserver;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/CircleBattery;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/statusbar/policy/CircleBattery$SettingsObserver;-><init>(Lcom/android/systemui/statusbar/policy/CircleBattery;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/CircleBattery;->mObserver:Lcom/android/systemui/statusbar/policy/CircleBattery$SettingsObserver;

    .line 199
    new-instance v1, Lcom/android/systemui/statusbar/policy/CircleBattery$BatteryReceiver;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/CircleBattery;->mContext:Landroid/content/Context;

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/statusbar/policy/CircleBattery$BatteryReceiver;-><init>(Lcom/android/systemui/statusbar/policy/CircleBattery;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/CircleBattery;->mBatteryReceiver:Lcom/android/systemui/statusbar/policy/CircleBattery$BatteryReceiver;

    .line 203
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/CircleBattery;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 205
    .local v0, res:Landroid/content/res/Resources;
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/CircleBattery;->mPaintFont:Landroid/graphics/Paint;

    .line 206
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/CircleBattery;->mPaintFont:Landroid/graphics/Paint;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 207
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/CircleBattery;->mPaintFont:Landroid/graphics/Paint;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setDither(Z)V

    .line 208
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/CircleBattery;->mPaintFont:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 210
    new-instance v1, Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/CircleBattery;->mPaintFont:Landroid/graphics/Paint;

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/CircleBattery;->mPaintGray:Landroid/graphics/Paint;

    .line 211
    new-instance v1, Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/CircleBattery;->mPaintFont:Landroid/graphics/Paint;

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/CircleBattery;->mPaintSystem:Landroid/graphics/Paint;

    .line 212
    new-instance v1, Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/CircleBattery;->mPaintFont:Landroid/graphics/Paint;

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/CircleBattery;->mPaintRed:Landroid/graphics/Paint;

    .line 214
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/CircleBattery;->mPaintGray:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 215
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/CircleBattery;->mPaintSystem:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 216
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/CircleBattery;->mPaintRed:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 218
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/CircleBattery;->mPaintFont:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 219
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/CircleBattery;->mPaintSystem:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 222
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/CircleBattery;->mPaintGray:Landroid/graphics/Paint;

    const/high16 v2, 0x106

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 223
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/CircleBattery;->mPaintRed:Landroid/graphics/Paint;

    const v2, 0x1060016

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 226
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/CircleBattery;->mPaintFont:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 227
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/CircleBattery;->mPaintFont:Landroid/graphics/Paint;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 228
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/policy/CircleBattery;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/CircleBattery;->mActivated:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/systemui/statusbar/policy/CircleBattery;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/CircleBattery;->mActivated:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/policy/CircleBattery;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/CircleBattery;->mAttached:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/policy/CircleBattery;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/CircleBattery;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/systemui/statusbar/policy/CircleBattery;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/CircleBattery;->mPercentage:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/policy/CircleBattery;)Lcom/android/systemui/statusbar/policy/CircleBattery$BatteryReceiver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/CircleBattery;->mBatteryReceiver:Lcom/android/systemui/statusbar/policy/CircleBattery$BatteryReceiver;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/systemui/statusbar/policy/CircleBattery;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget v0, p0, Lcom/android/systemui/statusbar/policy/CircleBattery;->mCircleSize:I

    return v0
.end method

.method private initSizeBasedStuff()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    const/high16 v9, 0x4000

    .line 378
    iget v3, p0, Lcom/android/systemui/statusbar/policy/CircleBattery;->mCircleSize:I

    if-nez v3, :cond_0

    .line 379
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/CircleBattery;->initSizeMeasureIconHeight()V

    .line 382
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/CircleBattery;->mPaintFont:Landroid/graphics/Paint;

    iget v4, p0, Lcom/android/systemui/statusbar/policy/CircleBattery;->mCircleSize:I

    int-to-float v4, v4

    div-float/2addr v4, v9

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 384
    iget v3, p0, Lcom/android/systemui/statusbar/policy/CircleBattery;->mCircleSize:I

    int-to-float v3, v3

    const/high16 v4, 0x40d0

    div-float v2, v3, v4

    .line 385
    .local v2, strokeWidth:F
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/CircleBattery;->mPaintRed:Landroid/graphics/Paint;

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 386
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/CircleBattery;->mPaintSystem:Landroid/graphics/Paint;

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 387
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/CircleBattery;->mPaintGray:Landroid/graphics/Paint;

    const/high16 v4, 0x4060

    div-float v4, v2, v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 390
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/CircleBattery;->getPaddingLeft()I

    move-result v1

    .line 391
    .local v1, pLeft:I
    new-instance v3, Landroid/graphics/RectF;

    int-to-float v4, v1

    div-float v5, v2, v9

    add-float/2addr v4, v5

    const/4 v5, 0x0

    div-float v6, v2, v9

    add-float/2addr v5, v6

    iget v6, p0, Lcom/android/systemui/statusbar/policy/CircleBattery;->mCircleSize:I

    int-to-float v6, v6

    div-float v7, v2, v9

    sub-float/2addr v6, v7

    int-to-float v7, v1

    add-float/2addr v6, v7

    iget v7, p0, Lcom/android/systemui/statusbar/policy/CircleBattery;->mCircleSize:I

    int-to-float v7, v7

    div-float v8, v2, v9

    sub-float/2addr v7, v8

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/CircleBattery;->mRectLeft:Landroid/graphics/RectF;

    .line 395
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 396
    .local v0, bounds:Landroid/graphics/Rect;
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/CircleBattery;->mPaintFont:Landroid/graphics/Paint;

    const-string v4, "99"

    const-string v5, "99"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v3, v4, v10, v5, v0}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 397
    iget v3, p0, Lcom/android/systemui/statusbar/policy/CircleBattery;->mCircleSize:I

    int-to-float v3, v3

    div-float/2addr v3, v9

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/CircleBattery;->getPaddingLeft()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/CircleBattery;->mTextLeftX:Ljava/lang/Float;

    .line 399
    iget v3, p0, Lcom/android/systemui/statusbar/policy/CircleBattery;->mCircleSize:I

    int-to-float v3, v3

    div-float/2addr v3, v9

    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    iget v5, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    div-float/2addr v4, v9

    add-float/2addr v3, v4

    div-float v4, v2, v9

    sub-float/2addr v3, v4

    const/high16 v4, 0x3f80

    add-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/CircleBattery;->mTextY:Ljava/lang/Float;

    .line 402
    invoke-virtual {p0, v10, v10}, Lcom/android/systemui/statusbar/policy/CircleBattery;->onMeasure(II)V

    .line 403
    return-void
.end method

.method private initSizeMeasureIconHeight()V
    .locals 6

    .prologue
    .line 413
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/CircleBattery;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f020204

    invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 415
    .local v1, measure:Landroid/graphics/Bitmap;
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    div-int/lit8 v2, v4, 0x2

    .line 417
    .local v2, x:I
    const/4 v4, 0x0

    iput v4, p0, Lcom/android/systemui/statusbar/policy/CircleBattery;->mCircleSize:I

    .line 418
    const/4 v3, 0x0

    .local v3, y:I
    :goto_0
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 419
    invoke-virtual {v1, v2, v3}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v4

    invoke-static {v4}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    .line 420
    .local v0, alpha:I
    const/4 v4, 0x5

    if-le v0, v4, :cond_0

    .line 421
    iget v4, p0, Lcom/android/systemui/statusbar/policy/CircleBattery;->mCircleSize:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/systemui/statusbar/policy/CircleBattery;->mCircleSize:I

    .line 418
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 424
    .end local v0           #alpha:I
    :cond_1
    return-void
.end method

.method private isBatteryStatusCharging()Z
    .locals 2

    .prologue
    .line 252
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/CircleBattery;->getBatteryStatus()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isBatteryStatusUnknown()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 248
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/CircleBattery;->getBatteryStatus()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateChargeAnim()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 351
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/CircleBattery;->isBatteryStatusCharging()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/CircleBattery;->getLevel()I

    move-result v0

    const/16 v1, 0x61

    if-lt v0, v1, :cond_2

    .line 352
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/CircleBattery;->mIsAnimating:Z

    if-eqz v0, :cond_1

    .line 353
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/policy/CircleBattery;->mIsAnimating:Z

    .line 354
    iput v2, p0, Lcom/android/systemui/statusbar/policy/CircleBattery;->mAnimOffset:I

    .line 355
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/CircleBattery;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/CircleBattery;->mInvalidate:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 370
    :cond_1
    :goto_0
    return-void

    .line 360
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/CircleBattery;->mIsAnimating:Z

    .line 362
    iget v0, p0, Lcom/android/systemui/statusbar/policy/CircleBattery;->mAnimOffset:I

    const/16 v1, 0x168

    if-le v0, v1, :cond_3

    .line 363
    iput v2, p0, Lcom/android/systemui/statusbar/policy/CircleBattery;->mAnimOffset:I

    .line 368
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/CircleBattery;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/CircleBattery;->mInvalidate:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 369
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/CircleBattery;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/CircleBattery;->mInvalidate:Ljava/lang/Runnable;

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 365
    :cond_3
    iget v0, p0, Lcom/android/systemui/statusbar/policy/CircleBattery;->mAnimOffset:I

    add-int/lit8 v0, v0, 0x3

    iput v0, p0, Lcom/android/systemui/statusbar/policy/CircleBattery;->mAnimOffset:I

    goto :goto_1
.end method


# virtual methods
.method protected drawCircle(Landroid/graphics/Canvas;IIFLandroid/graphics/RectF;)V
    .locals 10
    .parameter "canvas"
    .parameter "level"
    .parameter "animOffset"
    .parameter "textX"
    .parameter "drawRect"

    .prologue
    const/4 v4, 0x0

    .line 297
    iget-object v9, p0, Lcom/android/systemui/statusbar/policy/CircleBattery;->mPaintSystem:Landroid/graphics/Paint;

    .line 298
    .local v9, usePaint:Landroid/graphics/Paint;
    move v6, p2

    .line 299
    .local v6, internalLevel:I
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/CircleBattery;->isBatteryStatusUnknown()Z

    move-result v8

    .line 301
    .local v8, unknownStatus:Z
    if-eqz v8, :cond_3

    .line 302
    iget-object v9, p0, Lcom/android/systemui/statusbar/policy/CircleBattery;->mPaintGray:Landroid/graphics/Paint;

    .line 303
    const/16 v6, 0x64

    .line 311
    :cond_0
    :goto_0
    move v7, v6

    .line 312
    .local v7, padLevel:I
    const/16 v0, 0x61

    if-lt v7, v0, :cond_1

    .line 313
    const/16 v7, 0x64

    .line 317
    :cond_1
    const/high16 v2, 0x4387

    const/high16 v3, 0x43b4

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/CircleBattery;->mPaintGray:Landroid/graphics/Paint;

    move-object v0, p1

    move-object v1, p5

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 319
    add-int/lit16 v0, p3, 0x10e

    int-to-float v2, v0

    const v0, 0x40666666

    int-to-float v1, v7

    mul-float v3, v0, v1

    move-object v0, p1

    move-object v1, p5

    move-object v5, v9

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 322
    if-eqz v8, :cond_4

    .line 323
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/CircleBattery;->mPaintFont:Landroid/graphics/Paint;

    invoke-virtual {v9}, Landroid/graphics/Paint;->getColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 324
    const-string v0, "?"

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/CircleBattery;->mTextY:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/CircleBattery;->mPaintFont:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, p4, v1, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 330
    :cond_2
    :goto_1
    return-void

    .line 304
    .end local v7           #padLevel:I
    :cond_3
    const/16 v0, 0xe

    if-gt v6, v0, :cond_0

    .line 305
    iget-object v9, p0, Lcom/android/systemui/statusbar/policy/CircleBattery;->mPaintRed:Landroid/graphics/Paint;

    goto :goto_0

    .line 325
    .restart local v7       #padLevel:I
    :cond_4
    const/16 v0, 0x64

    if-ge v6, v0, :cond_2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/CircleBattery;->mPercentage:Z

    if-eqz v0, :cond_2

    .line 326
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/CircleBattery;->mPaintFont:Landroid/graphics/Paint;

    invoke-virtual {v9}, Landroid/graphics/Paint;->getColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 327
    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/CircleBattery;->mTextY:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/CircleBattery;->mPaintFont:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, p4, v1, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_1
.end method

.method protected getBatteryStatus()I
    .locals 1

    .prologue
    .line 235
    iget v0, p0, Lcom/android/systemui/statusbar/policy/CircleBattery;->mBatteryStatus:I

    return v0
.end method

.method protected getLevel()I
    .locals 1

    .prologue
    .line 231
    iget v0, p0, Lcom/android/systemui/statusbar/policy/CircleBattery;->mLevel:I

    return v0
.end method

.method protected isBatteryPresent()Z
    .locals 1

    .prologue
    .line 244
    const/4 v0, 0x1

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 4

    .prologue
    .line 264
    invoke-super {p0}, Landroid/widget/ImageView;->onAttachedToWindow()V

    .line 265
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/CircleBattery;->mAttached:Z

    if-nez v0, :cond_0

    .line 266
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/CircleBattery;->mAttached:Z

    .line 267
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/CircleBattery;->mObserver:Lcom/android/systemui/statusbar/policy/CircleBattery$SettingsObserver;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/CircleBattery$SettingsObserver;->observe()V

    .line 268
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/CircleBattery;->mBatteryReceiver:Lcom/android/systemui/statusbar/policy/CircleBattery$BatteryReceiver;

    #calls: Lcom/android/systemui/statusbar/policy/CircleBattery$BatteryReceiver;->updateRegistration()V
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/CircleBattery$BatteryReceiver;->access$500(Lcom/android/systemui/statusbar/policy/CircleBattery$BatteryReceiver;)V

    .line 269
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/CircleBattery;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/CircleBattery;->mInvalidate:Ljava/lang/Runnable;

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 271
    :cond_0
    return-void
.end method

.method protected onBatteryStatusChange(Landroid/content/Intent;)V
    .locals 3
    .parameter "intent"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 256
    const-string v2, "level"

    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/statusbar/policy/CircleBattery;->mLevel:I

    .line 257
    const-string v2, "plugged"

    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    :cond_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/CircleBattery;->mBatteryPlugged:Z

    .line 258
    const-string v0, "status"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/CircleBattery;->mBatteryStatus:I

    .line 260
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 275
    invoke-super {p0}, Landroid/widget/ImageView;->onDetachedFromWindow()V

    .line 276
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/CircleBattery;->mAttached:Z

    if-eqz v0, :cond_0

    .line 277
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/CircleBattery;->mAttached:Z

    .line 278
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/CircleBattery;->mObserver:Lcom/android/systemui/statusbar/policy/CircleBattery$SettingsObserver;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/CircleBattery$SettingsObserver;->unobserve()V

    .line 279
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/CircleBattery;->mBatteryReceiver:Lcom/android/systemui/statusbar/policy/CircleBattery$BatteryReceiver;

    #calls: Lcom/android/systemui/statusbar/policy/CircleBattery$BatteryReceiver;->updateRegistration()V
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/CircleBattery$BatteryReceiver;->access$500(Lcom/android/systemui/statusbar/policy/CircleBattery$BatteryReceiver;)V

    .line 280
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/CircleBattery;->mRectLeft:Landroid/graphics/RectF;

    .line 282
    iput v1, p0, Lcom/android/systemui/statusbar/policy/CircleBattery;->mCircleSize:I

    .line 285
    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6
    .parameter "canvas"

    .prologue
    .line 334
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/CircleBattery;->mRectLeft:Landroid/graphics/RectF;

    if-nez v0, :cond_0

    .line 335
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/CircleBattery;->initSizeBasedStuff()V

    .line 338
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/CircleBattery;->updateChargeAnim()V

    .line 340
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/CircleBattery;->getLevel()I

    move-result v2

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/CircleBattery;->isBatteryStatusCharging()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v3, p0, Lcom/android/systemui/statusbar/policy/CircleBattery;->mAnimOffset:I

    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/CircleBattery;->mTextLeftX:Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v4

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/CircleBattery;->mRectLeft:Landroid/graphics/RectF;

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/statusbar/policy/CircleBattery;->drawCircle(Landroid/graphics/Canvas;IIFLandroid/graphics/RectF;)V

    .line 343
    return-void

    .line 340
    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 2
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 289
    iget v0, p0, Lcom/android/systemui/statusbar/policy/CircleBattery;->mCircleSize:I

    if-nez v0, :cond_0

    .line 290
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/CircleBattery;->initSizeMeasureIconHeight()V

    .line 293
    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/policy/CircleBattery;->mCircleSize:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/CircleBattery;->getPaddingLeft()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/systemui/statusbar/policy/CircleBattery;->mCircleSize:I

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/policy/CircleBattery;->setMeasuredDimension(II)V

    .line 294
    return-void
.end method
