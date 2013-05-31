.class public Lcom/android/systemui/statusbar/powerwidget/AutoRotateButton;
.super Lcom/android/systemui/statusbar/powerwidget/PowerButton;
.source "AutoRotateButton.java"


# static fields
.field private static final OBSERVED_URIS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/powerwidget/AutoRotateButton;->OBSERVED_URIS:Ljava/util/List;

    .line 21
    sget-object v0, Lcom/android/systemui/statusbar/powerwidget/AutoRotateButton;->OBSERVED_URIS:Ljava/util/List;

    const-string v1, "accelerometer_rotation"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 22
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/android/systemui/statusbar/powerwidget/PowerButton;-><init>()V

    const-string v0, "toggleAutoRotate"

    iput-object v0, p0, Lcom/android/systemui/statusbar/powerwidget/AutoRotateButton;->mType:Ljava/lang/String;

    return-void
.end method

.method private getAutoRotation(Landroid/content/Context;)Z
    .locals 1
    .parameter "context"

    .prologue
    .line 57
    invoke-static {p1}, Lcom/android/internal/view/RotationPolicy;->isRotationLocked(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected getObservedUris()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .prologue
    .line 53
    sget-object v0, Lcom/android/systemui/statusbar/powerwidget/AutoRotateButton;->OBSERVED_URIS:Ljava/util/List;

    return-object v0
.end method

.method protected handleLongClick(Landroid/content/Context;)Z
    .locals 2
    .parameter "context"

    .prologue
    .line 44
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.DISPLAY_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 45
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 46
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 47
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 48
    const/4 v1, 0x1

    return v1
.end method

.method protected toggleState(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/powerwidget/AutoRotateButton;->getAutoRotation(Landroid/content/Context;)Z

    move-result v0

    invoke-static {p1, v0}, Lcom/android/internal/view/RotationPolicy;->setRotationLock(Landroid/content/Context;Z)V

    .line 40
    return-void
.end method

.method protected updateState(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/powerwidget/AutoRotateButton;->getAutoRotation(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 29
    const v0, 0x7f02016c

    iput v0, p0, Lcom/android/systemui/statusbar/powerwidget/AutoRotateButton;->mIcon:I

    .line 30
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/systemui/statusbar/powerwidget/AutoRotateButton;->mState:I

    .line 35
    :goto_0
    return-void

    .line 32
    :cond_0
    const v0, 0x7f02016b

    iput v0, p0, Lcom/android/systemui/statusbar/powerwidget/AutoRotateButton;->mIcon:I

    .line 33
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/systemui/statusbar/powerwidget/AutoRotateButton;->mState:I

    goto :goto_0
.end method
