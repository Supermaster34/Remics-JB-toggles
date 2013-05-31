.class Lcom/android/systemui/quicksettings/RingerModeTile$Ringer;
.super Ljava/lang/Object;
.source "RingerModeTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/quicksettings/RingerModeTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Ringer"
.end annotation


# instance fields
.field final mRingerMode:I

.field final mVibrateWhenRinging:Z

.field final synthetic this$0:Lcom/android/systemui/quicksettings/RingerModeTile;


# direct methods
.method constructor <init>(Lcom/android/systemui/quicksettings/RingerModeTile;IZ)V
    .locals 0
    .parameter
    .parameter "ringerMode"
    .parameter "vibrateWhenRinging"

    .prologue
    .line 182
    iput-object p1, p0, Lcom/android/systemui/quicksettings/RingerModeTile$Ringer;->this$0:Lcom/android/systemui/quicksettings/RingerModeTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 183
    iput-boolean p3, p0, Lcom/android/systemui/quicksettings/RingerModeTile$Ringer;->mVibrateWhenRinging:Z

    .line 184
    iput p2, p0, Lcom/android/systemui/quicksettings/RingerModeTile$Ringer;->mRingerMode:I

    .line 185
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "o"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 203
    if-nez p1, :cond_1

    .line 213
    :cond_0
    :goto_0
    return v2

    .line 206
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-ne v3, v4, :cond_0

    move-object v0, p1

    .line 209
    check-cast v0, Lcom/android/systemui/quicksettings/RingerModeTile$Ringer;

    .line 210
    .local v0, r:Lcom/android/systemui/quicksettings/RingerModeTile$Ringer;
    iget v3, p0, Lcom/android/systemui/quicksettings/RingerModeTile$Ringer;->mRingerMode:I

    if-eqz v3, :cond_2

    iget v3, p0, Lcom/android/systemui/quicksettings/RingerModeTile$Ringer;->mRingerMode:I

    if-ne v3, v1, :cond_3

    :cond_2
    iget v3, v0, Lcom/android/systemui/quicksettings/RingerModeTile$Ringer;->mRingerMode:I

    iget v4, p0, Lcom/android/systemui/quicksettings/RingerModeTile$Ringer;->mRingerMode:I

    if-ne v3, v4, :cond_3

    move v2, v1

    .line 212
    goto :goto_0

    .line 213
    :cond_3
    iget-boolean v3, v0, Lcom/android/systemui/quicksettings/RingerModeTile$Ringer;->mVibrateWhenRinging:Z

    iget-boolean v4, p0, Lcom/android/systemui/quicksettings/RingerModeTile$Ringer;->mVibrateWhenRinging:Z

    if-ne v3, v4, :cond_4

    iget v3, v0, Lcom/android/systemui/quicksettings/RingerModeTile$Ringer;->mRingerMode:I

    iget v4, p0, Lcom/android/systemui/quicksettings/RingerModeTile$Ringer;->mRingerMode:I

    if-ne v3, v4, :cond_4

    :goto_1
    move v2, v1

    goto :goto_0

    :cond_4
    move v1, v2

    goto :goto_1
.end method

.method execute(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 189
    iget-boolean v2, p0, Lcom/android/systemui/quicksettings/RingerModeTile$Ringer;->mVibrateWhenRinging:Z

    if-eqz v2, :cond_0

    .line 190
    iget-object v2, p0, Lcom/android/systemui/quicksettings/RingerModeTile$Ringer;->this$0:Lcom/android/systemui/quicksettings/RingerModeTile;

    iget-object v2, v2, Lcom/android/systemui/quicksettings/RingerModeTile;->mContext:Landroid/content/Context;

    const-string v3, "vibrator"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Vibrator;

    .line 191
    .local v1, vibrator:Landroid/os/Vibrator;
    const-wide/16 v2, 0xfa

    invoke-virtual {v1, v2, v3}, Landroid/os/Vibrator;->vibrate(J)V

    .line 195
    .end local v1           #vibrator:Landroid/os/Vibrator;
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 196
    .local v0, resolver:Landroid/content/ContentResolver;
    const-string v3, "vibrate_when_ringing"

    iget-boolean v2, p0, Lcom/android/systemui/quicksettings/RingerModeTile$Ringer;->mVibrateWhenRinging:Z

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    :goto_0
    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 198
    iget-object v2, p0, Lcom/android/systemui/quicksettings/RingerModeTile$Ringer;->this$0:Lcom/android/systemui/quicksettings/RingerModeTile;

    #getter for: Lcom/android/systemui/quicksettings/RingerModeTile;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v2}, Lcom/android/systemui/quicksettings/RingerModeTile;->access$000(Lcom/android/systemui/quicksettings/RingerModeTile;)Landroid/media/AudioManager;

    move-result-object v2

    iget v3, p0, Lcom/android/systemui/quicksettings/RingerModeTile$Ringer;->mRingerMode:I

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 199
    return-void

    .line 196
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method
