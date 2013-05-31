.class public Lcom/android/systemui/quicksettings/FChargeTile;
.super Lcom/android/systemui/quicksettings/QuickSettingsTile;
.source "FChargeTile.java"


# instance fields
.field protected enabled:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/QuickSettingsController;Landroid/os/Handler;)V
    .locals 1
    .parameter "context"
    .parameter "qsc"
    .parameter "handler"

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/quicksettings/QuickSettingsTile;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/QuickSettingsController;)V

    .line 47
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/quicksettings/FChargeTile;->enabled:Z

    .line 53
    invoke-direct {p0}, Lcom/android/systemui/quicksettings/FChargeTile;->updateTileState()V

    .line 55
    new-instance v0, Lcom/android/systemui/quicksettings/FChargeTile$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/quicksettings/FChargeTile$1;-><init>(Lcom/android/systemui/quicksettings/FChargeTile;)V

    iput-object v0, p0, Lcom/android/systemui/quicksettings/FChargeTile;->mOnClick:Landroid/view/View$OnClickListener;

    .line 75
    new-instance v0, Lcom/android/systemui/quicksettings/FChargeTile$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/quicksettings/FChargeTile$2;-><init>(Lcom/android/systemui/quicksettings/FChargeTile;)V

    iput-object v0, p0, Lcom/android/systemui/quicksettings/FChargeTile;->mOnLongClick:Landroid/view/View$OnLongClickListener;

    .line 82
    const-string v0, "fcharge_enabled"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p2, v0, p0}, Lcom/android/systemui/statusbar/phone/QuickSettingsController;->registerObservedContent(Landroid/net/Uri;Lcom/android/systemui/quicksettings/QuickSettingsTile;)V

    .line 83
    return-void
.end method

.method private updateTileState()V
    .locals 4

    .prologue
    .line 103
    iget-object v1, p0, Lcom/android/systemui/quicksettings/FChargeTile;->mContext:Landroid/content/Context;

    const/high16 v2, 0x7f0a

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 105
    .local v0, label:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/systemui/quicksettings/FChargeTile;->isFastChargeOn()Z

    move-result v1

    if-nez v1, :cond_0

    .line 106
    const v1, 0x7f020072

    iput v1, p0, Lcom/android/systemui/quicksettings/FChargeTile;->mDrawable:I

    .line 107
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/quicksettings/FChargeTile;->mContext:Landroid/content/Context;

    const v3, 0x7f0a0013

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/quicksettings/FChargeTile;->mLabel:Ljava/lang/String;

    .line 113
    :goto_0
    return-void

    .line 110
    :cond_0
    const v1, 0x7f020073

    iput v1, p0, Lcom/android/systemui/quicksettings/FChargeTile;->mDrawable:I

    .line 111
    iput-object v0, p0, Lcom/android/systemui/quicksettings/FChargeTile;->mLabel:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public isFastChargeOn()Z
    .locals 8

    .prologue
    const/4 v5, 0x0

    .line 88
    :try_start_0
    new-instance v2, Ljava/io/File;

    const-string v6, "/sys/kernel/fast_charge"

    const-string v7, "force_fast_charge"

    invoke-direct {v2, v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    .local v2, fastcharge:Ljava/io/File;
    new-instance v4, Ljava/io/FileReader;

    invoke-direct {v4, v2}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    .line 90
    .local v4, reader:Ljava/io/FileReader;
    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 91
    .local v0, breader:Ljava/io/BufferedReader;
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .line 92
    .local v3, line:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 93
    const-string v6, "1"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    .line 98
    .end local v0           #breader:Ljava/io/BufferedReader;
    .end local v2           #fastcharge:Ljava/io/File;
    .end local v3           #line:Ljava/lang/String;
    .end local v4           #reader:Ljava/io/FileReader;
    :goto_0
    return v5

    .line 94
    :catch_0
    move-exception v1

    .line 95
    .local v1, e:Ljava/io/IOException;
    const-string v6, "FChargeToggle"

    const-string v7, "Couldn\'t read fast_charge file"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    iget-object v6, p0, Lcom/android/systemui/quicksettings/FChargeTile;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "fcharge_enabled"

    invoke-static {v6, v7, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method

.method public onChangeUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V
    .locals 0
    .parameter "resolver"
    .parameter "uri"

    .prologue
    .line 117
    invoke-direct {p0}, Lcom/android/systemui/quicksettings/FChargeTile;->updateTileState()V

    .line 118
    invoke-virtual {p0}, Lcom/android/systemui/quicksettings/FChargeTile;->updateQuickSettings()V

    .line 119
    return-void
.end method
