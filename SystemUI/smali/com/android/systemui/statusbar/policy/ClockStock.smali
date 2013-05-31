.class public Lcom/android/systemui/statusbar/policy/ClockStock;
.super Landroid/widget/TextView;
.source "ClockStock.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field private mAttached:Z

.field private mCalendar:Ljava/util/Calendar;

.field private mClockFormat:Ljava/text/SimpleDateFormat;

.field private mClockFormatString:Ljava/lang/String;

.field private final mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mLocale:Ljava/util/Locale;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 72
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/policy/ClockStock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 73
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 76
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/policy/ClockStock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 77
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 80
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 120
    new-instance v0, Lcom/android/systemui/statusbar/policy/ClockStock$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/ClockStock$1;-><init>(Lcom/android/systemui/statusbar/policy/ClockStock;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/ClockStock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 81
    invoke-virtual {p0, p0}, Lcom/android/systemui/statusbar/policy/ClockStock;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    invoke-virtual {p0, p0}, Lcom/android/systemui/statusbar/policy/ClockStock;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 83
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/policy/ClockStock;)Ljava/util/Calendar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ClockStock;->mCalendar:Ljava/util/Calendar;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/systemui/statusbar/policy/ClockStock;Ljava/util/Calendar;)Ljava/util/Calendar;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/ClockStock;->mCalendar:Ljava/util/Calendar;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/policy/ClockStock;)Ljava/text/SimpleDateFormat;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ClockStock;->mClockFormat:Ljava/text/SimpleDateFormat;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/policy/ClockStock;)Ljava/util/Locale;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ClockStock;->mLocale:Ljava/util/Locale;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/systemui/statusbar/policy/ClockStock;Ljava/util/Locale;)Ljava/util/Locale;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/ClockStock;->mLocale:Ljava/util/Locale;

    return-object p1
.end method

