.class public Lcom/android/systemui/statusbar/pie/PieSliceContainer;
.super Lcom/android/systemui/statusbar/pie/PieView$PieSlice;
.source "PieSliceContainer.java"


# instance fields
.field private mItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/systemui/statusbar/pie/PieItem;",
            ">;"
        }
    .end annotation
.end field

.field protected mPieLayout:Lcom/android/systemui/statusbar/pie/PieView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/pie/PieView;I)V
    .locals 1
    .parameter "parent"
    .parameter "initialFlags"

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/android/systemui/statusbar/pie/PieView$PieSlice;-><init>()V

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/pie/PieSliceContainer;->mItems:Ljava/util/List;

    .line 36
    iput-object p1, p0, Lcom/android/systemui/statusbar/pie/PieSliceContainer;->mPieLayout:Lcom/android/systemui/statusbar/pie/PieView;

    .line 38
    or-int/lit8 v0, p2, 0x10

    iput v0, p0, Lcom/android/systemui/statusbar/pie/PieSliceContainer;->flags:I

    .line 39
    return-void
.end method


# virtual methods
.method public addItem(Lcom/android/systemui/statusbar/pie/PieItem;)V
    .locals 1
    .parameter "item"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/systemui/statusbar/pie/PieSliceContainer;->mItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 98
    return-void
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/systemui/statusbar/pie/PieSliceContainer;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 106
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;Lcom/android/internal/util/pie/PiePosition;)V
    .locals 0
    .parameter "canvas"
    .parameter "gravity"

    .prologue
    .line 85
    return-void
.end method

.method public getItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/systemui/statusbar/pie/PieItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/systemui/statusbar/pie/PieSliceContainer;->mItems:Ljava/util/List;

    return-object v0
.end method

.method public hasItems()Z
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/systemui/statusbar/pie/PieSliceContainer;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public interact(FI)Lcom/android/systemui/statusbar/pie/PieItem;
    .locals 1
    .parameter "alpha"
    .parameter "radius"

    .prologue
    .line 89
    const/4 v0, 0x0

    return-object v0
.end method

.method public prepare(Lcom/android/internal/util/pie/PiePosition;F)V
    .locals 12
    .parameter "position"
    .parameter "scale"

    .prologue
    const/4 v8, 0x0

    .line 43
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pie/PieSliceContainer;->hasItems()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 44
    const/4 v5, 0x0

    .line 45
    .local v5, totalWidth:I
    iget-object v9, p0, Lcom/android/systemui/statusbar/pie/PieSliceContainer;->mItems:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/pie/PieItem;

    .line 46
    .local v3, item:Lcom/android/systemui/statusbar/pie/PieItem;
    iget v9, v3, Lcom/android/systemui/statusbar/pie/PieItem;->flags:I

    and-int/lit8 v9, v9, 0x10

    if-eqz v9, :cond_0

    .line 47
    iget v9, v3, Lcom/android/systemui/statusbar/pie/PieItem;->width:I

    add-int/2addr v5, v9

    goto :goto_0

    .line 52
    .end local v3           #item:Lcom/android/systemui/statusbar/pie/PieItem;
    :cond_1
    if-nez v5, :cond_3

    .line 81
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v5           #totalWidth:I
    :cond_2
    return-void

    .line 56
    .restart local v2       #i$:Ljava/util/Iterator;
    .restart local v5       #totalWidth:I
    :cond_3
    int-to-float v9, v5

    const/high16 v10, 0x4040

    mul-float/2addr v9, v10

    const/high16 v10, 0x4000

    mul-float/2addr v9, v10

    iget v10, p0, Lcom/android/systemui/statusbar/pie/PieSliceContainer;->mOuter:I

    iget v11, p0, Lcom/android/systemui/statusbar/pie/PieSliceContainer;->mInner:I

    add-int/2addr v10, v11

    int-to-float v10, v10

    div-float v1, v9, v10

    .line 57
    .local v1, gapMinder:F
    iget v9, p0, Lcom/android/systemui/statusbar/pie/PieSliceContainer;->mSweep:F

    int-to-float v10, v5

    div-float v0, v9, v10

    .line 58
    .local v0, deltaSweep:F
    sget-object v9, Lcom/android/internal/util/pie/PiePosition;->TOP:Lcom/android/internal/util/pie/PiePosition;

    if-eq p1, v9, :cond_6

    move v7, v8

    .line 60
    .local v7, width:I
    :goto_1
    iget v9, p1, Lcom/android/internal/util/pie/PiePosition;->FLAG:I

    or-int/lit8 v6, v9, 0x10

    .line 62
    .local v6, viewMask:I
    sget-object v9, Lcom/android/internal/util/pie/PiePosition;->TOP:Lcom/android/internal/util/pie/PiePosition;

    if-ne p1, v9, :cond_7

    const/4 v4, 0x1

    .line 63
    .local v4, top:Z
    :goto_2
    iget-object v8, p0, Lcom/android/systemui/statusbar/pie/PieSliceContainer;->mItems:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/pie/PieItem;

    .line 64
    .restart local v3       #item:Lcom/android/systemui/statusbar/pie/PieItem;
    iget v8, v3, Lcom/android/systemui/statusbar/pie/PieItem;->flags:I

    and-int/2addr v8, v6

    if-ne v8, v6, :cond_4

    .line 65
    if-eqz v4, :cond_5

    iget v8, v3, Lcom/android/systemui/statusbar/pie/PieItem;->width:I

    sub-int/2addr v7, v8

    .line 67
    :cond_5
    iget v8, p0, Lcom/android/systemui/statusbar/pie/PieSliceContainer;->mStart:F

    int-to-float v9, v7

    mul-float/2addr v9, v0

    add-float/2addr v8, v9

    iget v9, v3, Lcom/android/systemui/statusbar/pie/PieItem;->width:I

    int-to-float v9, v9

    mul-float/2addr v9, v0

    iget v10, p0, Lcom/android/systemui/statusbar/pie/PieSliceContainer;->mInner:I

    iget v11, p0, Lcom/android/systemui/statusbar/pie/PieSliceContainer;->mOuter:I

    invoke-virtual {v3, v8, v9, v10, v11}, Lcom/android/systemui/statusbar/pie/PieItem;->setGeometry(FFII)V

    .line 69
    mul-float v8, v0, v1

    invoke-virtual {v3, v8}, Lcom/android/systemui/statusbar/pie/PieItem;->setGap(F)V

    .line 77
    if-nez v4, :cond_4

    iget v8, v3, Lcom/android/systemui/statusbar/pie/PieItem;->width:I

    add-int/2addr v7, v8

    goto :goto_3

    .end local v3           #item:Lcom/android/systemui/statusbar/pie/PieItem;
    .end local v4           #top:Z
    .end local v6           #viewMask:I
    .end local v7           #width:I
    :cond_6
    move v7, v5

    .line 58
    goto :goto_1

    .restart local v6       #viewMask:I
    .restart local v7       #width:I
    :cond_7
    move v4, v8

    .line 62
    goto :goto_2
.end method
