.class public Lcom/android/systemui/statusbar/powerwidget/ScreenTimeoutButton;
.super Lcom/android/systemui/statusbar/powerwidget/PowerButton;
.source "ScreenTimeoutButton.java"


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


# instance fields
.field private mToast:Landroid/widget/Toast;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/powerwidget/ScreenTimeoutButton;->OBSERVED_URIS:Ljava/util/List;

    .line 34
    sget-object v0, Lcom/android/systemui/statusbar/powerwidget/ScreenTimeoutButton;->OBSERVED_URIS:Ljava/util/List;

    const-string v1, "screen_off_timeout"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 35
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/android/systemui/statusbar/powerwidget/PowerButton;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/powerwidget/ScreenTimeoutButton;->mToast:Landroid/widget/Toast;

    .line 37
    const-string v0, "toggleScreenTimeout"

    iput-object v0, p0, Lcom/android/systemui/statusbar/powerwidget/ScreenTimeoutButton;->mType:Ljava/lang/String;

    return-void
.end method

.method private static getCurrentCMMode(Landroid/content/Context;)I
    .locals 3
    .parameter "context"

    .prologue
    .line 169
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "expanded_screentimeout_mode"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private static getScreenTimeout(Landroid/content/Context;)I
    .locals 3
    .parameter "context"

    .prologue
    .line 163
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_off_timeout"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private makeTimeoutToastString(Landroid/content/Context;I)Ljava/lang/String;
    .locals 7
    .parameter "context"
    .parameter "timeout"

    .prologue
    const/16 v3, 0x3c

    const/4 v6, 0x1

    .line 132
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 136
    .local v0, res:Landroid/content/res/Resources;
    div-int/lit16 p2, p2, 0x3e8

    .line 138
    if-lt p2, v3, :cond_3

    rem-int/lit8 v2, p2, 0x3c

    if-nez v2, :cond_3

    .line 140
    div-int/lit8 p2, p2, 0x3c

    .line 141
    if-lt p2, v3, :cond_1

    rem-int/lit8 v2, p2, 0x3c

    if-nez v2, :cond_1

    .line 143
    div-int/lit8 p2, p2, 0x3c

    .line 144
    if-ne p2, v6, :cond_0

    const v1, 0x1040411

    .line 158
    .local v1, resId:I
    :goto_0
    const v2, 0x7f0a000a

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v0, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 144
    .end local v1           #resId:I
    :cond_0
    const v1, 0x1040412

    goto :goto_0

    .line 148
    :cond_1
    if-ne p2, v6, :cond_2

    const v1, 0x1040413

    .restart local v1       #resId:I
    :goto_1
    goto :goto_0

    .end local v1           #resId:I
    :cond_2
    const v1, 0x1040414

    goto :goto_1

    .line 153
    :cond_3
    if-ne p2, v6, :cond_4

    const v1, 0x1040415

    .restart local v1       #resId:I
    :goto_2
    goto :goto_0

    .end local v1           #resId:I
    :cond_4
    const v1, 0x1040416

    goto :goto_2
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
    .line 119
    sget-object v0, Lcom/android/systemui/statusbar/powerwidget/ScreenTimeoutButton;->OBSERVED_URIS:Ljava/util/List;

    return-object v0
.end method

.method protected handleLongClick(Landroid/content/Context;)Z
    .locals 2
    .parameter "context"

    .prologue
    .line 124
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.DISPLAY_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 125
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 126
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 127
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 128
    const/4 v1, 0x1

    return v1
.end method

