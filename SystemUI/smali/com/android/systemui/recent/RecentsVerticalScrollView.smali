.class public Lcom/android/systemui/recent/RecentsVerticalScrollView;
.super Landroid/widget/ScrollView;
.source "RecentsVerticalScrollView.java"

# interfaces
.implements Lcom/android/systemui/SwipeHelper$Callback;
.implements Lcom/android/systemui/recent/RecentsPanelView$RecentsScrollView;


# instance fields
.field private mAdapter:Lcom/android/systemui/recent/RecentsPanelView$TaskDescriptionAdapter;

.field private mCallback:Lcom/android/systemui/recent/RecentsCallback;

.field protected mLastScrollPosition:I

.field private mLinearLayout:Landroid/widget/LinearLayout;

.field private mNumItemsInOneScreenful:I

.field private mPerformanceHelper:Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;

.field private mRecycledViews:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mSwipeHelper:Lcom/android/systemui/SwipeHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v3, 0x0

    .line 58
    invoke-direct {p0, p1, p2, v3}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 59
    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentsVerticalScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v0, v2, Landroid/util/DisplayMetrics;->density:F

    .line 60
    .local v0, densityScale:F
    iget-object v2, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledPagingTouchSlop()I

    move-result v2

    int-to-float v1, v2

    .line 61
    .local v1, pagingTouchSlop:F
    new-instance v2, Lcom/android/systemui/SwipeHelper;

    invoke-direct {v2, v3, p0, v0, v1}, Lcom/android/systemui/SwipeHelper;-><init>(ILcom/android/systemui/SwipeHelper$Callback;FF)V

    iput-object v2, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mSwipeHelper:Lcom/android/systemui/SwipeHelper;

    .line 63
    const/4 v2, 0x1

    invoke-static {p1, p2, p0, v2}, Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;->create(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/view/View;Z)Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mPerformanceHelper:Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;

    .line 64
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mRecycledViews:Ljava/util/HashSet;

    .line 65
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/recent/RecentsVerticalScrollView;)Lcom/android/systemui/recent/RecentsCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mCallback:Lcom/android/systemui/recent/RecentsCallback;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/recent/RecentsVerticalScrollView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/android/systemui/recent/RecentsVerticalScrollView;->scrollPositionOfMostRecent()I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/systemui/recent/RecentsVerticalScrollView;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mLinearLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/systemui/recent/RecentsVerticalScrollView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/android/systemui/recent/RecentsVerticalScrollView;->update()V

    return-void
.end method