.method static synthetic access$302(Lcom/android/systemui/statusbar/policy/ClockStock;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/ClockStock;->mClockFormatString:Ljava/lang/String;

    return-object p1
.end method

.method private collapseStartActivity(Landroid/content/Intent;)V
    .locals 3
    .parameter "what"

    .prologue
    .line 225
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/ClockStock;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "statusbar"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    .line 227
    .local v0, statusBarManager:Landroid/app/StatusBarManager;
    invoke-virtual {v0}, Landroid/app/StatusBarManager;->collapsePanels()V

    .line 231
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IActivityManager;->dismissKeyguardOnNextActivity()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 237
    :goto_0
    const/high16 v1, 0x1000

    invoke-virtual {p1, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 238
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/ClockStock;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 239
    return-void

    .line 232
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private final getSmallTime()Ljava/lang/CharSequence;
    .locals 20

    .prologue
    .line 147
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/ClockStock;->getContext()Landroid/content/Context;

    move-result-object v8

    .line 148
    .local v8, context:Landroid/content/Context;
    invoke-static {v8}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v6

    .line 151
    .local v6, b24:Z
    if-eqz v6, :cond_2

    .line 152
    const v15, 0x1040019

    .line 157
    .local v15, res:I
    :goto_0
    const v2, 0xef00

    .line 158
    .local v2, MAGIC1:C
    const v3, 0xef01

    .line 161
    .local v3, MAGIC2:C
    invoke-virtual {v8, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 162
    .local v9, format:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/ClockStock;->mClockFormatString:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_7

    .line 169
    const/4 v4, -0x1

    .line 170
    .local v4, a:I
    const/4 v14, 0x0

    .line 171
    .local v14, quoted:Z
    const/4 v11, 0x0

    .local v11, i:I
    :goto_1
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v18

    move/from16 v0, v18

    if-ge v11, v0, :cond_1

    .line 172
    invoke-virtual {v9, v11}, Ljava/lang/String;->charAt(I)C

    move-result v7

    .line 174
    .local v7, c:C
    const/16 v18, 0x27

    move/from16 v0, v18

    if-ne v7, v0, :cond_0

    .line 175
    if-nez v14, :cond_3

    const/4 v14, 0x1

    .line 177
    :cond_0
    :goto_2
    if-nez v14, :cond_4

    const/16 v18, 0x61

    move/from16 v0, v18

    if-ne v7, v0, :cond_4

    .line 178
    move v4, v11

    .line 183
    .end local v7           #c:C
    :cond_1
    if-ltz v4, :cond_6

    .line 185
    move v5, v4

    .line 186
    .local v5, b:I
    :goto_3
    if-lez v4, :cond_5

    add-int/lit8 v18, v4, -0x1

    move/from16 v0, v18

    invoke-virtual {v9, v0}, Ljava/lang/String;->charAt(I)C

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v18

    if-eqz v18, :cond_5

    .line 187
    add-int/lit8 v4, v4, -0x1

    goto :goto_3

    .line 154
    .end local v2           #MAGIC1:C
    .end local v3           #MAGIC2:C
    .end local v4           #a:I
    .end local v5           #b:I
    .end local v9           #format:Ljava/lang/String;
    .end local v11           #i:I
    .end local v14           #quoted:Z
    .end local v15           #res:I
    :cond_2
    const v15, 0x1040018

    .restart local v15       #res:I
    goto :goto_0

    .line 175
    .restart local v2       #MAGIC1:C
    .restart local v3       #MAGIC2:C
    .restart local v4       #a:I
    .restart local v7       #c:C
    .restart local v9       #format:Ljava/lang/String;
    .restart local v11       #i:I
    .restart local v14       #quoted:Z
    :cond_3
    const/4 v14, 0x0

    goto :goto_2

    .line 171
    :cond_4
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 189
    .end local v7           #c:C
    .restart local v5       #b:I
    :cond_5
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v9, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const v19, 0xef00

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v9, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "a"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const v19, 0xef01

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v18

    add-int/lit8 v19, v5, 0x1

    move/from16 v0, v19

    invoke-virtual {v9, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 194
    .end local v5           #b:I
    :cond_6
    new-instance v17, Ljava/text/SimpleDateFormat;

    move-object/from16 v0, v17

    invoke-direct {v0, v9}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .local v17, sdf:Ljava/text/SimpleDateFormat;
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/policy/ClockStock;->mClockFormat:Ljava/text/SimpleDateFormat;

    .line 195
    move-object/from16 v0, p0

    iput-object v9, v0, Lcom/android/systemui/statusbar/policy/ClockStock;->mClockFormatString:Ljava/lang/String;

    .line 199
    .end local v4           #a:I
    .end local v11           #i:I
    .end local v14           #quoted:Z
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/ClockStock;->mCalendar:Ljava/util/Calendar;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v16

    .line 202
    .local v16, result:Ljava/lang/String;
    const v18, 0xef00

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v12

    .line 203
    .local v12, magic1:I
    const v18, 0xef01

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v13

    .line 204
    .local v13, magic2:I
    if-ltz v12, :cond_8

    if-le v13, v12, :cond_8

    .line 205
    new-instance v10, Landroid/text/SpannableStringBuilder;

    move-object/from16 v0, v16

    invoke-direct {v10, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 207
    .local v10, formatted:Landroid/text/SpannableStringBuilder;
    add-int/lit8 v18, v13, 0x1

    move/from16 v0, v18

    invoke-virtual {v10, v12, v0}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    .line 220
    .end local v10           #formatted:Landroid/text/SpannableStringBuilder;
    :goto_5
    return-object v10

    .line 197
    .end local v12           #magic1:I
    .end local v13           #magic2:I
    .end local v16           #result:Ljava/lang/String;
    .end local v17           #sdf:Ljava/text/SimpleDateFormat;
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/ClockStock;->mClockFormat:Ljava/text/SimpleDateFormat;

    move-object/from16 v17, v0

    .restart local v17       #sdf:Ljava/text/SimpleDateFormat;
    goto :goto_4

    .restart local v12       #magic1:I
    .restart local v13       #magic2:I
    .restart local v16       #result:Ljava/lang/String;
    :cond_8
    move-object/from16 v10, v16

    .line 220
    goto :goto_5
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 5

    .prologue
    .line 87
    invoke-super {p0}, Landroid/widget/TextView;->onAttachedToWindow()V

    .line 89
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/ClockStock;->mAttached:Z

    if-nez v1, :cond_0

    .line 90
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/ClockStock;->mAttached:Z

    .line 91
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 93
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.TIME_TICK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 94
    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 95
    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 96
    const-string v1, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 98
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/ClockStock;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/ClockStock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/ClockStock;->getHandler()Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 105
    .end local v0           #filter:Landroid/content/IntentFilter;
    :cond_0
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/ClockStock;->mCalendar:Ljava/util/Calendar;

    .line 108
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/ClockStock;->updateClock()V

    .line 109
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 244
    new-instance v0, Landroid/content/ComponentName;

    const-string v2, "com.android.deskclock"

    const-string v3, "com.android.deskclock.DeskClock"

    invoke-direct {v0, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    .local v0, clock:Landroid/content/ComponentName;
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "android.intent.category.LAUNCHER"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v1

    .line 248
    .local v1, intent:Landroid/content/Intent;
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/policy/ClockStock;->collapseStartActivity(Landroid/content/Intent;)V

    .line 249
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 113
    invoke-super {p0}, Landroid/widget/TextView;->onDetachedFromWindow()V

    .line 114
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/ClockStock;->mAttached:Z

    if-eqz v0, :cond_0

    .line 115
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/ClockStock;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/ClockStock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 116
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/ClockStock;->mAttached:Z

    .line 118
    :cond_0
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 2
    .parameter "v"

    .prologue
    .line 253
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SET_ALARM"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 254
    .local v0, intent:Landroid/content/Intent;
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/ClockStock;->collapseStartActivity(Landroid/content/Intent;)V

    .line 257
    const/4 v1, 0x1

    return v1
.end method

.method final updateClock()V
    .locals 3

    .prologue
    .line 142
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ClockStock;->mCalendar:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 143
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/ClockStock;->getSmallTime()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/ClockStock;->setText(Ljava/lang/CharSequence;)V

    .line 144
    return-void
.end method
