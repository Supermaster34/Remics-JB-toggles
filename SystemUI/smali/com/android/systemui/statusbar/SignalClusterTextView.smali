.class public Lcom/android/systemui/statusbar/SignalClusterTextView;
.super Landroid/widget/LinearLayout;
.source "SignalClusterTextView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/SignalClusterTextView$SettingsObserver;
    }
.end annotation


# instance fields
.field dBm:I

.field private mAirplaneMode:Z

.field private mAttached:Z

.field mHandler:Landroid/os/Handler;

.field mMobileGroup:Landroid/view/ViewGroup;

.field mMobileSignalText:Landroid/widget/TextView;

.field mObserver:Lcom/android/systemui/statusbar/SignalClusterTextView$SettingsObserver;

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mSignalClusterStyle:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 89
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/SignalClusterTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 90
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 93
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/SignalClusterTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 94
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 97
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 66
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/SignalClusterTextView;->dBm:I

    .line 153
    new-instance v0, Lcom/android/systemui/statusbar/SignalClusterTextView$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/SignalClusterTextView$1;-><init>(Lcom/android/systemui/statusbar/SignalClusterTextView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterTextView;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 99
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterTextView;->mHandler:Landroid/os/Handler;

    .line 100
    new-instance v0, Lcom/android/systemui/statusbar/SignalClusterTextView$SettingsObserver;

    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterTextView;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/SignalClusterTextView$SettingsObserver;-><init>(Lcom/android/systemui/statusbar/SignalClusterTextView;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterTextView;->mObserver:Lcom/android/systemui/statusbar/SignalClusterTextView$SettingsObserver;

    .line 101
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/SignalClusterTextView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterTextView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/SignalClusterTextView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterTextView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/SignalClusterTextView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/android/systemui/statusbar/SignalClusterTextView;->updateSettings()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/SignalClusterTextView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/SignalClusterTextView;->mAttached:Z

    return v0
.end method

.method static synthetic access$402(Lcom/android/systemui/statusbar/SignalClusterTextView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/SignalClusterTextView;->mAirplaneMode:Z

    return p1
.end method

.method private getSignalLevelString(I)Ljava/lang/String;
    .locals 1
    .parameter "dBm"

    .prologue
    .line 131
    if-nez p1, :cond_0

    .line 132
    const-string v0, "-\u221e"

    .line 134
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private updateSettings()V
    .locals 3

    .prologue
    .line 175
    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterTextView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 176
    .local v0, resolver:Landroid/content/ContentResolver;
    const-string v1, "status_bar_signal"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/SignalClusterTextView;->mSignalClusterStyle:I

    .line 178
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/SignalClusterTextView;->updateSignalText()V

    .line 179
    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 3

    .prologue
    .line 105
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 107
    const v0, 0x7f090040

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/SignalClusterTextView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterTextView;->mMobileGroup:Landroid/view/ViewGroup;

    .line 108
    const v0, 0x7f090041

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/SignalClusterTextView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterTextView;->mMobileSignalText:Landroid/widget/TextView;

    .line 110
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/SignalClusterTextView;->mAttached:Z

    if-nez v0, :cond_0

    .line 111
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/SignalClusterTextView;->mAttached:Z

    .line 112
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/SignalClusterTextView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterTextView;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v2, 0x101

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 116
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterTextView;->mObserver:Lcom/android/systemui/statusbar/SignalClusterTextView$SettingsObserver;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/SignalClusterTextView$SettingsObserver;->observe()V

    .line 117
    invoke-direct {p0}, Lcom/android/systemui/statusbar/SignalClusterTextView;->updateSettings()V

    .line 119
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 123
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/SignalClusterTextView;->mAttached:Z

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterTextView;->mObserver:Lcom/android/systemui/statusbar/SignalClusterTextView$SettingsObserver;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/SignalClusterTextView$SettingsObserver;->unobserve()V

    .line 125
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/SignalClusterTextView;->mAttached:Z

    .line 127
    :cond_0
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 128
    return-void
.end method

.method final updateSignalText()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 139
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/SignalClusterTextView;->mAirplaneMode:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/SignalClusterTextView;->dBm:I

    if-nez v0, :cond_1

    .line 140
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterTextView;->mMobileGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 148
    :goto_0
    return-void

    .line 142
    :cond_1
    iget v0, p0, Lcom/android/systemui/statusbar/SignalClusterTextView;->mSignalClusterStyle:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 143
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterTextView;->mMobileGroup:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 144
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterTextView;->mMobileSignalText:Landroid/widget/TextView;

    iget v1, p0, Lcom/android/systemui/statusbar/SignalClusterTextView;->dBm:I

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/SignalClusterTextView;->getSignalLevelString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 146
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterTextView;->mMobileGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0
.end method
