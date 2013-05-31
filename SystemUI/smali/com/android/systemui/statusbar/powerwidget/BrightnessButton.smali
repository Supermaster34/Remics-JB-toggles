.class public Lcom/android/systemui/statusbar/powerwidget/BrightnessButton;
.super Lcom/android/systemui/statusbar/powerwidget/PowerButton;
.source "BrightnessButton.java"


# static fields
.field private static final BACKLIGHTS:[I

.field private static final BRIGHTNESS_MODE_URI:Landroid/net/Uri;

.field private static final BRIGHTNESS_URI:Landroid/net/Uri;

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
.field private mAutoBrightness:Z

.field private mAutoBrightnessSupported:Z

.field private mBacklightValues:[I

.field private mCurrentBacklightIndex:I

.field private mCurrentBrightness:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 41
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/systemui/statusbar/powerwidget/BrightnessButton;->BACKLIGHTS:[I

    .line 46
    const-string v0, "screen_brightness"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/powerwidget/BrightnessButton;->BRIGHTNESS_URI:Landroid/net/Uri;

    .line 48
    const-string v0, "screen_brightness_mode"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/powerwidget/BrightnessButton;->BRIGHTNESS_MODE_URI:Landroid/net/Uri;

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/powerwidget/BrightnessButton;->OBSERVED_URIS:Ljava/util/List;

    .line 52
    sget-object v0, Lcom/android/systemui/statusbar/powerwidget/BrightnessButton;->OBSERVED_URIS:Ljava/util/List;

    sget-object v1, Lcom/android/systemui/statusbar/powerwidget/BrightnessButton;->BRIGHTNESS_URI:Landroid/net/Uri;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 53
    sget-object v0, Lcom/android/systemui/statusbar/powerwidget/BrightnessButton;->OBSERVED_URIS:Ljava/util/List;

    sget-object v1, Lcom/android/systemui/statusbar/powerwidget/BrightnessButton;->BRIGHTNESS_MODE_URI:Landroid/net/Uri;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 54
    sget-object v0, Lcom/android/systemui/statusbar/powerwidget/BrightnessButton;->OBSERVED_URIS:Ljava/util/List;

    const-string v1, "expanded_brightness_mode"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 55
    return-void

    .line 41
    nop

    :array_0
    .array-data 0x4
        0xfft 0xfft 0xfft 0xfft
        0x1et 0x0t 0x0t 0x0t
        0x3ft 0x0t 0x0t 0x0t
        0x7ft 0x0t 0x0t 0x0t
        0xbft 0x0t 0x0t 0x0t
        0xfft 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 69
    invoke-direct {p0}, Lcom/android/systemui/statusbar/powerwidget/PowerButton;-><init>()V

    .line 57
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/powerwidget/BrightnessButton;->mAutoBrightnessSupported:Z

    .line 59
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/powerwidget/BrightnessButton;->mAutoBrightness:Z

    .line 63
    iput v0, p0, Lcom/android/systemui/statusbar/powerwidget/BrightnessButton;->mCurrentBacklightIndex:I

    .line 65
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/systemui/statusbar/powerwidget/BrightnessButton;->mBacklightValues:[I

    .line 70
    const-string v0, "toggleBrightness"

    iput-object v0, p0, Lcom/android/systemui/statusbar/powerwidget/BrightnessButton;->mType:Ljava/lang/String;

    .line 71
    return-void

    .line 65
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private updateSettings(Landroid/content/ContentResolver;)V
    .locals 7
    .parameter "resolver"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v6, -0x1

    .line 157
    const-string v4, "expanded_brightness_mode"

    invoke-static {p1, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/powerwidget/BrightnessButton;->parseStoredValue(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v1

    .line 159
    .local v1, modes:[Ljava/lang/String;
    if-eqz v1, :cond_0

    array-length v4, v1

    if-nez v4, :cond_3

    .line 160
    :cond_0
    const/4 v4, 0x6

    new-array v4, v4, [I

    fill-array-data v4, :array_0

    iput-object v4, p0, Lcom/android/systemui/statusbar/powerwidget/BrightnessButton;->mBacklightValues:[I

    .line 170
    :cond_1
    const-string v4, "screen_brightness_mode"

    invoke-static {p1, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v2, :cond_4

    :goto_0
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/powerwidget/BrightnessButton;->mAutoBrightness:Z

    .line 172
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/powerwidget/BrightnessButton;->mAutoBrightness:Z

    if-eqz v2, :cond_5

    .line 173
    iput v6, p0, Lcom/android/systemui/statusbar/powerwidget/BrightnessButton;->mCurrentBrightness:I

    .line 184
    :cond_2
    :goto_1
    return-void

    .line 164
    :cond_3
    array-length v4, v1

    new-array v4, v4, [I

    iput-object v4, p0, Lcom/android/systemui/statusbar/powerwidget/BrightnessButton;->mBacklightValues:[I

    .line 165
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2
    array-length v4, v1

    if-ge v0, v4, :cond_1

    .line 166
    iget-object v4, p0, Lcom/android/systemui/statusbar/powerwidget/BrightnessButton;->mBacklightValues:[I

    aget-object v5, v1, v0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aput v5, v4, v0

    .line 165
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .end local v0           #i:I
    :cond_4
    move v2, v3

    .line 170
    goto :goto_0

    .line 175
    :cond_5
    const-string v2, "screen_brightness"

    invoke-static {p1, v2, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/statusbar/powerwidget/BrightnessButton;->mCurrentBrightness:I

    .line 177
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_3
    sget-object v2, Lcom/android/systemui/statusbar/powerwidget/BrightnessButton;->BACKLIGHTS:[I

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 178
    iget v2, p0, Lcom/android/systemui/statusbar/powerwidget/BrightnessButton;->mCurrentBrightness:I

    sget-object v3, Lcom/android/systemui/statusbar/powerwidget/BrightnessButton;->BACKLIGHTS:[I

    aget v3, v3, v0

    if-ne v2, v3, :cond_6

    .line 179
    iput v0, p0, Lcom/android/systemui/statusbar/powerwidget/BrightnessButton;->mCurrentBacklightIndex:I

    goto :goto_1

    .line 177
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 160
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
    .end array-data
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
    .line 140
    sget-object v0, Lcom/android/systemui/statusbar/powerwidget/BrightnessButton;->OBSERVED_URIS:Ljava/util/List;

    return-object v0
.end method

.method protected handleLongClick(Landroid/content/Context;)Z
    .locals 2
    .parameter "context"

    .prologue
    .line 131
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.DISPLAY_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 132
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 133
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 134
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 135
    const/4 v1, 0x1

    return v1
.end method

.method protected onChangeUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V
    .locals 3
    .parameter "resolver"
    .parameter "uri"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 145
    sget-object v2, Lcom/android/systemui/statusbar/powerwidget/BrightnessButton;->BRIGHTNESS_URI:Landroid/net/Uri;

    invoke-virtual {v2, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 146
    const-string v0, "screen_brightness"

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/powerwidget/BrightnessButton;->mCurrentBrightness:I

    .line 154
    :goto_0
    return-void

    .line 148
    :cond_0
    sget-object v2, Lcom/android/systemui/statusbar/powerwidget/BrightnessButton;->BRIGHTNESS_MODE_URI:Landroid/net/Uri;

    invoke-virtual {v2, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 149
    const-string v2, "screen_brightness_mode"

    invoke-static {p1, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_1

    :goto_1
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/powerwidget/BrightnessButton;->mAutoBrightness:Z

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1

    .line 152
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/powerwidget/BrightnessButton;->updateSettings(Landroid/content/ContentResolver;)V

    goto :goto_0
.end method

.method protected setupButton(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 75
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/powerwidget/PowerButton;->setupButton(Landroid/view/View;)V

    .line 76
    iget-object v1, p0, Lcom/android/systemui/statusbar/powerwidget/BrightnessButton;->mView:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 77
    iget-object v1, p0, Lcom/android/systemui/statusbar/powerwidget/BrightnessButton;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 78
    .local v0, context:Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x111001a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/powerwidget/BrightnessButton;->mAutoBrightnessSupported:Z

    .line 80
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/powerwidget/BrightnessButton;->updateSettings(Landroid/content/ContentResolver;)V

    .line 82
    .end local v0           #context:Landroid/content/Context;
    :cond_0
    return-void
.end method

.method protected toggleState(Landroid/content/Context;)V
    .locals 7
    .parameter "context"

    .prologue
    const/4 v6, 0x0

    .line 103
    const-string v4, "power"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    .line 104
    .local v2, power:Landroid/os/PowerManager;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 106
    .local v3, resolver:Landroid/content/ContentResolver;
    iget v4, p0, Lcom/android/systemui/statusbar/powerwidget/BrightnessButton;->mCurrentBacklightIndex:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/systemui/statusbar/powerwidget/BrightnessButton;->mCurrentBacklightIndex:I

    .line 107
    iget v4, p0, Lcom/android/systemui/statusbar/powerwidget/BrightnessButton;->mCurrentBacklightIndex:I

    iget-object v5, p0, Lcom/android/systemui/statusbar/powerwidget/BrightnessButton;->mBacklightValues:[I

    array-length v5, v5

    add-int/lit8 v5, v5, -0x1

    if-le v4, v5, :cond_0

    .line 108
    iput v6, p0, Lcom/android/systemui/statusbar/powerwidget/BrightnessButton;->mCurrentBacklightIndex:I

    .line 111
    :cond_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/powerwidget/BrightnessButton;->mBacklightValues:[I

    iget v5, p0, Lcom/android/systemui/statusbar/powerwidget/BrightnessButton;->mCurrentBacklightIndex:I

    aget v0, v4, v5

    .line 112
    .local v0, backlightIndex:I
    sget-object v4, Lcom/android/systemui/statusbar/powerwidget/BrightnessButton;->BACKLIGHTS:[I

    aget v1, v4, v0

    .line 114
    .local v1, brightness:I
    const/4 v4, -0x1

    if-ne v1, v4, :cond_1

    .line 115
    const-string v4, "screen_brightness_mode"

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 127
    :goto_0
    return-void

    .line 118
    :cond_1
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/powerwidget/BrightnessButton;->mAutoBrightnessSupported:Z

    if-eqz v4, :cond_2

    .line 119
    const-string v4, "screen_brightness_mode"

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 122
    :cond_2
    if-eqz v2, :cond_3

    .line 123
    invoke-virtual {v2, v1}, Landroid/os/PowerManager;->setBacklightBrightness(I)V

    .line 125
    :cond_3
    const-string v4, "screen_brightness"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method

.method protected updateState(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x1

    .line 86
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/powerwidget/BrightnessButton;->mAutoBrightness:Z

    if-eqz v0, :cond_0

    .line 87
    const v0, 0x7f020154

    iput v0, p0, Lcom/android/systemui/statusbar/powerwidget/BrightnessButton;->mIcon:I

    .line 88
    iput v2, p0, Lcom/android/systemui/statusbar/powerwidget/BrightnessButton;->mState:I

    .line 99
    :goto_0
    return-void

    .line 89
    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/powerwidget/BrightnessButton;->mCurrentBrightness:I

    const/16 v1, 0x3f

    if-gt v0, v1, :cond_1

    .line 90
    const v0, 0x7f020156

    iput v0, p0, Lcom/android/systemui/statusbar/powerwidget/BrightnessButton;->mIcon:I

    .line 91
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/systemui/statusbar/powerwidget/BrightnessButton;->mState:I

    goto :goto_0

    .line 92
    :cond_1
    iget v0, p0, Lcom/android/systemui/statusbar/powerwidget/BrightnessButton;->mCurrentBrightness:I

    const/16 v1, 0x7f

    if-gt v0, v1, :cond_2

    .line 93
    const v0, 0x7f020155

    iput v0, p0, Lcom/android/systemui/statusbar/powerwidget/BrightnessButton;->mIcon:I

    .line 94
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/systemui/statusbar/powerwidget/BrightnessButton;->mState:I

    goto :goto_0

    .line 96
    :cond_2
    const v0, 0x7f020157

    iput v0, p0, Lcom/android/systemui/statusbar/powerwidget/BrightnessButton;->mIcon:I

    .line 97
    iput v2, p0, Lcom/android/systemui/statusbar/powerwidget/BrightnessButton;->mState:I

    goto :goto_0
.end method