.method private addToRecycledViews(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mRecycledViews:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    iget v1, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mNumItemsInOneScreenful:I

    if-ge v0, v1, :cond_0

    .line 77
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mRecycledViews:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 79
    :cond_0
    return-void
.end method

.method private scrollPositionOfMostRecent()I
    .locals 2

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentsVerticalScrollView;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method private setOverScrollEffectPadding(II)V
    .locals 0
    .parameter "leftPadding"
    .parameter "i"

    .prologue
    .line 335
    return-void
.end method

.method private update()V
    .locals 17

    .prologue
    .line 93
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v15}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v15

    if-ge v4, v15, :cond_0

    .line 94
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v15, v4}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    .line 95
    .local v13, v:Landroid/view/View;
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/systemui/recent/RecentsVerticalScrollView;->addToRecycledViews(Landroid/view/View;)V

    .line 96
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mAdapter:Lcom/android/systemui/recent/RecentsPanelView$TaskDescriptionAdapter;

    invoke-virtual {v15, v13}, Lcom/android/systemui/recent/RecentsPanelView$TaskDescriptionAdapter;->recycleView(Landroid/view/View;)V

    .line 93
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 98
    .end local v13           #v:Landroid/view/View;
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/recent/RecentsVerticalScrollView;->getLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v11

    .line 99
    .local v11, transitioner:Landroid/animation/LayoutTransition;
    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/systemui/recent/RecentsVerticalScrollView;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 101
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v15}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 106
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mRecycledViews:Ljava/util/HashSet;

    invoke-virtual {v15}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .line 107
    .local v9, recycledViews:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/view/View;>;"
    const/4 v4, 0x0

    :goto_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mAdapter:Lcom/android/systemui/recent/RecentsPanelView$TaskDescriptionAdapter;

    invoke-virtual {v15}, Lcom/android/systemui/recent/RecentsPanelView$TaskDescriptionAdapter;->getCount()I

    move-result v15

    if-ge v4, v15, :cond_4

    .line 108
    const/4 v8, 0x0

    .line 109
    .local v8, old:Landroid/view/View;
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_1

    .line 110
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    .end local v8           #old:Landroid/view/View;
    check-cast v8, Landroid/view/View;

    .line 111
    .restart local v8       #old:Landroid/view/View;
    invoke-interface {v9}, Ljava/util/Iterator;->remove()V

    .line 112
    const/4 v15, 0x0

    invoke-virtual {v8, v15}, Landroid/view/View;->setVisibility(I)V

    .line 114
    :cond_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mAdapter:Lcom/android/systemui/recent/RecentsPanelView$TaskDescriptionAdapter;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mLinearLayout:Landroid/widget/LinearLayout;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v15, v4, v8, v0}, Lcom/android/systemui/recent/RecentsPanelView$TaskDescriptionAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v14

    .line 116
    .local v14, view:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mPerformanceHelper:Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;

    if-eqz v15, :cond_2

    .line 117
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mPerformanceHelper:Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;

    invoke-virtual {v15, v14}, Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;->addViewCallback(Landroid/view/View;)V

    .line 120
    :cond_2
    new-instance v7, Lcom/android/systemui/recent/RecentsVerticalScrollView$1;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Lcom/android/systemui/recent/RecentsVerticalScrollView$1;-><init>(Lcom/android/systemui/recent/RecentsVerticalScrollView;)V

    .line 127
    .local v7, noOpListener:Landroid/view/View$OnTouchListener;
    new-instance v15, Lcom/android/systemui/recent/RecentsVerticalScrollView$2;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/android/systemui/recent/RecentsVerticalScrollView$2;-><init>(Lcom/android/systemui/recent/RecentsVerticalScrollView;)V

    invoke-virtual {v14, v15}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 133
    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/view/View;->setSoundEffectsEnabled(Z)V

    .line 135
    new-instance v5, Lcom/android/systemui/recent/RecentsVerticalScrollView$3;

    move-object/from16 v0, p0

    invoke-direct {v5, v0, v14}, Lcom/android/systemui/recent/RecentsVerticalScrollView$3;-><init>(Lcom/android/systemui/recent/RecentsVerticalScrollView;Landroid/view/View;)V

    .line 141
    .local v5, launchAppListener:Landroid/view/View$OnClickListener;
    invoke-virtual {v14}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;

    .line 142
    .local v3, holder:Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;
    iget-object v10, v3, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->thumbnailView:Landroid/view/View;

    .line 143
    .local v10, thumbnailView:Landroid/view/View;
    new-instance v6, Lcom/android/systemui/recent/RecentsVerticalScrollView$4;

    move-object/from16 v0, p0

    invoke-direct {v6, v0, v14, v10}, Lcom/android/systemui/recent/RecentsVerticalScrollView$4;-><init>(Lcom/android/systemui/recent/RecentsVerticalScrollView;Landroid/view/View;Landroid/view/View;)V

    .line 150
    .local v6, longClickListener:Landroid/view/View$OnLongClickListener;
    const/4 v15, 0x1

    invoke-virtual {v10, v15}, Landroid/view/View;->setClickable(Z)V

    .line 151
    invoke-virtual {v10, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 152
    invoke-virtual {v10, v6}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 157
    const v15, 0x7f09007a

    invoke-virtual {v14, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 158
    .local v1, appTitle:Landroid/view/View;
    const-string v15, " "

    invoke-virtual {v1, v15}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 159
    invoke-virtual {v1, v7}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 160
    const v15, 0x7f09007e

    invoke-virtual {v14, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 161
    .local v2, calloutLine:Landroid/view/View;
    if-eqz v2, :cond_3

    .line 162
    invoke-virtual {v2, v7}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 165
    :cond_3
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v15, v14}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 107
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    .line 167
    .end local v1           #appTitle:Landroid/view/View;
    .end local v2           #calloutLine:Landroid/view/View;
    .end local v3           #holder:Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;
    .end local v5           #launchAppListener:Landroid/view/View$OnClickListener;
    .end local v6           #longClickListener:Landroid/view/View$OnLongClickListener;
    .end local v7           #noOpListener:Landroid/view/View$OnTouchListener;
    .end local v8           #old:Landroid/view/View;
    .end local v10           #thumbnailView:Landroid/view/View;
    .end local v14           #view:Landroid/view/View;
    :cond_4
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/systemui/recent/RecentsVerticalScrollView;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 170
    new-instance v12, Lcom/android/systemui/recent/RecentsVerticalScrollView$5;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lcom/android/systemui/recent/RecentsVerticalScrollView$5;-><init>(Lcom/android/systemui/recent/RecentsVerticalScrollView;)V

    .line 180
    .local v12, updateScroll:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/recent/RecentsVerticalScrollView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v15

    invoke-virtual {v15, v12}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 181
    return-void
.end method


# virtual methods
.method public canChildBeDismissed(Landroid/view/View;)Z
    .locals 1
    .parameter "v"

    .prologue
    .line 216
    const/4 v0, 0x1

    return v0
.end method

.method public dismissChild(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 220
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mSwipeHelper:Lcom/android/systemui/SwipeHelper;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/systemui/SwipeHelper;->dismissChild(Landroid/view/View;F)V

    .line 221
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 14
    .parameter "canvas"

    .prologue
    const/4 v10, 0x0

    .line 263
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->draw(Landroid/graphics/Canvas;)V

    .line 265
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mPerformanceHelper:Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;

    if-eqz v0, :cond_2

    .line 266
    iget v13, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mPaddingLeft:I

    .line 267
    .local v13, paddingLeft:I
    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentsVerticalScrollView;->isPaddingOffsetRequired()Z

    move-result v12

    .line 268
    .local v12, offsetRequired:Z
    if-eqz v12, :cond_0

    .line 269
    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentsVerticalScrollView;->getLeftPaddingOffset()I

    move-result v0

    add-int/2addr v13, v0

    .line 272
    :cond_0
    iget v0, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mScrollX:I

    add-int v2, v0, v13

    .line 273
    .local v2, left:I
    iget v0, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mRight:I

    add-int/2addr v0, v2

    iget v1, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mLeft:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mPaddingRight:I

    sub-int/2addr v0, v1

    sub-int v3, v0, v13

    .line 274
    .local v3, right:I
    iget v0, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mScrollY:I

    invoke-virtual {p0, v12}, Lcom/android/systemui/recent/RecentsVerticalScrollView;->getFadeTop(Z)I

    move-result v1

    add-int v4, v0, v1

    .line 275
    .local v4, top:I
    invoke-virtual {p0, v12}, Lcom/android/systemui/recent/RecentsVerticalScrollView;->getFadeHeight(Z)I

    move-result v0

    add-int v5, v4, v0

    .line 277
    .local v5, bottom:I
    if-eqz v12, :cond_1

    .line 278
    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentsVerticalScrollView;->getRightPaddingOffset()I

    move-result v0

    add-int/2addr v3, v0

    .line 279
    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentsVerticalScrollView;->getBottomPaddingOffset()I

    move-result v0

    add-int/2addr v5, v0

    .line 281
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mPerformanceHelper:Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;

    iget v6, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mScrollX:I

    iget v7, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mScrollY:I

    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentsVerticalScrollView;->getTopFadingEdgeStrength()F

    move-result v8

    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentsVerticalScrollView;->getBottomFadingEdgeStrength()F

    move-result v9

    move-object v1, p1

    move v11, v10

    invoke-virtual/range {v0 .. v11}, Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;->drawCallback(Landroid/graphics/Canvas;IIIIIIFFFF)V

    .line 286
    .end local v2           #left:I
    .end local v3           #right:I
    .end local v4           #top:I
    .end local v5           #bottom:I
    .end local v12           #offsetRequired:Z
    .end local v13           #paddingLeft:I
    :cond_2
    return-void
.end method

.method public findViewForTask(I)Landroid/view/View;
    .locals 4
    .parameter "persistentTaskId"

    .prologue
    .line 82
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 83
    iget-object v3, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 84
    .local v2, v:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;

    .line 85
    .local v0, holder:Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;
    iget-object v3, v0, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->taskDescription:Lcom/android/systemui/recent/TaskDescription;

    iget v3, v3, Lcom/android/systemui/recent/TaskDescription;->persistentTaskId:I

    if-ne v3, p1, :cond_0

    .line 89
    .end local v0           #holder:Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;
    .end local v2           #v:Landroid/view/View;
    :goto_1
    return-object v2

    .line 82
    .restart local v0       #holder:Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;
    .restart local v2       #v:Landroid/view/View;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 89
    .end local v0           #holder:Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;
    .end local v2           #v:Landroid/view/View;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public getChildAtPosition(Landroid/view/MotionEvent;)Landroid/view/View;
    .locals 6
    .parameter "ev"

    .prologue
    .line 244
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentsVerticalScrollView;->getScrollX()I

    move-result v5

    int-to-float v5, v5

    add-float v2, v4, v5

    .line 245
    .local v2, x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentsVerticalScrollView;->getScrollY()I

    move-result v5

    int-to-float v5, v5

    add-float v3, v4, v5

    .line 246
    .local v3, y:F
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v4, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v4

    if-ge v0, v4, :cond_1

    .line 247
    iget-object v4, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 248
    .local v1, item:Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v4

    int-to-float v4, v4

    cmpl-float v4, v2, v4

    if-ltz v4, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v4

    int-to-float v4, v4

    cmpg-float v4, v2, v4

    if-gez v4, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v4

    int-to-float v4, v4

    cmpl-float v4, v3, v4

    if-ltz v4, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v4

    int-to-float v4, v4

    cmpg-float v4, v3, v4

    if-gez v4, :cond_0

    .line 254
    .end local v1           #item:Landroid/view/View;
    :goto_1
    return-object v1

    .line 246
    .restart local v1       #item:Landroid/view/View;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 254
    .end local v1           #item:Landroid/view/View;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public getChildContentView(Landroid/view/View;)Landroid/view/View;
    .locals 1
    .parameter "v"

    .prologue
    .line 258
    const v0, 0x7f090079

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getHorizontalFadingEdgeLength()I
    .locals 1

    .prologue
    .line 299
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mPerformanceHelper:Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;

    if-eqz v0, :cond_0

    .line 300
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mPerformanceHelper:Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;

    invoke-virtual {v0}, Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;->getHorizontalFadingEdgeLengthCallback()I

    move-result v0

    .line 302
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Landroid/widget/ScrollView;->getHorizontalFadingEdgeLength()I

    move-result v0

    goto :goto_0
.end method

.method public getVerticalFadingEdgeLength()I
    .locals 1

    .prologue
    .line 290
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mPerformanceHelper:Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;

    if-eqz v0, :cond_0

    .line 291
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mPerformanceHelper:Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;

    invoke-virtual {v0}, Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;->getVerticalFadingEdgeLengthCallback()I

    move-result v0

    .line 293
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Landroid/widget/ScrollView;->getVerticalFadingEdgeLength()I

    move-result v0

    goto :goto_0
.end method

.method public numItemsInOneScreenful()I
    .locals 1

    .prologue
    .line 393
    iget v0, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mNumItemsInOneScreenful:I

    return v0
.end method

.method public onAttachedToWindow()V
    .locals 4

    .prologue
    .line 318
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mPerformanceHelper:Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;

    if-eqz v0, :cond_0

    .line 319
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mPerformanceHelper:Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;

    iget-object v1, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mCallback:Lcom/android/systemui/recent/RecentsCallback;

    iget-object v2, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentsVerticalScrollView;->isHardwareAccelerated()Z

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;->onAttachedToWindowCallback(Lcom/android/systemui/recent/RecentsCallback;Landroid/widget/LinearLayout;Z)V

    .line 322
    :cond_0
    return-void
.end method

.method public onBeginDrag(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 237
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/recent/RecentsVerticalScrollView;->requestDisallowInterceptTouchEvent(Z)V

    .line 238
    return-void
.end method

.method public onChildDismissed(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 224
    invoke-direct {p0, p1}, Lcom/android/systemui/recent/RecentsVerticalScrollView;->addToRecycledViews(Landroid/view/View;)V

    .line 225
    iget-object v1, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 226
    iget-object v1, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mCallback:Lcom/android/systemui/recent/RecentsCallback;

    invoke-interface {v1, p1}, Lcom/android/systemui/recent/RecentsCallback;->handleSwipe(Landroid/view/View;)V

    .line 229
    invoke-virtual {p0, p1}, Lcom/android/systemui/recent/RecentsVerticalScrollView;->getChildContentView(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    .line 230
    .local v0, contentView:Landroid/view/View;
    const/high16 v1, 0x3f80

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 231
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 232
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .parameter "newConfig"

    .prologue
    .line 326
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 327
    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentsVerticalScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v0, v2, Landroid/util/DisplayMetrics;->density:F

    .line 328
    .local v0, densityScale:F
    iget-object v2, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mSwipeHelper:Lcom/android/systemui/SwipeHelper;

    invoke-virtual {v2, v0}, Lcom/android/systemui/SwipeHelper;->setDensityScale(F)V

    .line 329
    iget-object v2, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledPagingTouchSlop()I

    move-result v2

    int-to-float v1, v2

    .line 330
    .local v1, pagingTouchSlop:F
    iget-object v2, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mSwipeHelper:Lcom/android/systemui/SwipeHelper;

    invoke-virtual {v2, v1}, Lcom/android/systemui/SwipeHelper;->setPagingTouchSlop(F)V

    .line 331
    return-void
.end method

.method public onDragCancelled(Landroid/view/View;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 241
    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    .prologue
    .line 308
    invoke-super {p0}, Landroid/widget/ScrollView;->onFinishInflate()V

    .line 309
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/systemui/recent/RecentsVerticalScrollView;->setScrollbarFadingEnabled(Z)V

    .line 310
    const v1, 0x7f090083

    invoke-virtual {p0, v1}, Lcom/android/systemui/recent/RecentsVerticalScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mLinearLayout:Landroid/widget/LinearLayout;

    .line 311
    iget-object v1, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e000b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    .line 313
    .local v0, leftPadding:I
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/recent/RecentsVerticalScrollView;->setOverScrollEffectPadding(II)V

    .line 314
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "ev"

    .prologue
    .line 205
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mSwipeHelper:Lcom/android/systemui/SwipeHelper;

    invoke-virtual {v0, p1}, Lcom/android/systemui/SwipeHelper;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/ScrollView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 2
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 339
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ScrollView;->onSizeChanged(IIII)V

    .line 343
    iget-object v1, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v0

    .line 344
    .local v0, transition:Landroid/animation/LayoutTransition;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/LayoutTransition;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 362
    :goto_0
    return-void

    .line 349
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/recent/RecentsVerticalScrollView;->scrollPositionOfMostRecent()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mLastScrollPosition:I

    .line 352
    new-instance v1, Lcom/android/systemui/recent/RecentsVerticalScrollView$7;

    invoke-direct {v1, p0}, Lcom/android/systemui/recent/RecentsVerticalScrollView$7;-><init>(Lcom/android/systemui/recent/RecentsVerticalScrollView;)V

    invoke-virtual {p0, v1}, Lcom/android/systemui/recent/RecentsVerticalScrollView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "ev"

    .prologue
    .line 211
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mSwipeHelper:Lcom/android/systemui/SwipeHelper;

    invoke-virtual {v0, p1}, Lcom/android/systemui/SwipeHelper;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/ScrollView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeAllViewsInLayout()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 190
    invoke-virtual {p0, v3, v3}, Lcom/android/systemui/recent/RecentsVerticalScrollView;->smoothScrollTo(II)V

    .line 191
    iget-object v3, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    .line 192
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 193
    iget-object v3, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 194
    .local v0, child:Landroid/view/View;
    new-instance v3, Lcom/android/systemui/recent/RecentsVerticalScrollView$6;

    invoke-direct {v3, p0, v0}, Lcom/android/systemui/recent/RecentsVerticalScrollView$6;-><init>(Lcom/android/systemui/recent/RecentsVerticalScrollView;Landroid/view/View;)V

    mul-int/lit16 v4, v2, 0x96

    int-to-long v4, v4

    invoke-virtual {p0, v3, v4, v5}, Lcom/android/systemui/recent/RecentsVerticalScrollView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 192
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 201
    .end local v0           #child:Landroid/view/View;
    :cond_0
    return-void
.end method

.method public removeViewInLayout(Landroid/view/View;)V
    .locals 0
    .parameter "view"

    .prologue
    .line 185
    invoke-virtual {p0, p1}, Lcom/android/systemui/recent/RecentsVerticalScrollView;->dismissChild(Landroid/view/View;)V

    .line 186
    return-void
.end method

.method public setAdapter(Lcom/android/systemui/recent/RecentsPanelView$TaskDescriptionAdapter;)V
    .locals 8
    .parameter "adapter"

    .prologue
    const/high16 v7, -0x8000

    .line 365
    iput-object p1, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mAdapter:Lcom/android/systemui/recent/RecentsPanelView$TaskDescriptionAdapter;

    .line 366
    iget-object v5, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mAdapter:Lcom/android/systemui/recent/RecentsPanelView$TaskDescriptionAdapter;

    new-instance v6, Lcom/android/systemui/recent/RecentsVerticalScrollView$8;

    invoke-direct {v6, p0}, Lcom/android/systemui/recent/RecentsVerticalScrollView$8;-><init>(Lcom/android/systemui/recent/RecentsVerticalScrollView;)V

    invoke-virtual {v5, v6}, Lcom/android/systemui/recent/RecentsPanelView$TaskDescriptionAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 376
    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentsVerticalScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    .line 377
    .local v3, dm:Landroid/util/DisplayMetrics;
    iget v5, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v5, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 379
    .local v1, childWidthMeasureSpec:I
    iget v5, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v5, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 381
    .local v2, childheightMeasureSpec:I
    iget-object v5, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mAdapter:Lcom/android/systemui/recent/RecentsPanelView$TaskDescriptionAdapter;

    iget-object v6, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v6}, Lcom/android/systemui/recent/RecentsPanelView$TaskDescriptionAdapter;->createView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 382
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0, v1, v2}, Landroid/view/View;->measure(II)V

    .line 383
    iget v5, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v5, v5

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    invoke-static {v5}, Landroid/util/FloatMath;->ceil(F)F

    move-result v5

    float-to-int v5, v5

    iput v5, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mNumItemsInOneScreenful:I

    .line 385
    invoke-direct {p0, v0}, Lcom/android/systemui/recent/RecentsVerticalScrollView;->addToRecycledViews(Landroid/view/View;)V

    .line 387
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    iget v5, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mNumItemsInOneScreenful:I

    add-int/lit8 v5, v5, -0x1

    if-ge v4, v5, :cond_0

    .line 388
    iget-object v5, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mAdapter:Lcom/android/systemui/recent/RecentsPanelView$TaskDescriptionAdapter;

    iget-object v6, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v6}, Lcom/android/systemui/recent/RecentsPanelView$TaskDescriptionAdapter;->createView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/systemui/recent/RecentsVerticalScrollView;->addToRecycledViews(Landroid/view/View;)V

    .line 387
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 390
    :cond_0
    return-void
.end method

.method public setCallback(Lcom/android/systemui/recent/RecentsCallback;)V
    .locals 0
    .parameter "callback"

    .prologue
    .line 403
    iput-object p1, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mCallback:Lcom/android/systemui/recent/RecentsCallback;

    .line 404
    return-void
.end method

.method public setLayoutTransition(Landroid/animation/LayoutTransition;)V
    .locals 1
    .parameter "transition"

    .prologue
    .line 399
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 400
    return-void
.end method

.method public setMinSwipeAlpha(F)V
    .locals 1
    .parameter "minAlpha"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mSwipeHelper:Lcom/android/systemui/SwipeHelper;

    invoke-virtual {v0, p1}, Lcom/android/systemui/SwipeHelper;->setMinAlpha(F)V

    .line 69
    return-void
.end method
