.class public Lcom/android/systemui/recent/LinearColorBar;
.super Landroid/widget/LinearLayout;
.source "LinearColorBar.java"


# instance fields
.field final mPaint:Landroid/graphics/Paint;

.field private mRamBarMode:F

.field final mRect:Landroid/graphics/Rect;

.field private mUsedActiveAppsMemColor:I

.field private mUsedActiveAppsMemRatio:F

.field private mUsedCacheMemColor:I

.field private mUsedCacheMemRatio:F

.field private mUsedMemColor:I

.field private mUsedMemRatio:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 48
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recent/LinearColorBar;->mRect:Landroid/graphics/Rect;

    .line 49
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recent/LinearColorBar;->mPaint:Landroid/graphics/Paint;

    .line 53
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/recent/LinearColorBar;->setWillNotDraw(Z)V

    .line 54
    iget-object v0, p0, Lcom/android/systemui/recent/LinearColorBar;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 55
    return-void
.end method

.method private updateIndicator()V
    .locals 3

    .prologue
    .line 68
    invoke-virtual {p0}, Lcom/android/systemui/recent/LinearColorBar;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/systemui/recent/LinearColorBar;->getPaddingBottom()I

    move-result v2

    sub-int v0, v1, v2

    .line 69
    .local v0, off:I
    if-gez v0, :cond_0

    const/4 v0, 0x0

    .line 70
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/recent/LinearColorBar;->mRect:Landroid/graphics/Rect;

    iput v0, v1, Landroid/graphics/Rect;->top:I

    .line 71
    iget-object v1, p0, Lcom/android/systemui/recent/LinearColorBar;->mRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/systemui/recent/LinearColorBar;->getHeight()I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    .line 72
    return-void
.end method

