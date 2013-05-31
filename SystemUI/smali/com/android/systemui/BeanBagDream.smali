.class public Lcom/android/systemui/BeanBagDream;
.super Landroid/service/dreams/DreamService;
.source "BeanBagDream.java"


# instance fields
.field private mBoard:Lcom/android/systemui/BeanBag$Board;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/service/dreams/DreamService;-><init>()V

    return-void
.end method


# virtual methods
.method public onAttachedToWindow()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 31
    invoke-super {p0}, Landroid/service/dreams/DreamService;->onAttachedToWindow()V

    .line 32
    invoke-virtual {p0, v1}, Lcom/android/systemui/BeanBagDream;->setInteractive(Z)V

    .line 33
    invoke-virtual {p0, v1}, Lcom/android/systemui/BeanBagDream;->setFullscreen(Z)V

    .line 34
    invoke-virtual {p0}, Lcom/android/systemui/BeanBagDream;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 35
    .local v0, prefs:Landroid/content/SharedPreferences;
    new-instance v1, Lcom/android/systemui/BeanBag$Board;

    const/4 v2, 0x0

    const-string v3, "beanbag_dream_cid"

    const/4 v4, 0x0

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    invoke-direct {v1, p0, v2, v3}, Lcom/android/systemui/BeanBag$Board;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Z)V

    iput-object v1, p0, Lcom/android/systemui/BeanBagDream;->mBoard:Lcom/android/systemui/BeanBag$Board;

    .line 36
    iget-object v1, p0, Lcom/android/systemui/BeanBagDream;->mBoard:Lcom/android/systemui/BeanBag$Board;

    invoke-virtual {p0, v1}, Lcom/android/systemui/BeanBagDream;->setContentView(Landroid/view/View;)V

    .line 37
    return-void
.end method

.method public onDreamingStarted()V
    .locals 1

    .prologue
    .line 41
    invoke-super {p0}, Landroid/service/dreams/DreamService;->onDreamingStarted()V

    .line 42
    iget-object v0, p0, Lcom/android/systemui/BeanBagDream;->mBoard:Lcom/android/systemui/BeanBag$Board;

    invoke-virtual {v0}, Lcom/android/systemui/BeanBag$Board;->startAnimation()V

    .line 43
    return-void
.end method

.method public onDreamingStopped()V
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/systemui/BeanBagDream;->mBoard:Lcom/android/systemui/BeanBag$Board;

    invoke-virtual {v0}, Lcom/android/systemui/BeanBag$Board;->stopAnimation()V

    .line 48
    invoke-super {p0}, Landroid/service/dreams/DreamService;->onDreamingStopped()V

    .line 49
    return-void
.end method
