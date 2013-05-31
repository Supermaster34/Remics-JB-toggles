.class Lcom/android/systemui/quicksettings/FChargeTile$1;
.super Ljava/lang/Object;
.source "FChargeTile.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/quicksettings/FChargeTile;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/QuickSettingsController;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/quicksettings/FChargeTile;


# direct methods
.method constructor <init>(Lcom/android/systemui/quicksettings/FChargeTile;)V
    .locals 0
    .parameter

    .prologue
    .line 55
    iput-object p1, p0, Lcom/android/systemui/quicksettings/FChargeTile$1;->this$0:Lcom/android/systemui/quicksettings/FChargeTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9
    .parameter "v"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 59
    :try_start_0
    iget-object v7, p0, Lcom/android/systemui/quicksettings/FChargeTile$1;->this$0:Lcom/android/systemui/quicksettings/FChargeTile;

    iget-object v6, p0, Lcom/android/systemui/quicksettings/FChargeTile$1;->this$0:Lcom/android/systemui/quicksettings/FChargeTile;

    invoke-virtual {v6}, Lcom/android/systemui/quicksettings/FChargeTile;->isFastChargeOn()Z

    move-result v6

    if-nez v6, :cond_0

    move v6, v4

    :goto_0
    iput-boolean v6, v7, Lcom/android/systemui/quicksettings/FChargeTile;->enabled:Z

    .line 60
    new-instance v2, Ljava/io/File;

    const-string v6, "/sys/kernel/fast_charge"

    const-string v7, "force_fast_charge"

    invoke-direct {v2, v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    .local v2, fastcharge:Ljava/io/File;
    new-instance v3, Ljava/io/FileWriter;

    invoke-direct {v3, v2}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    .line 62
    .local v3, fwriter:Ljava/io/FileWriter;
    new-instance v0, Ljava/io/BufferedWriter;

    invoke-direct {v0, v3}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 63
    .local v0, bwriter:Ljava/io/BufferedWriter;
    iget-object v6, p0, Lcom/android/systemui/quicksettings/FChargeTile$1;->this$0:Lcom/android/systemui/quicksettings/FChargeTile;

    iget-boolean v6, v6, Lcom/android/systemui/quicksettings/FChargeTile;->enabled:Z

    if-eqz v6, :cond_1

    const-string v6, "1"

    :goto_1
    invoke-virtual {v0, v6}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 64
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V

    .line 65
    iget-object v6, p0, Lcom/android/systemui/quicksettings/FChargeTile$1;->this$0:Lcom/android/systemui/quicksettings/FChargeTile;

    iget-object v6, v6, Lcom/android/systemui/quicksettings/FChargeTile;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "fcharge_enabled"

    iget-object v8, p0, Lcom/android/systemui/quicksettings/FChargeTile$1;->this$0:Lcom/android/systemui/quicksettings/FChargeTile;

    iget-boolean v8, v8, Lcom/android/systemui/quicksettings/FChargeTile;->enabled:Z

    if-eqz v8, :cond_2

    :goto_2
    invoke-static {v6, v7, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 72
    .end local v0           #bwriter:Ljava/io/BufferedWriter;
    .end local v2           #fastcharge:Ljava/io/File;
    .end local v3           #fwriter:Ljava/io/FileWriter;
    :goto_3
    return-void

    :cond_0
    move v6, v5

    .line 59
    goto :goto_0

    .line 63
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

    .line 65
    goto :goto_2

    .line 67
    .end local v0           #bwriter:Ljava/io/BufferedWriter;
    .end local v2           #fastcharge:Ljava/io/File;
    .end local v3           #fwriter:Ljava/io/FileWriter;
    :catch_0
    move-exception v1

    .line 68
    .local v1, e:Ljava/io/IOException;
    const-string v4, "FChargeToggle"

    const-string v6, "Couldn\'t write fast_charge file"

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    iget-object v4, p0, Lcom/android/systemui/quicksettings/FChargeTile$1;->this$0:Lcom/android/systemui/quicksettings/FChargeTile;

    iget-object v4, v4, Lcom/android/systemui/quicksettings/FChargeTile;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v6, "fcharge_enabled"

    invoke-static {v4, v6, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_3
.end method
