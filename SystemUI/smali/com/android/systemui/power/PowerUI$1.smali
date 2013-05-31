.class Lcom/android/systemui/power/PowerUI$1;
.super Landroid/content/BroadcastReceiver;
.source "PowerUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/power/PowerUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/power/PowerUI;


# direct methods
.method constructor <init>(Lcom/android/systemui/power/PowerUI;)V
    .locals 0
    .parameter

    .prologue
    .line 113
    iput-object p1, p0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 116
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 117
    .local v0, action:Ljava/lang/String;
    const-string v10, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_c

    .line 118
    iget-object v10, p0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    iget v3, v10, Lcom/android/systemui/power/PowerUI;->mBatteryLevel:I

    .line 119
    .local v3, oldBatteryLevel:I
    iget-object v10, p0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    const-string v11, "level"

    const/16 v12, 0x64

    invoke-virtual {p2, v11, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v11

    iput v11, v10, Lcom/android/systemui/power/PowerUI;->mBatteryLevel:I

    .line 120
    iget-object v10, p0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    iget v4, v10, Lcom/android/systemui/power/PowerUI;->mBatteryStatus:I

    .line 121
    .local v4, oldBatteryStatus:I
    iget-object v10, p0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    const-string v11, "status"

    const/4 v12, 0x1

    invoke-virtual {p2, v11, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v11

    iput v11, v10, Lcom/android/systemui/power/PowerUI;->mBatteryStatus:I

    .line 123
    iget-object v10, p0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    iget v7, v10, Lcom/android/systemui/power/PowerUI;->mPlugType:I

    .line 124
    .local v7, oldPlugType:I
    iget-object v10, p0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    const-string v11, "plugged"

    const/4 v12, 0x1

    invoke-virtual {p2, v11, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v11

    iput v11, v10, Lcom/android/systemui/power/PowerUI;->mPlugType:I

    .line 125
    iget-object v10, p0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    iget v6, v10, Lcom/android/systemui/power/PowerUI;->mInvalidCharger:I

    .line 126
    .local v6, oldInvalidCharger:I
    iget-object v10, p0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    const-string v11, "invalid_charger"

    const/4 v12, 0x0

    invoke-virtual {p2, v11, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v11

    iput v11, v10, Lcom/android/systemui/power/PowerUI;->mInvalidCharger:I

    .line 128
    iget-object v10, p0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    iget v10, v10, Lcom/android/systemui/power/PowerUI;->mPlugType:I

    if-eqz v10, :cond_2

    const/4 v9, 0x1

    .line 129
    .local v9, plugged:Z
    :goto_0
    if-eqz v7, :cond_3

    const/4 v8, 0x1

    .line 131
    .local v8, oldPlugged:Z
    :goto_1
    iget-object v10, p0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    iget-boolean v10, v10, Lcom/android/systemui/power/PowerUI;->mIgnoreFirstPowerEvent:Z

    if-eqz v10, :cond_0

    if-eqz v9, :cond_0

    .line 132
    iget-object v10, p0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    const/4 v11, 0x0

    iput-boolean v11, v10, Lcom/android/systemui/power/PowerUI;->mIgnoreFirstPowerEvent:Z

    .line 135
    :cond_0
    iget-object v10, p0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    #calls: Lcom/android/systemui/power/PowerUI;->findBatteryLevelBucket(I)I
    invoke-static {v10, v3}, Lcom/android/systemui/power/PowerUI;->access$000(Lcom/android/systemui/power/PowerUI;I)I

    move-result v5

    .line 136
    .local v5, oldBucket:I
    iget-object v10, p0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    iget-object v11, p0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    iget v11, v11, Lcom/android/systemui/power/PowerUI;->mBatteryLevel:I

    #calls: Lcom/android/systemui/power/PowerUI;->findBatteryLevelBucket(I)I
    invoke-static {v10, v11}, Lcom/android/systemui/power/PowerUI;->access$000(Lcom/android/systemui/power/PowerUI;I)I

    move-result v1

    .line 150
    .local v1, bucket:I
    if-nez v6, :cond_4

    iget-object v10, p0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    iget v10, v10, Lcom/android/systemui/power/PowerUI;->mInvalidCharger:I

    if-eqz v10, :cond_4

    .line 151
    const-string v10, "PowerUI"

    const-string v11, "showing invalid charger warning"

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    iget-object v10, p0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-virtual {v10}, Lcom/android/systemui/power/PowerUI;->showInvalidChargerDialog()V

    .line 191
    .end local v1           #bucket:I
    .end local v3           #oldBatteryLevel:I
    .end local v4           #oldBatteryStatus:I
    .end local v5           #oldBucket:I
    .end local v6           #oldInvalidCharger:I
    .end local v7           #oldPlugType:I
    .end local v8           #oldPlugged:Z
    .end local v9           #plugged:Z
    :cond_1
    :goto_2
    return-void

    .line 128
    .restart local v3       #oldBatteryLevel:I
    .restart local v4       #oldBatteryStatus:I
    .restart local v6       #oldInvalidCharger:I
    .restart local v7       #oldPlugType:I
    :cond_2
    const/4 v9, 0x0

    goto :goto_0

    .line 129
    .restart local v9       #plugged:Z
    :cond_3
    const/4 v8, 0x0

    goto :goto_1

    .line 154
    .restart local v1       #bucket:I
    .restart local v5       #oldBucket:I
    .restart local v8       #oldPlugged:Z
    :cond_4
    if-eqz v6, :cond_8

    iget-object v10, p0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    iget v10, v10, Lcom/android/systemui/power/PowerUI;->mInvalidCharger:I

    if-nez v10, :cond_8

    .line 155
    iget-object v10, p0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-virtual {v10}, Lcom/android/systemui/power/PowerUI;->dismissInvalidChargerDialog()V

    .line 161
    :cond_5
    if-nez v9, :cond_9

    if-lt v1, v5, :cond_6

    if-eqz v8, :cond_9

    :cond_6
    iget-object v10, p0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    iget v10, v10, Lcom/android/systemui/power/PowerUI;->mBatteryStatus:I

    const/4 v11, 0x1

    if-eq v10, v11, :cond_9

    if-gez v1, :cond_9

    .line 165
    iget-object v10, p0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-virtual {v10}, Lcom/android/systemui/power/PowerUI;->showLowBatteryWarning()V

    .line 168
    if-ne v1, v5, :cond_7

    if-eqz v8, :cond_1

    .line 169
    :cond_7
    iget-object v10, p0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-virtual {v10}, Lcom/android/systemui/power/PowerUI;->playLowBatterySound()V

    goto :goto_2

    .line 156
    :cond_8
    iget-object v10, p0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    iget-object v10, v10, Lcom/android/systemui/power/PowerUI;->mInvalidChargerDialog:Landroid/app/AlertDialog;

    if-eqz v10, :cond_5

    goto :goto_2

    .line 171
    :cond_9
    if-nez v9, :cond_a

    if-le v1, v5, :cond_b

    if-lez v1, :cond_b

    .line 172
    :cond_a
    iget-object v10, p0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-virtual {v10}, Lcom/android/systemui/power/PowerUI;->dismissLowBatteryWarning()V

    goto :goto_2

    .line 173
    :cond_b
    iget-object v10, p0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    iget-object v10, v10, Lcom/android/systemui/power/PowerUI;->mBatteryLevelTextView:Landroid/widget/TextView;

    if-eqz v10, :cond_1

    .line 174
    iget-object v10, p0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-virtual {v10}, Lcom/android/systemui/power/PowerUI;->showLowBatteryWarning()V

    goto :goto_2

    .line 176
    .end local v1           #bucket:I
    .end local v3           #oldBatteryLevel:I
    .end local v4           #oldBatteryStatus:I
    .end local v5           #oldBucket:I
    .end local v6           #oldInvalidCharger:I
    .end local v7           #oldPlugType:I
    .end local v8           #oldPlugged:Z
    .end local v9           #plugged:Z
    :cond_c
    const-string v10, "android.intent.action.ACTION_POWER_CONNECTED"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_d

    const-string v10, "android.intent.action.ACTION_POWER_DISCONNECTED"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_f

    .line 178
    :cond_d
    iget-object v10, p0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    iget-object v10, v10, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 180
    .local v2, cr:Landroid/content/ContentResolver;
    iget-object v10, p0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    iget-boolean v10, v10, Lcom/android/systemui/power/PowerUI;->mIgnoreFirstPowerEvent:Z

    if-eqz v10, :cond_e

    .line 181
    iget-object v10, p0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    const/4 v11, 0x0

    iput-boolean v11, v10, Lcom/android/systemui/power/PowerUI;->mIgnoreFirstPowerEvent:Z

    goto :goto_2

    .line 183
    :cond_e
    const-string v10, "power_notifications_enabled"

    const/4 v11, 0x0

    invoke-static {v2, v10, v11}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_1

    .line 185
    iget-object v10, p0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-virtual {v10}, Lcom/android/systemui/power/PowerUI;->playPowerNotificationSound()V

    goto/16 :goto_2

    .line 189
    .end local v2           #cr:Landroid/content/ContentResolver;
    :cond_f
    const-string v10, "PowerUI"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "unknown intent: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2
.end method
