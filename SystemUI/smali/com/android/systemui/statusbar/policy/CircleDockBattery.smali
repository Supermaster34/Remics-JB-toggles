.class public Lcom/android/systemui/statusbar/policy/CircleDockBattery;
.super Lcom/android/systemui/statusbar/policy/CircleBattery;
.source "CircleDockBattery.java"


# instance fields
.field private mAttached:Z

.field private mBatteryPlugged:Z

.field private mBatteryPresent:Z

.field private final mContext:Landroid/content/Context;

.field private mDockBatteryStatus:I

.field private mDockIcon:Landroid/graphics/Bitmap;

.field private mLevel:I

.field private mPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 54
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/policy/CircleDockBattery;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 58
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/policy/CircleDockBattery;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v1, 0x0

    .line 62
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/policy/CircleBattery;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 40
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/systemui/statusbar/policy/CircleDockBattery;->mDockBatteryStatus:I

    .line 41
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/CircleDockBattery;->mBatteryPlugged:Z

    .line 42
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/CircleDockBattery;->mBatteryPresent:Z

    .line 63
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/CircleDockBattery;->mContext:Landroid/content/Context;

    .line 64
    return-void
.end method


# virtual methods
.method protected drawCircle(Landroid/graphics/Canvas;IIFLandroid/graphics/RectF;)V
    .locals 9
    .parameter "canvas"
    .parameter "level"
    .parameter "animOffset"
    .parameter "textX"
    .parameter "drawRect"

    .prologue
    const/4 v6, 0x0

    const/high16 v8, 0x4000

    .line 128
    invoke-super/range {p0 .. p5}, Lcom/android/systemui/statusbar/policy/CircleBattery;->drawCircle(Landroid/graphics/Canvas;IIFLandroid/graphics/RectF;)V

    .line 129
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/CircleDockBattery;->mDockIcon:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_0

    .line 130
    new-instance v2, Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/CircleDockBattery;->mDockIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/CircleDockBattery;->mDockIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-direct {v2, v6, v6, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 131
    .local v2, src:Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/CircleDockBattery;->getHeight()I

    move-result v4

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/CircleDockBattery;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v1, v4

    .line 132
    .local v1, h:F
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/CircleDockBattery;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/CircleDockBattery;->getPaddingLeft()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/CircleDockBattery;->getPaddingRight()I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v3, v4

    .line 133
    .local v3, w:F
    new-instance v0, Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/CircleDockBattery;->getPaddingLeft()I

    move-result v4

    int-to-float v4, v4

    div-float v5, v3, v8

    add-float/2addr v4, v5

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    sub-float/2addr v4, v5

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    sub-float v5, v1, v5

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/CircleDockBattery;->getWidth()I

    move-result v6

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/CircleDockBattery;->getPaddingRight()I

    move-result v7

    sub-int/2addr v6, v7

    int-to-float v6, v6

    div-float v7, v3, v8

    sub-float/2addr v6, v7

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    add-float/2addr v6, v7

    invoke-direct {v0, v4, v5, v6, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 138
    .local v0, dst:Landroid/graphics/RectF;
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/CircleDockBattery;->mDockIcon:Landroid/graphics/Bitmap;

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/CircleDockBattery;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v2, v0, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 140
    .end local v0           #dst:Landroid/graphics/RectF;
    .end local v1           #h:F
    .end local v2           #src:Landroid/graphics/Rect;
    .end local v3           #w:F
    :cond_0
    return-void
.end method

.method protected getBatteryStatus()I
    .locals 1

    .prologue
    .line 103
    iget v0, p0, Lcom/android/systemui/statusbar/policy/CircleDockBattery;->mDockBatteryStatus:I

    return v0
.end method

.method protected getLevel()I
    .locals 1

    .prologue
    .line 98
    iget v0, p0, Lcom/android/systemui/statusbar/policy/CircleDockBattery;->mLevel:I

    return v0
.end method

.method protected isBatteryPresent()Z
    .locals 1

    .prologue
    .line 113
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/CircleDockBattery;->mBatteryPresent:Z

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 68
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/CircleDockBattery;->mAttached:Z

    if-nez v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/CircleDockBattery;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0201d4

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/CircleDockBattery;->mDockIcon:Landroid/graphics/Bitmap;

    .line 75
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/CircleDockBattery;->mPaint:Landroid/graphics/Paint;

    .line 76
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/CircleDockBattery;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 77
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/CircleDockBattery;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 78
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/CircleDockBattery;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setDither(Z)V

    .line 80
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/policy/CircleDockBattery;->mAttached:Z

    .line 82
    :cond_0
    invoke-super {p0}, Lcom/android/systemui/statusbar/policy/CircleBattery;->onAttachedToWindow()V

    .line 83
    return-void
.end method

.method protected onBatteryStatusChange(Landroid/content/Intent;)V
    .locals 3
    .parameter "intent"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 118
    const-string v2, "dock_level"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/statusbar/policy/CircleDockBattery;->mLevel:I

    .line 119
    const-string v2, "dock_status"

    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/statusbar/policy/CircleDockBattery;->mDockBatteryStatus:I

    .line 122
    const-string v2, "dock_plugged"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/CircleDockBattery;->mBatteryPlugged:Z

    .line 123
    const-string v0, "dock_present"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/CircleDockBattery;->mBatteryPresent:Z

    .line 124
    return-void

    :cond_0
    move v0, v1

    .line 122
    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 87
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/CircleDockBattery;->mDockIcon:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/CircleDockBattery;->mDockIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 90
    :cond_0
    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/CircleDockBattery;->mDockIcon:Landroid/graphics/Bitmap;

    .line 91
    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/CircleDockBattery;->mPaint:Landroid/graphics/Paint;

    .line 92
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/CircleDockBattery;->mAttached:Z

    .line 93
    invoke-super {p0}, Lcom/android/systemui/statusbar/policy/CircleBattery;->onDetachedFromWindow()V

    .line 94
    return-void
.end method
