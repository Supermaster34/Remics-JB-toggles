.class public Lcom/android/systemui/statusbar/pie/PieItem;
.super Lcom/android/systemui/statusbar/pie/PieView$PieDrawable;
.source "PieItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/pie/PieItem$PieOnLongClickListener;,
        Lcom/android/systemui/statusbar/pie/PieItem$PieOnClickListener;
    }
.end annotation


# instance fields
.field private mBackgroundPaint:Landroid/graphics/Paint;

.field protected mGap:F

.field private mLongPressPaint:Landroid/graphics/Paint;

.field private mOnClickListener:Lcom/android/systemui/statusbar/pie/PieItem$PieOnClickListener;

.field private mOnLongClickListener:Lcom/android/systemui/statusbar/pie/PieItem$PieOnLongClickListener;

.field private mOutlinePaint:Landroid/graphics/Paint;

.field private mPath:Landroid/graphics/Path;

.field private mPieLayout:Lcom/android/systemui/statusbar/pie/PieView;

.field private mSelectedPaint:Landroid/graphics/Paint;

.field private mView:Landroid/view/View;

.field public final tag:Ljava/lang/Object;

.field public final width:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/pie/PieView;IILjava/lang/Object;Landroid/view/View;)V
    .locals 4
    .parameter "context"
    .parameter "parent"
    .parameter "flags"
    .parameter "width"
    .parameter "tag"
    .parameter "view"

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 90
    invoke-direct {p0}, Lcom/android/systemui/statusbar/pie/PieView$PieDrawable;-><init>()V

    .line 45
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/pie/PieItem;->mBackgroundPaint:Landroid/graphics/Paint;

    .line 46
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/pie/PieItem;->mSelectedPaint:Landroid/graphics/Paint;

    .line 47
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/pie/PieItem;->mLongPressPaint:Landroid/graphics/Paint;

    .line 48
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/pie/PieItem;->mOutlinePaint:Landroid/graphics/Paint;

    .line 59
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/systemui/statusbar/pie/PieItem;->mGap:F

    .line 70
    iput-object v2, p0, Lcom/android/systemui/statusbar/pie/PieItem;->mOnClickListener:Lcom/android/systemui/statusbar/pie/PieItem$PieOnClickListener;

    .line 75
    iput-object v2, p0, Lcom/android/systemui/statusbar/pie/PieItem;->mOnLongClickListener:Lcom/android/systemui/statusbar/pie/PieItem$PieOnLongClickListener;

    .line 91
    iput-object p6, p0, Lcom/android/systemui/statusbar/pie/PieItem;->mView:Landroid/view/View;

    .line 92
    iput-object p2, p0, Lcom/android/systemui/statusbar/pie/PieItem;->mPieLayout:Lcom/android/systemui/statusbar/pie/PieView;

    .line 93
    iput-object p5, p0, Lcom/android/systemui/statusbar/pie/PieItem;->tag:Ljava/lang/Object;

    .line 94
    iput p4, p0, Lcom/android/systemui/statusbar/pie/PieItem;->width:I

    .line 95
    or-int/lit8 v1, p3, 0x10

    sget v2, Lcom/android/systemui/statusbar/pie/PieView$PieDrawable;->DISPLAY_ALL:I

    or-int/2addr v1, v2

    iput v1, p0, Lcom/android/systemui/statusbar/pie/PieItem;->flags:I

    .line 97
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 99
    .local v0, res:Landroid/content/res/Resources;
    iget-object v1, p0, Lcom/android/systemui/statusbar/pie/PieItem;->mBackgroundPaint:Landroid/graphics/Paint;

    const v2, 0x7f0b0008

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 100
    iget-object v1, p0, Lcom/android/systemui/statusbar/pie/PieItem;->mBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 101
    iget-object v1, p0, Lcom/android/systemui/statusbar/pie/PieItem;->mSelectedPaint:Landroid/graphics/Paint;

    const v2, 0x7f0b0009

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 102
    iget-object v1, p0, Lcom/android/systemui/statusbar/pie/PieItem;->mSelectedPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 103
    iget-object v1, p0, Lcom/android/systemui/statusbar/pie/PieItem;->mLongPressPaint:Landroid/graphics/Paint;

    const v2, 0x7f0b000a

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 104
    iget-object v1, p0, Lcom/android/systemui/statusbar/pie/PieItem;->mLongPressPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 105
    iget-object v1, p0, Lcom/android/systemui/statusbar/pie/PieItem;->mOutlinePaint:Landroid/graphics/Paint;

    const v2, 0x7f0b000b

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 106
    iget-object v1, p0, Lcom/android/systemui/statusbar/pie/PieItem;->mOutlinePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 107
    iget-object v1, p0, Lcom/android/systemui/statusbar/pie/PieItem;->mOutlinePaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 108
    iget-object v1, p0, Lcom/android/systemui/statusbar/pie/PieItem;->mOutlinePaint:Landroid/graphics/Paint;

    const v2, 0x7f0e004b

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 110
    const v1, 0x7f0b0007

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/pie/PieItem;->setColor(I)V

    .line 111
    return-void
