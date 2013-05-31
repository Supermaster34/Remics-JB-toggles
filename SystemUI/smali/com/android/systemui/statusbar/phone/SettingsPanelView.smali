.class public Lcom/android/systemui/statusbar/phone/SettingsPanelView;
.super Lcom/android/systemui/statusbar/phone/PanelView;
.source "SettingsPanelView.java"


# instance fields
.field mHandleBar:Landroid/graphics/drawable/Drawable;

.field mHandleBarHeight:I

.field mHandleView:Landroid/view/View;

.field private mQS:Lcom/android/systemui/statusbar/phone/QuickSettingsController;

.field private mQSContainer:Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/PanelView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 4
    .parameter "canvas"

    .prologue
    const/4 v3, 0x0

    .line 110
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelView;->draw(Landroid/graphics/Canvas;)V

    .line 111
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/SettingsPanelView;->getHeight()I

    move-result v1

    iget v2, p0, Lcom/android/systemui/statusbar/phone/SettingsPanelView;->mHandleBarHeight:I

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/SettingsPanelView;->getPaddingBottom()I

    move-result v2

    sub-int v0, v1, v2

    .line 112
    .local v0, off:I
    int-to-float v1, v0

    invoke-virtual {p1, v3, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 113
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/SettingsPanelView;->mHandleBar:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/SettingsPanelView;->mHandleView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getDrawableState()[I

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 114
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/SettingsPanelView;->mHandleBar:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 115
    neg-int v1, v0

    int-to-float v1, v1

    invoke-virtual {p1, v3, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 116
    return-void
.end method

.method public fling(FZ)V
    .locals 4
    .parameter "vel"
    .parameter "always"

    .prologue
    .line 82
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/SettingsPanelView;->mBar:Lcom/android/systemui/statusbar/phone/PanelBar;

    check-cast v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getGestureRecorder()Lcom/android/systemui/statusbar/GestureRecorder;

    move-result-object v0

    .line 83
    .local v0, gr:Lcom/android/systemui/statusbar/GestureRecorder;
    if-eqz v0, :cond_0

    .line 84
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fling "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v1, 0x0

    cmpl-float v1, p1, v1

    if-lez v1, :cond_1

    const-string v1, "open"

    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "settings,v="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/GestureRecorder;->tag(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/PanelView;->fling(FZ)V

    .line 89
    return-void

    .line 84
    :cond_1
    const-string v1, "closed"

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 48
    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->onFinishInflate()V

    .line 50
    const v1, 0x7f090010

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/SettingsPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/SettingsPanelView;->mQSContainer:Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView;

    .line 52
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/SettingsPanelView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 53
    .local v0, resources:Landroid/content/res/Resources;
    const v1, 0x7f020210

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/SettingsPanelView;->mHandleBar:Landroid/graphics/drawable/Drawable;

    .line 54
    const v1, 0x7f0e0033

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/SettingsPanelView;->mHandleBarHeight:I

    .line 55
    const v1, 0x7f090028

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/SettingsPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/SettingsPanelView;->mHandleView:Landroid/view/View;

    .line 57
    const v1, 0x7f0a00be

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/SettingsPanelView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 59
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 6
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 100
    invoke-super/range {p0 .. p5}, Lcom/android/systemui/statusbar/phone/PanelView;->onLayout(ZIIII)V

    .line 101
    if-eqz p1, :cond_0

    .line 102
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/SettingsPanelView;->getPaddingLeft()I

    move-result v0

    .line 103
    .local v0, pl:I
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/SettingsPanelView;->getPaddingRight()I

    move-result v1

    .line 104
    .local v1, pr:I
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/SettingsPanelView;->mHandleBar:Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/SettingsPanelView;->getWidth()I

    move-result v4

    sub-int/2addr v4, v1

    iget v5, p0, Lcom/android/systemui/statusbar/phone/SettingsPanelView;->mHandleBarHeight:I

    invoke-virtual {v2, v0, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 106
    .end local v0           #pl:I
    .end local v1           #pr:I
    :cond_0
    return-void
.end method

.method public setBar(Lcom/android/systemui/statusbar/phone/PanelBar;)V
    .locals 1
    .parameter "panelBar"

    .prologue
    .line 67
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelView;->setBar(Lcom/android/systemui/statusbar/phone/PanelBar;)V

    .line 69
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SettingsPanelView;->mQS:Lcom/android/systemui/statusbar/phone/QuickSettingsController;

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SettingsPanelView;->mQS:Lcom/android/systemui/statusbar/phone/QuickSettingsController;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/QuickSettingsController;->setBar(Lcom/android/systemui/statusbar/phone/PanelBar;)V

    .line 72
    :cond_0
    return-void
.end method

.method public setQuickSettings(Lcom/android/systemui/statusbar/phone/QuickSettingsController;)V
    .locals 0
    .parameter "qs"

    .prologue
    .line 62
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/SettingsPanelView;->mQS:Lcom/android/systemui/statusbar/phone/QuickSettingsController;

    .line 63
    return-void
.end method
