.class public Lcom/android/systemui/statusbar/policy/BatteryController;
.super Landroid/content/BroadcastReceiver;
.source "BatteryController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;,
        Lcom/android/systemui/statusbar/policy/BatteryController$SettingsObserver;
    }
.end annotation


# instance fields
.field private mBatteryPlugged:Z

.field private mBatteryStatus:I

.field private mBatteryStyle:I

.field private mChangeCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field mHandler:Landroid/os/Handler;

.field private mIconViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private mLabelViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field

.field private final mUiController:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 92
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/policy/BatteryController;-><init>(Landroid/content/Context;Z)V

    .line 93
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 3
    .parameter "context"
    .parameter "ui"

    .prologue
    .line 95
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 40
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mIconViews:Ljava/util/ArrayList;

    .line 41
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mLabelViews:Ljava/util/ArrayList;

    .line 60
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mBatteryPlugged:Z

    .line 61
    const/4 v2, 0x1

    iput v2, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mBatteryStatus:I

    .line 84
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mChangeCallbacks:Ljava/util/ArrayList;

    .line 96
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mContext:Landroid/content/Context;

    .line 97
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mHandler:Landroid/os/Handler;

    .line 98
    iput-boolean p2, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mUiController:Z

    .line 100
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mUiController:Z

    if-eqz v2, :cond_0

    .line 101
    new-instance v1, Lcom/android/systemui/statusbar/policy/BatteryController$SettingsObserver;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/statusbar/policy/BatteryController$SettingsObserver;-><init>(Lcom/android/systemui/statusbar/policy/BatteryController;Landroid/os/Handler;)V

    .line 102
    .local v1, settingsObserver:Lcom/android/systemui/statusbar/policy/BatteryController$SettingsObserver;
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/BatteryController$SettingsObserver;->observe()V

    .line 103
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/BatteryController;->updateSettings()V

    .line 106
    .end local v1           #settingsObserver:Lcom/android/systemui/statusbar/policy/BatteryController$SettingsObserver;
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 107
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 108
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mContext:Landroid/content/Context;

    invoke-virtual {v2, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 109
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/policy/BatteryController;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/policy/BatteryController;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/BatteryController;->updateSettings()V

    return-void
.end method

.method private updateSettings()V
    .locals 3

    .prologue
    .line 246
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 247
    .local v0, resolver:Landroid/content/ContentResolver;
    const-string v1, "status_bar_battery"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mBatteryStyle:I

    .line 249
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/BatteryController;->updateBattery()V

    .line 250
    return-void
.end method


# virtual methods
.method public addIconView(Landroid/widget/ImageView;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mIconViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 113
    return-void
.end method

.method public addLabelView(Landroid/widget/TextView;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mLabelViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 117
    return-void
.end method

.method public addStateChangedCallback(Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;)V
    .locals 1
    .parameter "cb"

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mChangeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 121
    return-void
.end method

.method protected getBatteryStatus()I
    .locals 1

    .prologue
    .line 149
    iget v0, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mBatteryStatus:I

    return v0
.end method

.method public getIconStyleCharge()I
    .locals 1

    .prologue
    .line 135
    const v0, 0x7f020181

    return v0
.end method

.method public getIconStyleChargeMin()I
    .locals 1

    .prologue
    .line 141
    const v0, 0x7f02018a

    return v0
.end method

.method public getIconStyleNormal()I
    .locals 1

    .prologue
    .line 132
    const v0, 0x7f020178

    return v0
.end method

.method public getIconStyleNormalMin()I
    .locals 1

    .prologue
    .line 138
    const v0, 0x7f020193

    return v0
.end method

.method public getIconStyleUnknown()I
    .locals 1

    .prologue
    .line 129
    const v0, 0x7f020178

    return v0
.end method

.method protected isBatteryPresent()Z
    .locals 1

    .prologue
    .line 158
    const/4 v0, 0x1

    return v0
.end method

.method protected isBatteryStatusCharging()Z
    .locals 2

    .prologue
    .line 166
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/BatteryController;->getBatteryStatus()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isBatteryStatusUnknown()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 162
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/BatteryController;->getBatteryStatus()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isUiController()Z
    .locals 1

    .prologue
    .line 170
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mUiController:Z

    return v0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 174
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 175
    .local v0, action:Ljava/lang/String;
    const-string v4, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 176
    const-string v4, "level"

    invoke-virtual {p2, v4, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 177
    .local v1, level:I
    const-string v4, "plugged"

    invoke-virtual {p2, v4, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_0

    move v2, v3

    :cond_0
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mBatteryPlugged:Z

    .line 178
    const-string v2, "status"

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mBatteryStatus:I

    .line 180
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/policy/BatteryController;->updateViews(I)V

    .line 181
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mUiController:Z

    if-eqz v2, :cond_1

    .line 182
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/BatteryController;->updateBattery()V

    .line 185
    .end local v1           #level:I
    :cond_1
    return-void
.end method

.method public removeStateChangedCallback(Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;)V
    .locals 1
    .parameter "cb"

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mChangeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 125
    return-void
.end method

.method protected updateBattery()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 210
    const/16 v2, 0x8

    .line 211
    .local v2, mIcon:I
    const/16 v4, 0x8

    .line 212
    .local v4, mText:I
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/BatteryController;->getIconStyleNormal()I

    move-result v3

    .line 214
    .local v3, mIconStyle:I
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/BatteryController;->isBatteryPresent()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 215
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/BatteryController;->isBatteryStatusUnknown()Z

    move-result v6

    if-eqz v6, :cond_2

    iget v6, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mBatteryStyle:I

    if-eqz v6, :cond_0

    iget v6, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mBatteryStyle:I

    if-ne v6, v7, :cond_2

    .line 218
    :cond_0
    const/4 v2, 0x0

    .line 219
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/BatteryController;->getIconStyleUnknown()I

    move-result v3

    .line 232
    :cond_1
    :goto_0
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mIconViews:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 233
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v0, :cond_6

    .line 234
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mIconViews:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 235
    .local v5, v:Landroid/widget/ImageView;
    invoke-virtual {v5, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 236
    invoke-virtual {v5, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 233
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 220
    .end local v0           #N:I
    .end local v1           #i:I
    .end local v5           #v:Landroid/widget/ImageView;
    :cond_2
    iget v6, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mBatteryStyle:I

    if-nez v6, :cond_4

    .line 221
    const/4 v2, 0x0

    .line 222
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/BatteryController;->isBatteryStatusCharging()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/BatteryController;->getIconStyleCharge()I

    move-result v3

    :goto_2
    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/BatteryController;->getIconStyleNormal()I

    move-result v3

    goto :goto_2

    .line 224
    :cond_4
    iget v6, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mBatteryStyle:I

    if-ne v6, v7, :cond_1

    .line 225
    const/4 v2, 0x0

    .line 226
    const/4 v4, 0x0

    .line 227
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/BatteryController;->isBatteryStatusCharging()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/BatteryController;->getIconStyleChargeMin()I

    move-result v3

    :goto_3
    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/BatteryController;->getIconStyleNormalMin()I

    move-result v3

    goto :goto_3

    .line 238
    .restart local v0       #N:I
    .restart local v1       #i:I
    :cond_6
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mLabelViews:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 239
    const/4 v1, 0x0

    :goto_4
    if-ge v1, v0, :cond_7

    .line 240
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mLabelViews:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 241
    .local v5, v:Landroid/widget/TextView;
    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 239
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 243
    .end local v5           #v:Landroid/widget/TextView;
    :cond_7
    return-void
.end method

.method protected updateViews(I)V
    .locals 11
    .parameter "level"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 188
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mUiController:Z

    if-eqz v5, :cond_1

    .line 189
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mIconViews:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 190
    .local v0, N:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 191
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mIconViews:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 192
    .local v4, v:Landroid/widget/ImageView;
    invoke-virtual {v4, p1}, Landroid/widget/ImageView;->setImageLevel(I)V

    .line 193
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mContext:Landroid/content/Context;

    const v6, 0x7f0a003c

    new-array v7, v10, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 190
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 196
    .end local v4           #v:Landroid/widget/ImageView;
    :cond_0
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mLabelViews:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 197
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v0, :cond_1

    .line 198
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mLabelViews:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 199
    .local v4, v:Landroid/widget/TextView;
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mContext:Landroid/content/Context;

    const v6, 0x7f0a002c

    new-array v7, v10, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 197
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 204
    .end local v0           #N:I
    .end local v2           #i:I
    .end local v4           #v:Landroid/widget/TextView;
    :cond_1
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mChangeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;

    .line 205
    .local v1, cb:Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/BatteryController;->isBatteryStatusCharging()Z

    move-result v5

    invoke-interface {v1, p1, v5}, Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;->onBatteryLevelChanged(IZ)V

    goto :goto_2

    .line 207
    .end local v1           #cb:Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;
    :cond_2
    return-void
.end method