.end method

.method private getOutline(F)Landroid/graphics/Path;
    .locals 12
    .parameter "scale"

    .prologue
    const/high16 v11, 0x4000

    .line 243
    new-instance v5, Landroid/graphics/RectF;

    iget v7, p0, Lcom/android/systemui/statusbar/pie/PieItem;->mOuter:I

    neg-int v7, v7

    int-to-float v7, v7

    mul-float/2addr v7, p1

    iget v8, p0, Lcom/android/systemui/statusbar/pie/PieItem;->mOuter:I

    neg-int v8, v8

    int-to-float v8, v8

    mul-float/2addr v8, p1

    iget v9, p0, Lcom/android/systemui/statusbar/pie/PieItem;->mOuter:I

    int-to-float v9, v9

    mul-float/2addr v9, p1

    iget v10, p0, Lcom/android/systemui/statusbar/pie/PieItem;->mOuter:I

    int-to-float v10, v10

    mul-float/2addr v10, p1

    invoke-direct {v5, v7, v8, v9, v10}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 244
    .local v5, outerBB:Landroid/graphics/RectF;
    new-instance v4, Landroid/graphics/RectF;

    iget v7, p0, Lcom/android/systemui/statusbar/pie/PieItem;->mInner:I

    neg-int v7, v7

    int-to-float v7, v7

    mul-float/2addr v7, p1

    iget v8, p0, Lcom/android/systemui/statusbar/pie/PieItem;->mInner:I

    neg-int v8, v8

    int-to-float v8, v8

    mul-float/2addr v8, p1

    iget v9, p0, Lcom/android/systemui/statusbar/pie/PieItem;->mInner:I

    int-to-float v9, v9

    mul-float/2addr v9, p1

    iget v10, p0, Lcom/android/systemui/statusbar/pie/PieItem;->mInner:I

    int-to-float v10, v10

    mul-float/2addr v10, p1

    invoke-direct {v4, v7, v8, v9, v10}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 246
    .local v4, innerBB:Landroid/graphics/RectF;
    iget v7, p0, Lcom/android/systemui/statusbar/pie/PieItem;->mInner:I

    iget v8, p0, Lcom/android/systemui/statusbar/pie/PieItem;->mOuter:I

    add-int/2addr v7, v8

    int-to-double v7, v7

    iget v9, p0, Lcom/android/systemui/statusbar/pie/PieItem;->mGap:F

    div-float/2addr v9, v11

    float-to-double v9, v9

    invoke-static {v9, v10}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Math;->sin(D)D

    move-result-wide v9

    mul-double v2, v7, v9

    .line 247
    .local v2, gamma:D
    iget v7, p0, Lcom/android/systemui/statusbar/pie/PieItem;->mOuter:I

    int-to-float v7, v7

    mul-float/2addr v7, v11

    float-to-double v7, v7

    div-double v7, v2, v7

    invoke-static {v7, v8}, Ljava/lang/Math;->asin(D)D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v7

    double-to-float v1, v7

    .line 248
    .local v1, alphaOuter:F
    iget v7, p0, Lcom/android/systemui/statusbar/pie/PieItem;->mInner:I

    int-to-float v7, v7

    mul-float/2addr v7, v11

    float-to-double v7, v7

    div-double v7, v2, v7

    invoke-static {v7, v8}, Ljava/lang/Math;->asin(D)D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v7

    double-to-float v0, v7

    .line 250
    .local v0, alphaInner:F
    new-instance v6, Landroid/graphics/Path;

    invoke-direct {v6}, Landroid/graphics/Path;-><init>()V

    .line 251
    .local v6, path:Landroid/graphics/Path;
    iget v7, p0, Lcom/android/systemui/statusbar/pie/PieItem;->mStart:F

    add-float/2addr v7, v1

    iget v8, p0, Lcom/android/systemui/statusbar/pie/PieItem;->mSweep:F

    mul-float v9, v11, v1

    sub-float/2addr v8, v9

    const/4 v9, 0x1

    invoke-virtual {v6, v5, v7, v8, v9}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    .line 252
    iget v7, p0, Lcom/android/systemui/statusbar/pie/PieItem;->mStart:F

    iget v8, p0, Lcom/android/systemui/statusbar/pie/PieItem;->mSweep:F

    add-float/2addr v7, v8

    sub-float/2addr v7, v0

    mul-float v8, v11, v0

    iget v9, p0, Lcom/android/systemui/statusbar/pie/PieItem;->mSweep:F

    sub-float/2addr v8, v9

    invoke-virtual {v6, v4, v7, v8}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 253
    invoke-virtual {v6}, Landroid/graphics/Path;->close()V

    .line 255
    return-object v6
