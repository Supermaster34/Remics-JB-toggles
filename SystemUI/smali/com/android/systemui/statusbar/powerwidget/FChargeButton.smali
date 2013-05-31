.class public Lcom/android/systemui/statusbar/powerwidget/FChargeButton;
.super Lcom/android/systemui/statusbar/powerwidget/PowerButton;
.source "FChargeButton.java"


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
.field protected on:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/powerwidget/FChargeButton;->OBSERVED_URIS:Ljava/util/List;

    .line 50
    sget-object v0, Lcom/android/systemui/statusbar/powerwidget/FChargeButton;->OBSERVED_URIS:Ljava/util/List;

    const-string v1, "fcharge_enabled"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 51
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/android/systemui/statusbar/powerwidget/PowerButton;-><init>()V

    .line 46
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/powerwidget/FChargeButton;->on:Z

    .line 53
    const-string v0, "toggleFCharge"

    iput-object v0, p0, Lcom/android/systemui/statusbar/powerwidget/FChargeButton;->mType:Ljava/lang/String;

    return-void
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
    .line 113
    sget-object v0, Lcom/android/systemui/statusbar/powerwidget/FChargeButton;->OBSERVED_URIS:Ljava/util/List;

    return-object v0
.end method

.method protected handleLongClick(Landroid/content/Context;)Z
    .locals 1
    .parameter "context"

    .prologue
    .line 87
    const/4 v0, 0x0

    return v0
.end method

.method public isFastChargeOn(Landroid/content/Context;)Z
    .locals 8
    .parameter "context"

    .prologue
    const/4 v5, 0x0

    .line 97
    :try_start_0
    new-instance v2, Ljava/io/File;

    const-string v6, "/sys/kernel/fast_charge"

    const-string v7, "force_fast_charge"

    invoke-direct {v2, v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    .local v2, fastcharge:Ljava/io/File;
    new-instance v4, Ljava/io/FileReader;

    invoke-direct {v4, v2}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    .line 99
    .local v4, reader:Ljava/io/FileReader;
    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 100
    .local v0, breader:Ljava/io/BufferedReader;
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .line 101
    .local v3, line:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 102
    const-string v6, "1"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    .line 107
    .end local v0           #breader:Ljava/io/BufferedReader;
    .end local v2           #fastcharge:Ljava/io/File;
    .end local v3           #line:Ljava/lang/String;
    .end local v4           #reader:Ljava/io/FileReader;
    :goto_0
    return v5

    .line 103
    :catch_0
    move-exception v1

    .line 104
    .local v1, e:Ljava/io/IOException;
    const-string v6, "FChargeToggle"

    const-string v7, "Couldn\'t read fast_charge file"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "fcharge_enabled"

    invoke-static {v6, v7, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method

.method protected toggleState(Landroid/content/Context;)V
    .locals 9
    .parameter "context"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 69
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/powerwidget/FChargeButton;->isFastChargeOn(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_0

    move v6, v4

    :goto_0
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/powerwidget/FChargeButton;->on:Z

    .line 70
    new-instance v2, Ljava/io/File;

    const-string v6, "/sys/kernel/fast_charge"

    const-string v7, "force_fast_charge"

    invoke-direct {v2, v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    .local v2, fastcharge:Ljava/io/File;
    new-instance v3, Ljava/io/FileWriter;

    invoke-direct {v3, v2}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    .line 72
    .local v3, fwriter:Ljava/io/FileWriter;
    new-instance v0, Ljava/io/BufferedWriter;

    invoke-direct {v0, v3}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 73
    .local v0, bwriter:Ljava/io/BufferedWriter;
    iget-boolean v6, p0, Lcom/android/systemui/statusbar/powerwidget/FChargeButton;->on:Z

    if-eqz v6, :cond_1

    const-string v6, "1"

    :goto_1
    invoke-virtual {v0, v6}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 74
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V

    .line 75
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "fcharge_enabled"

    iget-boolean v8, p0, Lcom/android/systemui/statusbar/powerwidget/FChargeButton;->on:Z

    if-eqz v8, :cond_2

    :goto_2
    invoke-static {v6, v7, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 83
    .end local v0           #bwriter:Ljava/io/BufferedWriter;
    .end local v2           #fastcharge:Ljava/io/File;
    .end local v3           #fwriter:Ljava/io/FileWriter;
    :goto_3
    return-void

    :cond_0
    move v6, v5

    .line 69
    goto :goto_0

    .line 73
    .restart local v0       #bwriter:Ljava/io/BufferedWriter;
    .restart local v2       #fastcharge:Ljava/io/File;
    .restart local v3       #fwriter:Ljava/io/FileWriter;
    :cond_1
    const-string v6, "0"
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_2
    move v4, v5

    .line 75
    goto :goto_2

    .line 77
    .end local v0           #bwriter:Ljava/io/BufferedWriter;
    .end local v2           #fastcharge:Ljava/io/File;
    .end local v3           #fwriter:Ljava/io/FileWriter;
    :catch_0
    move-exception v1

    .line 78
    .local v1, e:Ljava/io/IOException;
    const-string v4, "FChargeToggle"

    const-string v6, "Couldn\'t write fast_charge file"

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v6, "fcharge_enabled"

    invoke-static {v4, v6, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_3
.end method

.method protected updateState(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 57
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/powerwidget/FChargeButton;->isFastChargeOn(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 58
    const v0, 0x7f020222

    iput v0, p0, Lcom/android/systemui/statusbar/powerwidget/FChargeButton;->mIcon:I

    .line 59
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/systemui/statusbar/powerwidget/FChargeButton;->mState:I

    .line 64
    :goto_0
    return-void

    .line 61
    :cond_0
    const v0, 0x7f020221

    iput v0, p0, Lcom/android/systemui/statusbar/powerwidget/FChargeButton;->mIcon:I

    .line 62
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/systemui/statusbar/powerwidget/FChargeButton;->mState:I

    goto :goto_0
.end method
