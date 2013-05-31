.class public Lcom/android/systemui/quicksettings/RingerModeTile;
.super Lcom/android/systemui/quicksettings/QuickSettingsTile;
.source "RingerModeTile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/quicksettings/RingerModeTile$Ringer;
    }
.end annotation


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mRingerValues:[I

.field private mRingerValuesIndex:I

.field private final mRingers:[Lcom/android/systemui/quicksettings/RingerModeTile$Ringer;

.field private mRingersIndex:I

.field private final mSilentRinger:Lcom/android/systemui/quicksettings/RingerModeTile$Ringer;

.field private final mSoundRinger:Lcom/android/systemui/quicksettings/RingerModeTile$Ringer;

.field private final mSoundVibrateRinger:Lcom/android/systemui/quicksettings/RingerModeTile$Ringer;

.field private final mVibrateRinger:Lcom/android/systemui/quicksettings/RingerModeTile$Ringer;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/QuickSettingsController;)V
    .locals 6
    .parameter "context"
    .parameter "qsc"

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 41
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/quicksettings/QuickSettingsTile;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/QuickSettingsController;)V

    .line 24
    new-instance v0, Lcom/android/systemui/quicksettings/RingerModeTile$Ringer;

    invoke-direct {v0, p0, v2, v2}, Lcom/android/systemui/quicksettings/RingerModeTile$Ringer;-><init>(Lcom/android/systemui/quicksettings/RingerModeTile;IZ)V

    iput-object v0, p0, Lcom/android/systemui/quicksettings/RingerModeTile;->mSilentRinger:Lcom/android/systemui/quicksettings/RingerModeTile$Ringer;

    .line 25
    new-instance v0, Lcom/android/systemui/quicksettings/RingerModeTile$Ringer;

    invoke-direct {v0, p0, v3, v3}, Lcom/android/systemui/quicksettings/RingerModeTile$Ringer;-><init>(Lcom/android/systemui/quicksettings/RingerModeTile;IZ)V

    iput-object v0, p0, Lcom/android/systemui/quicksettings/RingerModeTile;->mVibrateRinger:Lcom/android/systemui/quicksettings/RingerModeTile$Ringer;

    .line 26
    new-instance v0, Lcom/android/systemui/quicksettings/RingerModeTile$Ringer;

    invoke-direct {v0, p0, v4, v2}, Lcom/android/systemui/quicksettings/RingerModeTile$Ringer;-><init>(Lcom/android/systemui/quicksettings/RingerModeTile;IZ)V

    iput-object v0, p0, Lcom/android/systemui/quicksettings/RingerModeTile;->mSoundRinger:Lcom/android/systemui/quicksettings/RingerModeTile$Ringer;

    .line 27
    new-instance v0, Lcom/android/systemui/quicksettings/RingerModeTile$Ringer;

    invoke-direct {v0, p0, v4, v3}, Lcom/android/systemui/quicksettings/RingerModeTile$Ringer;-><init>(Lcom/android/systemui/quicksettings/RingerModeTile;IZ)V

    iput-object v0, p0, Lcom/android/systemui/quicksettings/RingerModeTile;->mSoundVibrateRinger:Lcom/android/systemui/quicksettings/RingerModeTile$Ringer;

    .line 28
    new-array v0, v5, [Lcom/android/systemui/quicksettings/RingerModeTile$Ringer;

    iget-object v1, p0, Lcom/android/systemui/quicksettings/RingerModeTile;->mSilentRinger:Lcom/android/systemui/quicksettings/RingerModeTile$Ringer;

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/systemui/quicksettings/RingerModeTile;->mVibrateRinger:Lcom/android/systemui/quicksettings/RingerModeTile$Ringer;

    aput-object v1, v0, v3

    iget-object v1, p0, Lcom/android/systemui/quicksettings/RingerModeTile;->mSoundRinger:Lcom/android/systemui/quicksettings/RingerModeTile$Ringer;

    aput-object v1, v0, v4

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/android/systemui/quicksettings/RingerModeTile;->mSoundVibrateRinger:Lcom/android/systemui/quicksettings/RingerModeTile$Ringer;

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/systemui/quicksettings/RingerModeTile;->mRingers:[Lcom/android/systemui/quicksettings/RingerModeTile$Ringer;

    .line 33
    new-array v0, v5, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/systemui/quicksettings/RingerModeTile;->mRingerValues:[I

    .line 43
    iget-object v0, p0, Lcom/android/systemui/quicksettings/RingerModeTile;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/systemui/quicksettings/RingerModeTile;->mAudioManager:Landroid/media/AudioManager;

    .line 46
    new-instance v0, Lcom/android/systemui/quicksettings/RingerModeTile$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/quicksettings/RingerModeTile$1;-><init>(Lcom/android/systemui/quicksettings/RingerModeTile;)V

    iput-object v0, p0, Lcom/android/systemui/quicksettings/RingerModeTile;->mOnClick:Landroid/view/View$OnClickListener;

    .line 54
    new-instance v0, Lcom/android/systemui/quicksettings/RingerModeTile$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/quicksettings/RingerModeTile$2;-><init>(Lcom/android/systemui/quicksettings/RingerModeTile;)V

    iput-object v0, p0, Lcom/android/systemui/quicksettings/RingerModeTile;->mOnLongClick:Landroid/view/View$OnLongClickListener;

    .line 61
    const-string v0, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {p2, v0, p0}, Lcom/android/systemui/statusbar/phone/QuickSettingsController;->registerAction(Ljava/lang/Object;Lcom/android/systemui/quicksettings/QuickSettingsTile;)V

    .line 62
    const-string v0, "expanded_ring_mode"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p2, v0, p0}, Lcom/android/systemui/statusbar/phone/QuickSettingsController;->registerObservedContent(Landroid/net/Uri;Lcom/android/systemui/quicksettings/QuickSettingsTile;)V

    .line 64
    const-string v0, "vibrate_when_ringing"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p2, v0, p0}, Lcom/android/systemui/statusbar/phone/QuickSettingsController;->registerObservedContent(Landroid/net/Uri;Lcom/android/systemui/quicksettings/QuickSettingsTile;)V

    .line 66
    return-void

    .line 33
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/systemui/quicksettings/RingerModeTile;)Landroid/media/AudioManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget-object v0, p0, Lcom/android/systemui/quicksettings/RingerModeTile;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method private findCurrentState()V
    .locals 7

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 164
    iget-object v6, p0, Lcom/android/systemui/quicksettings/RingerModeTile;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 165
    .local v1, resolver:Landroid/content/ContentResolver;
    const-string v6, "vibrate_when_ringing"

    invoke-static {v1, v6, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v4, :cond_1

    .line 167
    .local v4, vibrateWhenRinging:Z
    :goto_0
    iget-object v5, p0, Lcom/android/systemui/quicksettings/RingerModeTile;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v5}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v3

    .line 169
    .local v3, ringerMode:I
    new-instance v2, Lcom/android/systemui/quicksettings/RingerModeTile$Ringer;

    invoke-direct {v2, p0, v3, v4}, Lcom/android/systemui/quicksettings/RingerModeTile$Ringer;-><init>(Lcom/android/systemui/quicksettings/RingerModeTile;IZ)V

    .line 170
    .local v2, ringer:Lcom/android/systemui/quicksettings/RingerModeTile$Ringer;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v5, p0, Lcom/android/systemui/quicksettings/RingerModeTile;->mRingers:[Lcom/android/systemui/quicksettings/RingerModeTile$Ringer;

    array-length v5, v5

    if-ge v0, v5, :cond_0

    .line 171
    iget-object v5, p0, Lcom/android/systemui/quicksettings/RingerModeTile;->mRingers:[Lcom/android/systemui/quicksettings/RingerModeTile$Ringer;

    aget-object v5, v5, v0

    invoke-virtual {v5, v2}, Lcom/android/systemui/quicksettings/RingerModeTile$Ringer;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 172
    iput v0, p0, Lcom/android/systemui/quicksettings/RingerModeTile;->mRingersIndex:I

    .line 176
    :cond_0
    return-void

    .end local v0           #i:I
    .end local v2           #ringer:Lcom/android/systemui/quicksettings/RingerModeTile$Ringer;
    .end local v3           #ringerMode:I
    .end local v4           #vibrateWhenRinging:Z
    :cond_1
    move v4, v5

    .line 165
    goto :goto_0

    .line 170
    .restart local v0       #i:I
    .restart local v2       #ringer:Lcom/android/systemui/quicksettings/RingerModeTile$Ringer;
    .restart local v3       #ringerMode:I
    .restart local v4       #vibrateWhenRinging:Z
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private updateSettings(Landroid/content/ContentResolver;)V
    .locals 4
    .parameter "resolver"

    .prologue
    .line 149
    const-string v2, "expanded_ring_mode"

    invoke-static {p1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/systemui/quicksettings/RingerModeTile;->parseStoredValue(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v1

    .line 151
    .local v1, modes:[Ljava/lang/String;
    if-eqz v1, :cond_0

    array-length v2, v1

    if-nez v2, :cond_2

    .line 152
    :cond_0
    const/4 v2, 0x4

    new-array v2, v2, [I

    fill-array-data v2, :array_0

    iput-object v2, p0, Lcom/android/systemui/quicksettings/RingerModeTile;->mRingerValues:[I

    .line 161
    :cond_1
    return-void

    .line 156
    :cond_2
    array-length v2, v1

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/android/systemui/quicksettings/RingerModeTile;->mRingerValues:[I

    .line 157
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 158
    iget-object v2, p0, Lcom/android/systemui/quicksettings/RingerModeTile;->mRingerValues:[I

    aget-object v3, v1, v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v2, v0

    .line 157
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 152
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private declared-synchronized updateTile()V
    .locals 3

    .prologue
    .line 98
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/quicksettings/RingerModeTile;->mContext:Landroid/content/Context;

    const v2, 0x7f0a0014

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/quicksettings/RingerModeTile;->mLabel:Ljava/lang/String;

    .line 101
    invoke-direct {p0}, Lcom/android/systemui/quicksettings/RingerModeTile;->findCurrentState()V

    .line 102
    iget v1, p0, Lcom/android/systemui/quicksettings/RingerModeTile;->mRingersIndex:I

    packed-switch v1, :pswitch_data_0

    .line 117
    :goto_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v1, p0, Lcom/android/systemui/quicksettings/RingerModeTile;->mRingerValues:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 118
    iget v1, p0, Lcom/android/systemui/quicksettings/RingerModeTile;->mRingersIndex:I

    iget-object v2, p0, Lcom/android/systemui/quicksettings/RingerModeTile;->mRingerValues:[I

    aget v2, v2, v0

    if-ne v1, v2, :cond_1

    .line 119
    iput v0, p0, Lcom/android/systemui/quicksettings/RingerModeTile;->mRingerValuesIndex:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 123
    :cond_0
    monitor-exit p0

    return-void

    .line 104
    .end local v0           #i:I
    :pswitch_0
    const v1, 0x7f020084

    :try_start_1
    iput v1, p0, Lcom/android/systemui/quicksettings/RingerModeTile;->mDrawable:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 98
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 107
    :pswitch_1
    const v1, 0x7f0200b4

    :try_start_2
    iput v1, p0, Lcom/android/systemui/quicksettings/RingerModeTile;->mDrawable:I

    goto :goto_0

    .line 110
    :pswitch_2
    const v1, 0x7f020085

    iput v1, p0, Lcom/android/systemui/quicksettings/RingerModeTile;->mDrawable:I

    goto :goto_0

    .line 113
    :pswitch_3
    const v1, 0x7f020086

    iput v1, p0, Lcom/android/systemui/quicksettings/RingerModeTile;->mDrawable:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 117
    .restart local v0       #i:I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 102
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public onChangeUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V
    .locals 1
    .parameter "resolver"
    .parameter "uri"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/systemui/quicksettings/RingerModeTile;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/systemui/quicksettings/RingerModeTile;->updateSettings(Landroid/content/ContentResolver;)V

    .line 76
    invoke-virtual {p0}, Lcom/android/systemui/quicksettings/RingerModeTile;->updateResources()V

    .line 77
    return-void
.end method

.method onPostCreate()V
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/systemui/quicksettings/RingerModeTile;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/systemui/quicksettings/RingerModeTile;->updateSettings(Landroid/content/ContentResolver;)V

    .line 85
    invoke-direct {p0}, Lcom/android/systemui/quicksettings/RingerModeTile;->updateTile()V

    .line 87
    invoke-super {p0}, Lcom/android/systemui/quicksettings/QuickSettingsTile;->onPostCreate()V

    .line 88
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 70
    invoke-virtual {p0}, Lcom/android/systemui/quicksettings/RingerModeTile;->updateResources()V

    .line 71
    return-void
.end method

.method public parseStoredValue(Ljava/lang/CharSequence;)[Ljava/lang/String;
    .locals 2
    .parameter "val"

    .prologue
    .line 141
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 142
    const/4 v0, 0x0

    .line 144
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OV=I=XseparatorX=I=VO"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected toggleState()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 126
    iget v1, p0, Lcom/android/systemui/quicksettings/RingerModeTile;->mRingerValuesIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/systemui/quicksettings/RingerModeTile;->mRingerValuesIndex:I

    .line 127
    iget v1, p0, Lcom/android/systemui/quicksettings/RingerModeTile;->mRingerValuesIndex:I

    iget-object v2, p0, Lcom/android/systemui/quicksettings/RingerModeTile;->mRingerValues:[I

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-le v1, v2, :cond_0

    .line 128
    iput v3, p0, Lcom/android/systemui/quicksettings/RingerModeTile;->mRingerValuesIndex:I

    .line 131
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/quicksettings/RingerModeTile;->mRingerValues:[I

    iget v2, p0, Lcom/android/systemui/quicksettings/RingerModeTile;->mRingerValuesIndex:I

    aget v1, v1, v2

    iput v1, p0, Lcom/android/systemui/quicksettings/RingerModeTile;->mRingersIndex:I

    .line 132
    iget v1, p0, Lcom/android/systemui/quicksettings/RingerModeTile;->mRingersIndex:I

    iget-object v2, p0, Lcom/android/systemui/quicksettings/RingerModeTile;->mRingers:[Lcom/android/systemui/quicksettings/RingerModeTile$Ringer;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-le v1, v2, :cond_1

    .line 133
    iput v3, p0, Lcom/android/systemui/quicksettings/RingerModeTile;->mRingersIndex:I

    .line 136
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/quicksettings/RingerModeTile;->mRingers:[Lcom/android/systemui/quicksettings/RingerModeTile$Ringer;

    iget v2, p0, Lcom/android/systemui/quicksettings/RingerModeTile;->mRingersIndex:I

    aget-object v0, v1, v2

    .line 137
    .local v0, ringer:Lcom/android/systemui/quicksettings/RingerModeTile$Ringer;
    iget-object v1, p0, Lcom/android/systemui/quicksettings/RingerModeTile;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/systemui/quicksettings/RingerModeTile$Ringer;->execute(Landroid/content/Context;)V

    .line 138
    return-void
.end method

.method public updateResources()V
    .locals 0

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/android/systemui/quicksettings/RingerModeTile;->updateTile()V

    .line 93
    invoke-super {p0}, Lcom/android/systemui/quicksettings/QuickSettingsTile;->updateResources()V

    .line 94
    return-void
.end method