.end method

.method private hit(FI)Z
    .locals 2
    .parameter "alpha"
    .parameter "radius"

    .prologue
    .line 238
    iget v0, p0, Lcom/android/systemui/statusbar/pie/PieItem;->mStart:F

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/pie/PieItem;->mStart:F

    iget v1, p0, Lcom/android/systemui/statusbar/pie/PieItem;->mSweep:F

    add-float/2addr v0, v1

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/pie/PieItem;->mInner:I

    if-le p2, v0, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/pie/PieItem;->mOuter:I

    if-ge p2, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Lcom/android/internal/util/pie/PiePosition;)V
    .locals 5
    .parameter "canvas"
    .parameter "position"

    .prologue
    const/high16 v4, 0x4000

    .line 192
    iget v2, p0, Lcom/android/systemui/statusbar/pie/PieItem;->flags:I

    and-int/lit16 v2, v2, 0x100

    if-eqz v2, :cond_2

    .line 193
    iget v2, p0, Lcom/android/systemui/statusbar/pie/PieItem;->flags:I

    and-int/lit16 v2, v2, 0x200

    if-nez v2, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/pie/PieItem;->mSelectedPaint:Landroid/graphics/Paint;

    .line 195
    .local v0, paint:Landroid/graphics/Paint;
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/pie/PieItem;->mPath:Landroid/graphics/Path;

    invoke-virtual {p1, v2, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 201
    .end local v0           #paint:Landroid/graphics/Paint;
    :goto_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/pie/PieItem;->mView:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 202
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    .line 203
    .local v1, state:I
    iget-object v2, p0, Lcom/android/systemui/statusbar/pie/PieItem;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/pie/PieItem;->mView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 205
    sget-object v2, Lcom/android/internal/util/pie/PiePosition;->TOP:Lcom/android/internal/util/pie/PiePosition;

    if-eq p2, v2, :cond_3

    .line 206
    iget v2, p0, Lcom/android/systemui/statusbar/pie/PieItem;->mStart:F

    iget v3, p0, Lcom/android/systemui/statusbar/pie/PieItem;->mSweep:F

    div-float/2addr v3, v4

    add-float/2addr v2, v3

    const/high16 v3, 0x4387

    sub-float/2addr v2, v3

    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->rotate(F)V

    .line 210
    :goto_2
    iget-object v2, p0, Lcom/android/systemui/statusbar/pie/PieItem;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    neg-int v2, v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/pie/PieItem;->mView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    neg-int v3, v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 212
    iget-object v2, p0, Lcom/android/systemui/statusbar/pie/PieItem;->mView:Landroid/view/View;

    invoke-virtual {v2, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 213
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 215
    .end local v1           #state:I
    :cond_0
    return-void

    .line 193
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/pie/PieItem;->mLongPressPaint:Landroid/graphics/Paint;

    goto :goto_0

    .line 197
    :cond_2
    iget-object v2, p0, Lcom/android/systemui/statusbar/pie/PieItem;->mPath:Landroid/graphics/Path;

    iget-object v3, p0, Lcom/android/systemui/statusbar/pie/PieItem;->mBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 198
    iget-object v2, p0, Lcom/android/systemui/statusbar/pie/PieItem;->mPath:Landroid/graphics/Path;

    iget-object v3, p0, Lcom/android/systemui/statusbar/pie/PieItem;->mOutlinePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_1

    .line 208
    .restart local v1       #state:I
    :cond_3
    iget v2, p0, Lcom/android/systemui/statusbar/pie/PieItem;->mStart:F

    iget v3, p0, Lcom/android/systemui/statusbar/pie/PieItem;->mSweep:F

    div-float/2addr v3, v4

    add-float/2addr v2, v3

    const/high16 v3, 0x42b4

    sub-float/2addr v2, v3

    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->rotate(F)V

    goto :goto_2
.end method

.method public interact(FI)Lcom/android/systemui/statusbar/pie/PieItem;
    .locals 1
    .parameter "alpha"
    .parameter "radius"

    .prologue
    .line 219
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/pie/PieItem;->hit(FI)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 222
    .end local p0
    :goto_0
    return-object p0

    .restart local p0
    :cond_0
    const/4 p0, 0x0

    goto :goto_0
.end method

.method onClickCall(Z)V
    .locals 1
    .parameter "longPressed"

    .prologue
    .line 226
    if-nez p1, :cond_1

    .line 227
    iget-object v0, p0, Lcom/android/systemui/statusbar/pie/PieItem;->mOnClickListener:Lcom/android/systemui/statusbar/pie/PieItem$PieOnClickListener;

    if-eqz v0, :cond_0

    .line 228
    iget-object v0, p0, Lcom/android/systemui/statusbar/pie/PieItem;->mOnClickListener:Lcom/android/systemui/statusbar/pie/PieItem$PieOnClickListener;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/pie/PieItem$PieOnClickListener;->onClick(Lcom/android/systemui/statusbar/pie/PieItem;)V

    .line 235
    :cond_0
    :goto_0
    return-void

    .line 231
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/pie/PieItem;->mOnLongClickListener:Lcom/android/systemui/statusbar/pie/PieItem$PieOnLongClickListener;

    if-eqz v0, :cond_0

    .line 232
    iget-object v0, p0, Lcom/android/systemui/statusbar/pie/PieItem;->mOnLongClickListener:Lcom/android/systemui/statusbar/pie/PieItem$PieOnLongClickListener;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/pie/PieItem$PieOnLongClickListener;->onLongClick(Lcom/android/systemui/statusbar/pie/PieItem;)V

    goto :goto_0
.end method

.method public prepare(Lcom/android/internal/util/pie/PiePosition;F)V
    .locals 11
    .parameter "position"
    .parameter "scale"

    .prologue
    const/high16 v10, 0x4000

    .line 172
    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/pie/PieItem;->getOutline(F)Landroid/graphics/Path;

    move-result-object v7

    iput-object v7, p0, Lcom/android/systemui/statusbar/pie/PieItem;->mPath:Landroid/graphics/Path;

    .line 173
    iget-object v7, p0, Lcom/android/systemui/statusbar/pie/PieItem;->mView:Landroid/view/View;

    if-eqz v7, :cond_0

    .line 174
    iget-object v7, p0, Lcom/android/systemui/statusbar/pie/PieItem;->mView:Landroid/view/View;

    iget-object v8, p0, Lcom/android/systemui/statusbar/pie/PieItem;->mView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    iget v8, v8, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v9, p0, Lcom/android/systemui/statusbar/pie/PieItem;->mView:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    iget v9, v9, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v7, v8, v9}, Landroid/view/View;->measure(II)V

    .line 175
    iget-object v7, p0, Lcom/android/systemui/statusbar/pie/PieItem;->mView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    .line 176
    .local v6, w:I
    iget-object v7, p0, Lcom/android/systemui/statusbar/pie/PieItem;->mView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 178
    .local v0, h:I
    int-to-float v7, v0

    const v8, 0x3fa66666

    mul-float/2addr v7, v8

    iget v8, p0, Lcom/android/systemui/statusbar/pie/PieItem;->mOuter:I

    iget v9, p0, Lcom/android/systemui/statusbar/pie/PieItem;->mInner:I

    sub-int/2addr v8, v9

    int-to-float v8, v8

    cmpg-float v7, v7, v8

    if-gez v7, :cond_1

    iget v7, p0, Lcom/android/systemui/statusbar/pie/PieItem;->mInner:I

    int-to-float v7, v7

    iget v8, p0, Lcom/android/systemui/statusbar/pie/PieItem;->mOuter:I

    iget v9, p0, Lcom/android/systemui/statusbar/pie/PieItem;->mInner:I

    sub-int/2addr v8, v9

    int-to-float v8, v8

    mul-float/2addr v8, v10

    const/high16 v9, 0x4040

    div-float/2addr v8, v9

    add-float v4, v7, v8

    .line 182
    .local v4, radius:F
    :goto_0
    iget v7, p0, Lcom/android/systemui/statusbar/pie/PieItem;->mStart:F

    iget v8, p0, Lcom/android/systemui/statusbar/pie/PieItem;->mSweep:F

    div-float/2addr v8, v10

    add-float/2addr v7, v8

    float-to-double v7, v7

    invoke-static {v7, v8}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    .line 183
    .local v2, rad:D
    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v7

    float-to-double v9, v4

    mul-double/2addr v7, v9

    float-to-double v9, p2

    mul-double/2addr v7, v9

    double-to-int v1, v7

    .line 184
    .local v1, l:I
    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v7

    float-to-double v9, v4

    mul-double/2addr v7, v9

    float-to-double v9, p2

    mul-double/2addr v7, v9

    double-to-int v5, v7

    .line 186
    .local v5, t:I
    iget-object v7, p0, Lcom/android/systemui/statusbar/pie/PieItem;->mView:Landroid/view/View;

    add-int v8, v1, v6

    add-int v9, v5, v0

    invoke-virtual {v7, v1, v5, v8, v9}, Landroid/view/View;->layout(IIII)V

    .line 188
    .end local v0           #h:I
    .end local v1           #l:I
    .end local v2           #rad:D
    .end local v4           #radius:F
    .end local v5           #t:I
    .end local v6           #w:I
    :cond_0
    return-void

    .line 178
    .restart local v0       #h:I
    .restart local v6       #w:I
    :cond_1
    iget v7, p0, Lcom/android/systemui/statusbar/pie/PieItem;->mInner:I

    iget v8, p0, Lcom/android/systemui/statusbar/pie/PieItem;->mOuter:I

    add-int/2addr v7, v8

    int-to-float v7, v7

    div-float v4, v7, v10

    goto :goto_0
.end method

.method public setAlpha(F)V
    .locals 1
    .parameter "alpha"

    .prologue
    .line 149
    iget-object v0, p0, Lcom/android/systemui/statusbar/pie/PieItem;->mView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/android/systemui/statusbar/pie/PieItem;->mView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 152
    :cond_0
    return-void
.end method

.method public setColor(I)V
    .locals 3
    .parameter "color"

    .prologue
    .line 162
    iget-object v2, p0, Lcom/android/systemui/statusbar/pie/PieItem;->mView:Landroid/view/View;

    instance-of v2, v2, Landroid/widget/ImageView;

    if-eqz v2, :cond_0

    .line 163
    iget-object v1, p0, Lcom/android/systemui/statusbar/pie/PieItem;->mView:Landroid/view/View;

    check-cast v1, Landroid/widget/ImageView;

    .line 164
    .local v1, imageView:Landroid/widget/ImageView;
    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 165
    .local v0, drawable:Landroid/graphics/drawable/Drawable;
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, p1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 166
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 168
    .end local v0           #drawable:Landroid/graphics/drawable/Drawable;
    .end local v1           #imageView:Landroid/widget/ImageView;
    :cond_0
    return-void
.end method

.method public setGap(F)V
    .locals 0
    .parameter "gap"

    .prologue
    .line 114
    iput p1, p0, Lcom/android/systemui/statusbar/pie/PieItem;->mGap:F

    .line 115
    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .parameter "drawable"

    .prologue
    .line 155
    iget-object v1, p0, Lcom/android/systemui/statusbar/pie/PieItem;->mView:Landroid/view/View;

    instance-of v1, v1, Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    .line 156
    iget-object v0, p0, Lcom/android/systemui/statusbar/pie/PieItem;->mView:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageView;

    .line 157
    .local v0, imageView:Landroid/widget/ImageView;
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 159
    .end local v0           #imageView:Landroid/widget/ImageView;
    :cond_0
    return-void
.end method

.method public setOnClickListener(Lcom/android/systemui/statusbar/pie/PieItem$PieOnClickListener;)V
    .locals 0
    .parameter "onClickListener"

    .prologue
    .line 118
    iput-object p1, p0, Lcom/android/systemui/statusbar/pie/PieItem;->mOnClickListener:Lcom/android/systemui/statusbar/pie/PieItem$PieOnClickListener;

    .line 119
    return-void
.end method

.method public setOnLongClickListener(Lcom/android/systemui/statusbar/pie/PieItem$PieOnLongClickListener;)V
    .locals 1
    .parameter "onLongClickListener"

    .prologue
    .line 122
    iput-object p1, p0, Lcom/android/systemui/statusbar/pie/PieItem;->mOnLongClickListener:Lcom/android/systemui/statusbar/pie/PieItem$PieOnLongClickListener;

    .line 123
    if-eqz p1, :cond_0

    .line 124
    iget v0, p0, Lcom/android/systemui/statusbar/pie/PieItem;->flags:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/android/systemui/statusbar/pie/PieItem;->flags:I

    .line 128
    :goto_0
    return-void

    .line 126
    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/pie/PieItem;->flags:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lcom/android/systemui/statusbar/pie/PieItem;->flags:I

    goto :goto_0
.end method

.method public setSelected(ZZ)V
    .locals 2
    .parameter "selected"
    .parameter "longPressed"

    .prologue
    .line 139
    iget-object v0, p0, Lcom/android/systemui/statusbar/pie/PieItem;->mPieLayout:Lcom/android/systemui/statusbar/pie/PieView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pie/PieView;->postInvalidate()V

    .line 140
    iget v0, p0, Lcom/android/systemui/statusbar/pie/PieItem;->flags:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    and-int/2addr p2, v0

    .line 141
    if-eqz p1, :cond_2

    .line 142
    iget v1, p0, Lcom/android/systemui/statusbar/pie/PieItem;->flags:I

    if-eqz p2, :cond_1

    const/16 v0, 0x300

    :goto_1
    or-int/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/statusbar/pie/PieItem;->flags:I

    .line 146
    :goto_2
    return-void

    .line 140
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 142
    :cond_1
    const/16 v0, 0x100

    goto :goto_1

    .line 144
    :cond_2
    iget v0, p0, Lcom/android/systemui/statusbar/pie/PieItem;->flags:I

    and-int/lit16 v0, v0, -0x301

    iput v0, p0, Lcom/android/systemui/statusbar/pie/PieItem;->flags:I

    goto :goto_2
.end method

.method public show(Z)V
    .locals 1
    .parameter "show"

    .prologue
    .line 131
    if-eqz p1, :cond_0

    .line 132
    iget v0, p0, Lcom/android/systemui/statusbar/pie/PieItem;->flags:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/android/systemui/statusbar/pie/PieItem;->flags:I

    .line 136
    :goto_0
    return-void

    .line 134
    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/pie/PieItem;->flags:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/android/systemui/statusbar/pie/PieItem;->flags:I

    goto :goto_0
.end method
