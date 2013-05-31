.class public Lcom/android/systemui/BeanBag;
.super Landroid/app/Activity;
.source "BeanBag.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/BeanBag$Board;
    }
.end annotation


# instance fields
.field private mBoard:Lcom/android/systemui/BeanBag$Board;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 62
    return-void
.end method


# virtual methods
.method public onPause()V
    .locals 1

    .prologue
    .line 445
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 446
    iget-object v0, p0, Lcom/android/systemui/BeanBag;->mBoard:Lcom/android/systemui/BeanBag$Board;

    invoke-virtual {v0}, Lcom/android/systemui/BeanBag$Board;->stopAnimation()V

    .line 447
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 451
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 452
    iget-object v0, p0, Lcom/android/systemui/BeanBag;->mBoard:Lcom/android/systemui/BeanBag$Board;

    invoke-virtual {v0}, Lcom/android/systemui/BeanBag$Board;->startAnimation()V

    .line 453
    return-void
.end method

.method public onStart()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 428
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 431
    invoke-virtual {p0}, Lcom/android/systemui/BeanBag;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 432
    new-instance v1, Landroid/content/ComponentName;

    const-class v2, Lcom/android/systemui/BeanBagDream;

    invoke-direct {v1, p0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2, v4}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 435
    invoke-virtual {p0}, Lcom/android/systemui/BeanBag;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x80001

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 439
    new-instance v0, Lcom/android/systemui/BeanBag$Board;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/systemui/BeanBag;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "is_cid"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    invoke-direct {v0, p0, v1, v2}, Lcom/android/systemui/BeanBag$Board;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Z)V

    iput-object v0, p0, Lcom/android/systemui/BeanBag;->mBoard:Lcom/android/systemui/BeanBag$Board;

    .line 440
    iget-object v0, p0, Lcom/android/systemui/BeanBag;->mBoard:Lcom/android/systemui/BeanBag$Board;

    invoke-virtual {p0, v0}, Lcom/android/systemui/BeanBag;->setContentView(Landroid/view/View;)V

    .line 441
    return-void
.end method