.method protected setupButton(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 41
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/powerwidget/PowerButton;->setupButton(Landroid/view/View;)V

    .line 42
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/powerwidget/ScreenTimeoutButton;->mToast:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    .line 43
    iget-object v0, p0, Lcom/android/systemui/statusbar/powerwidget/ScreenTimeoutButton;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/powerwidget/ScreenTimeoutButton;->mToast:Landroid/widget/Toast;

    .line 46
    :cond_0
    return-void
.end method

.method protected toggleState(Landroid/content/Context;)V
    .locals 7
    .parameter "context"

    .prologue
    const/4 v5, 0x1

    .line 66
    invoke-static {p1}, Lcom/android/systemui/statusbar/powerwidget/ScreenTimeoutButton;->getScreenTimeout(Landroid/content/Context;)I

    move-result v1

    .line 67
    .local v1, screenTimeout:I
    invoke-static {p1}, Lcom/android/systemui/statusbar/powerwidget/ScreenTimeoutButton;->getCurrentCMMode(Landroid/content/Context;)I

    move-result v0

    .line 69
    .local v0, currentMode:I
    const/16 v3, 0x3a98

    if-ge v1, v3, :cond_2

    .line 70
    if-nez v0, :cond_1

    .line 71
    const/16 v1, 0x3a98

    .line 101
    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "screen_off_timeout"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 106
    iget-object v3, p0, Lcom/android/systemui/statusbar/powerwidget/ScreenTimeoutButton;->mToast:Landroid/widget/Toast;

    if-eqz v3, :cond_0

    .line 107
    iget-object v3, p0, Lcom/android/systemui/statusbar/powerwidget/ScreenTimeoutButton;->mToast:Landroid/widget/Toast;

    invoke-virtual {v3}, Landroid/widget/Toast;->cancel()V

    .line 111
    :cond_0
    invoke-direct {p0, p1, v1}, Lcom/android/systemui/statusbar/powerwidget/ScreenTimeoutButton;->makeTimeoutToastString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    .line 112
    .local v2, toast:Ljava/lang/String;
    invoke-static {p1, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/statusbar/powerwidget/ScreenTimeoutButton;->mToast:Landroid/widget/Toast;

    .line 113
    iget-object v3, p0, Lcom/android/systemui/statusbar/powerwidget/ScreenTimeoutButton;->mToast:Landroid/widget/Toast;

    const/16 v4, 0x11

    iget-object v5, p0, Lcom/android/systemui/statusbar/powerwidget/ScreenTimeoutButton;->mToast:Landroid/widget/Toast;

    invoke-virtual {v5}, Landroid/widget/Toast;->getXOffset()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    iget-object v6, p0, Lcom/android/systemui/statusbar/powerwidget/ScreenTimeoutButton;->mToast:Landroid/widget/Toast;

    invoke-virtual {v6}, Landroid/widget/Toast;->getYOffset()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    invoke-virtual {v3, v4, v5, v6}, Landroid/widget/Toast;->setGravity(III)V

    .line 114
    iget-object v3, p0, Lcom/android/systemui/statusbar/powerwidget/ScreenTimeoutButton;->mToast:Landroid/widget/Toast;

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 115
    return-void

    .line 73
    .end local v2           #toast:Ljava/lang/String;
    :cond_1
    const/16 v1, 0x7530

    goto :goto_0

    .line 75
    :cond_2
    const/16 v3, 0x7530

    if-ge v1, v3, :cond_4

    .line 76
    if-nez v0, :cond_3

    .line 77
    const v1, 0xea60

    goto :goto_0

    .line 79
    :cond_3
    const/16 v1, 0x7530

    goto :goto_0

    .line 81
    :cond_4
    const v3, 0xea60

    if-ge v1, v3, :cond_6

    .line 82
    if-nez v0, :cond_5

    .line 83
    const v1, 0xea60

    goto :goto_0

    .line 85
    :cond_5
    const v1, 0x1d4c0

    goto :goto_0

    .line 87
    :cond_6
    const v3, 0x1d4c0

    if-ge v1, v3, :cond_8

    .line 88
    if-nez v0, :cond_7

    .line 89
    const v1, 0x493e0

    goto :goto_0

    .line 91
    :cond_7
    const v1, 0x1d4c0

    goto :goto_0

    .line 93
    :cond_8
    const v3, 0x493e0

    if-ge v1, v3, :cond_9

    .line 94
    const v1, 0x493e0

    goto :goto_0

    .line 95
    :cond_9
    if-ne v0, v5, :cond_a

    .line 96
    const/16 v1, 0x7530

    goto :goto_0

    .line 98
    :cond_a
    const/16 v1, 0x3a98

    goto :goto_0
.end method

.method protected updateState(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const v2, 0x7f020171

    .line 50
    invoke-static {p1}, Lcom/android/systemui/statusbar/powerwidget/ScreenTimeoutButton;->getScreenTimeout(Landroid/content/Context;)I

    move-result v0

    .line 52
    .local v0, timeout:I
    const/16 v1, 0x7530

    if-gt v0, v1, :cond_0

    .line 53
    iput v2, p0, Lcom/android/systemui/statusbar/powerwidget/ScreenTimeoutButton;->mIcon:I

    .line 54
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/systemui/statusbar/powerwidget/ScreenTimeoutButton;->mState:I

    .line 62
    :goto_0
    return-void

    .line 55
    :cond_0
    const v1, 0x1d4c0

    if-gt v0, v1, :cond_1

    .line 56
    iput v2, p0, Lcom/android/systemui/statusbar/powerwidget/ScreenTimeoutButton;->mIcon:I

    .line 57
    const/4 v1, 0x5

    iput v1, p0, Lcom/android/systemui/statusbar/powerwidget/ScreenTimeoutButton;->mState:I

    goto :goto_0

    .line 59
    :cond_1
    const v1, 0x7f020172

    iput v1, p0, Lcom/android/systemui/statusbar/powerwidget/ScreenTimeoutButton;->mIcon:I

    .line 60
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/systemui/statusbar/powerwidget/ScreenTimeoutButton;->mState:I

    goto :goto_0
.end method