.method private updateModeAndColors()V
    .locals 3

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/systemui/recent/LinearColorBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "recents_ram_bar_mode"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/systemui/recent/LinearColorBar;->mRamBarMode:F

    .line 77
    iget-object v0, p0, Lcom/android/systemui/recent/LinearColorBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "recents_ram_bar_mem_color"

    const v2, -0x727273

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/recent/LinearColorBar;->mUsedMemColor:I

    .line 79
    iget-object v0, p0, Lcom/android/systemui/recent/LinearColorBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "recents_ram_bar_cache_color"

    const v2, -0xff5600

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/recent/LinearColorBar;->mUsedCacheMemColor:I

    .line 81
    iget-object v0, p0, Lcom/android/systemui/recent/LinearColorBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "recents_ram_bar_active_apps_color"

    const v2, -0xcc4a1b

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/recent/LinearColorBar;->mUsedActiveAppsMemColor:I

    .line 83
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8
    .parameter "canvas"

    .prologue
    const/high16 v7, 0x4040

    .line 93
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 95
    invoke-virtual {p0}, Lcom/android/systemui/recent/LinearColorBar;->getWidth()I

    move-result v4

    .line 96
    .local v4, width:I
    const/4 v0, 0x0

    .line 98
    .local v0, left:I
    int-to-float v5, v4

    iget v6, p0, Lcom/android/systemui/recent/LinearColorBar;->mUsedActiveAppsMemRatio:F

    mul-float/2addr v5, v6

    float-to-int v1, v5

    .line 99
    .local v1, rightActiveApps:I
    int-to-float v5, v4

    iget v6, p0, Lcom/android/systemui/recent/LinearColorBar;->mUsedCacheMemRatio:F

    mul-float/2addr v5, v6

    float-to-int v2, v5

    .line 100
    .local v2, rightCache:I
    int-to-float v5, v4

    iget v6, p0, Lcom/android/systemui/recent/LinearColorBar;->mUsedMemRatio:F

    mul-float/2addr v5, v6

    float-to-int v3, v5

    .line 102
    .local v3, rightMem:I
    iget-object v5, p0, Lcom/android/systemui/recent/LinearColorBar;->mRect:Landroid/graphics/Rect;

    iput v0, v5, Landroid/graphics/Rect;->left:I

    .line 103
    iget-object v5, p0, Lcom/android/systemui/recent/LinearColorBar;->mRect:Landroid/graphics/Rect;

    iput v1, v5, Landroid/graphics/Rect;->right:I

    .line 104
    iget-object v5, p0, Lcom/android/systemui/recent/LinearColorBar;->mPaint:Landroid/graphics/Paint;

    iget v6, p0, Lcom/android/systemui/recent/LinearColorBar;->mUsedActiveAppsMemColor:I

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 105
    iget-object v5, p0, Lcom/android/systemui/recent/LinearColorBar;->mRect:Landroid/graphics/Rect;

    iget-object v6, p0, Lcom/android/systemui/recent/LinearColorBar;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 106
    move v0, v1

    .line 108
    iget v5, p0, Lcom/android/systemui/recent/LinearColorBar;->mRamBarMode:F

    const/high16 v6, 0x4000

    cmpl-float v5, v5, v6

    if-eqz v5, :cond_0

    iget v5, p0, Lcom/android/systemui/recent/LinearColorBar;->mRamBarMode:F

    cmpl-float v5, v5, v7

    if-nez v5, :cond_1

    .line 109
    :cond_0
    iget-object v5, p0, Lcom/android/systemui/recent/LinearColorBar;->mRect:Landroid/graphics/Rect;

    iput v0, v5, Landroid/graphics/Rect;->left:I

    .line 110
    iget-object v5, p0, Lcom/android/systemui/recent/LinearColorBar;->mRect:Landroid/graphics/Rect;

    add-int v6, v0, v2

    iput v6, v5, Landroid/graphics/Rect;->right:I

    .line 111
    iget-object v5, p0, Lcom/android/systemui/recent/LinearColorBar;->mPaint:Landroid/graphics/Paint;

    iget v6, p0, Lcom/android/systemui/recent/LinearColorBar;->mUsedCacheMemColor:I

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 112
    iget-object v5, p0, Lcom/android/systemui/recent/LinearColorBar;->mRect:Landroid/graphics/Rect;

    iget-object v6, p0, Lcom/android/systemui/recent/LinearColorBar;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 113
    add-int/2addr v0, v2

    .line 116
    :cond_1
    iget v5, p0, Lcom/android/systemui/recent/LinearColorBar;->mRamBarMode:F

    cmpl-float v5, v5, v7

    if-nez v5, :cond_2

    .line 117
    iget-object v5, p0, Lcom/android/systemui/recent/LinearColorBar;->mRect:Landroid/graphics/Rect;

    iput v0, v5, Landroid/graphics/Rect;->left:I

    .line 118
    iget-object v5, p0, Lcom/android/systemui/recent/LinearColorBar;->mRect:Landroid/graphics/Rect;

    add-int v6, v0, v3

    iput v6, v5, Landroid/graphics/Rect;->right:I

    .line 119
    iget-object v5, p0, Lcom/android/systemui/recent/LinearColorBar;->mPaint:Landroid/graphics/Paint;

    iget v6, p0, Lcom/android/systemui/recent/LinearColorBar;->mUsedMemColor:I

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 120
    iget-object v5, p0, Lcom/android/systemui/recent/LinearColorBar;->mRect:Landroid/graphics/Rect;

    iget-object v6, p0, Lcom/android/systemui/recent/LinearColorBar;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 121
    add-int/2addr v0, v3

    .line 124
    :cond_2
    iget-object v5, p0, Lcom/android/systemui/recent/LinearColorBar;->mRect:Landroid/graphics/Rect;

    iput v0, v5, Landroid/graphics/Rect;->left:I

    .line 125
    iget-object v5, p0, Lcom/android/systemui/recent/LinearColorBar;->mRect:Landroid/graphics/Rect;

    iput v4, v5, Landroid/graphics/Rect;->right:I

    .line 126
    iget-object v5, p0, Lcom/android/systemui/recent/LinearColorBar;->mPaint:Landroid/graphics/Paint;

    const v6, -0x555556

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 127
    iget-object v5, p0, Lcom/android/systemui/recent/LinearColorBar;->mRect:Landroid/graphics/Rect;

    iget-object v6, p0, Lcom/android/systemui/recent/LinearColorBar;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 129
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 87
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;->onSizeChanged(IIII)V

    .line 88
    invoke-direct {p0}, Lcom/android/systemui/recent/LinearColorBar;->updateIndicator()V

    .line 89
    return-void
.end method

.method public setRatios(FFF)V
    .locals 2
    .parameter "usedMem"
    .parameter "usedCacheMem"
    .parameter "usedActiveAppsMem"

    .prologue
    const/4 v1, 0x0

    .line 58
    iput p1, p0, Lcom/android/systemui/recent/LinearColorBar;->mUsedMemRatio:F

    .line 59
    iget v0, p0, Lcom/android/systemui/recent/LinearColorBar;->mUsedMemRatio:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 60
    iput v1, p0, Lcom/android/systemui/recent/LinearColorBar;->mUsedMemRatio:F

    .line 61
    :cond_0
    iput p2, p0, Lcom/android/systemui/recent/LinearColorBar;->mUsedCacheMemRatio:F

    .line 62
    iput p3, p0, Lcom/android/systemui/recent/LinearColorBar;->mUsedActiveAppsMemRatio:F

    .line 63
    invoke-direct {p0}, Lcom/android/systemui/recent/LinearColorBar;->updateModeAndColors()V

    .line 64
    invoke-virtual {p0}, Lcom/android/systemui/recent/LinearColorBar;->invalidate()V

    .line 65
    return-void
.end method
