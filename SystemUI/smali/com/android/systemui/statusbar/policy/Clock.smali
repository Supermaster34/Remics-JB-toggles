.class public Lcom/android/systemui/statusbar/policy/Clock;
.super Landroid/widget/TextView;
.source "Clock.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/Clock$SettingsObserver;
    }
.end annotation


# instance fields
.field private mAmPmStyle:I

.field protected mAttached:Z

.field protected mCalendar:Ljava/util/Calendar;

.field protected mClockColor:I

.field protected mClockDateDisplay:I

.field protected mClockDateStyle:I

.field protected mClockFormat:Ljava/text/SimpleDateFormat;

.field protected mClockFormatString:Ljava/lang/String;

.field protected mClockStyle:I

.field mHandler:Landroid/os/Handler;

.field private final mIntentReceiver:Landroid/content/BroadcastReceiver;

.field protected mLocale:Ljava/util/Locale;

.field public mShowClock:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 121
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/policy/Clock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 122
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 125
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/policy/Clock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 126
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v1, 0x2

    const/4 v0, 0x0

    .line 129
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 63
    iput v0, p0, Lcom/android/systemui/statusbar/policy/Clock;->mClockDateDisplay:I

    .line 69
    iput v1, p0, Lcom/android/systemui/statusbar/policy/Clock;->mClockDateStyle:I

    .line 74
    iput v0, p0, Lcom/android/systemui/statusbar/policy/Clock;->mClockStyle:I

    .line 76
    const v0, 0x1060012

    iput v0, p0, Lcom/android/systemui/statusbar/policy/Clock;->mClockColor:I

    .line 78
    iput v1, p0, Lcom/android/systemui/statusbar/policy/Clock;->mAmPmStyle:I

    .line 170
    new-instance v0, Lcom/android/systemui/statusbar/policy/Clock$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/Clock$1;-><init>(Lcom/android/systemui/statusbar/policy/Clock;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/Clock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 130
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/policy/Clock;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/Clock;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private final getSmallTime()Ljava/lang/CharSequence;
    .locals 27

    .prologue
    .line 197
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/Clock;->getContext()Landroid/content/Context;

    move-result-object v11

    .line 198
    .local v11, context:Landroid/content/Context;
    invoke-static {v11}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v8

    .line 201
    .local v8, b24:Z
    if-eqz v8, :cond_2

    .line 202
    const v21, 0x1040019

    .line 207
    .local v21, res:I
    :goto_0
    const v4, 0xef00

    .line 208
    .local v4, MAGIC1:C
    const v5, 0xef01

    .line 211
    .local v5, MAGIC2:C
    move/from16 v0, v21

    invoke-virtual {v11, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 212
    .local v14, format:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/Clock;->mClockFormatString:Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_b

    .line 218
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/Clock;->mAmPmStyle:I

    move/from16 v25, v0

    if-eqz v25, :cond_6

    .line 219
    const/4 v6, -0x1

    .line 220
    .local v6, a:I
    const/16 v20, 0x0

    .line 221
    .local v20, quoted:Z
    const/16 v16, 0x0

    .local v16, i:I
    :goto_1
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v25

    move/from16 v0, v16

    move/from16 v1, v25

    if-ge v0, v1, :cond_1

    .line 222
    move/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/String;->charAt(I)C

    move-result v9

    .line 224
    .local v9, c:C
    const/16 v25, 0x27

    move/from16 v0, v25

    if-ne v9, v0, :cond_0

    .line 225
    if-nez v20, :cond_3

    const/16 v20, 0x1

    .line 227
    :cond_0
    :goto_2
    if-nez v20, :cond_4

    const/16 v25, 0x61

    move/from16 v0, v25

    if-ne v9, v0, :cond_4

    .line 228
    move/from16 v6, v16

    .line 233
    .end local v9           #c:C
    :cond_1
    if-ltz v6, :cond_6

    .line 235
    move v7, v6

    .line 236
    .local v7, b:I
    :goto_3
    if-lez v6, :cond_5

    add-int/lit8 v25, v6, -0x1

    move/from16 v0, v25

    invoke-virtual {v14, v0}, Ljava/lang/String;->charAt(I)C

    move-result v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v25

    if-eqz v25, :cond_5

    .line 237
    add-int/lit8 v6, v6, -0x1

    goto :goto_3

    .line 204
    .end local v4           #MAGIC1:C
    .end local v5           #MAGIC2:C
    .end local v6           #a:I
    .end local v7           #b:I
    .end local v14           #format:Ljava/lang/String;
    .end local v16           #i:I
    .end local v20           #quoted:Z
    .end local v21           #res:I
    :cond_2
    const v21, 0x1040018

    .restart local v21       #res:I
    goto :goto_0

    .line 225
    .restart local v4       #MAGIC1:C
    .restart local v5       #MAGIC2:C
    .restart local v6       #a:I
    .restart local v9       #c:C
    .restart local v14       #format:Ljava/lang/String;
    .restart local v16       #i:I
    .restart local v20       #quoted:Z
    :cond_3
    const/16 v20, 0x0

    goto :goto_2

    .line 221
    :cond_4
    add-int/lit8 v16, v16, 0x1

    goto :goto_1

    .line 239
    .end local v9           #c:C
    .restart local v7       #b:I
    :cond_5
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v26, 0x0

    move/from16 v0, v26

    invoke-virtual {v14, v0, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const v26, 0xef00

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual {v14, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "a"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const v26, 0xef01

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v25

    add-int/lit8 v26, v7, 0x1

    move/from16 v0, v26

    invoke-virtual {v14, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 243
    .end local v6           #a:I
    .end local v7           #b:I
    .end local v16           #i:I
    .end local v20           #quoted:Z
    :cond_6
    new-instance v23, Ljava/text/SimpleDateFormat;

    move-object/from16 v0, v23

    invoke-direct {v0, v14}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .local v23, sdf:Ljava/text/SimpleDateFormat;
    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/policy/Clock;->mClockFormat:Ljava/text/SimpleDateFormat;

    .line 244
    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/systemui/statusbar/policy/Clock;->mClockFormatString:Ljava/lang/String;

    .line 249
    :goto_4
    const/4 v12, 0x0

    .line 251
    .local v12, dateString:Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/Clock;->mCalendar:Ljava/util/Calendar;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v25

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v22

    .line 253
    .local v22, result:Ljava/lang/String;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/Clock;->mClockDateDisplay:I

    move/from16 v25, v0

    if-eqz v25, :cond_8

    .line 254
    new-instance v19, Ljava/util/Date;

    invoke-direct/range {v19 .. v19}, Ljava/util/Date;-><init>()V

    .line 256
    .local v19, now:Ljava/util/Date;
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/Clock;->getContext()Landroid/content/Context;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v25

    const-string v26, "statusbar_clock_date_format"

    invoke-static/range {v25 .. v26}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 259
    .local v10, clockDateFormat:Ljava/lang/String;
    if-eqz v10, :cond_7

    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v25

    if-eqz v25, :cond_c

    .line 261
    :cond_7
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "EEE"

    move-object/from16 v0, v26

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 265
    :goto_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/Clock;->mClockDateStyle:I

    move/from16 v25, v0

    const/16 v26, 0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_d

    .line 267
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 275
    .end local v10           #clockDateFormat:Ljava/lang/String;
    .end local v19           #now:Ljava/util/Date;
    :cond_8
    :goto_6
    new-instance v15, Landroid/text/SpannableStringBuilder;

    move-object/from16 v0, v22

    invoke-direct {v15, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 277
    .local v15, formatted:Landroid/text/SpannableStringBuilder;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/Clock;->mAmPmStyle:I

    move/from16 v25, v0

    if-eqz v25, :cond_9

    .line 278
    const v25, 0xef00

    move-object/from16 v0, v22

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v17

    .line 279
    .local v17, magic1:I
    const v25, 0xef01

    move-object/from16 v0, v22

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v18

    .line 280
    .local v18, magic2:I
    if-ltz v17, :cond_9

    move/from16 v0, v18

    move/from16 v1, v17

    if-le v0, v1, :cond_9

    .line 281
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/Clock;->mAmPmStyle:I

    move/from16 v25, v0

    const/16 v26, 0x2

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_f

    .line 282
    add-int/lit8 v25, v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v25

    invoke-virtual {v15, v0, v1}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    .line 294
    .end local v17           #magic1:I
    .end local v18           #magic2:I
    :cond_9
    :goto_7
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/Clock;->mClockDateDisplay:I

    move/from16 v25, v0

    const/16 v26, 0x2

    move/from16 v0, v25

    move/from16 v1, v26

    if-eq v0, v1, :cond_a

    .line 295
    if-eqz v12, :cond_a

    .line 296
    invoke-interface {v12}, Ljava/lang/CharSequence;->length()I

    move-result v13

    .line 297
    .local v13, dateStringLen:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/Clock;->mClockDateDisplay:I

    move/from16 v25, v0

    if-nez v25, :cond_11

    .line 298
    const/16 v25, 0x0

    move/from16 v0, v25

    invoke-virtual {v15, v0, v13}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    .line 308
    .end local v13           #dateStringLen:I
    :cond_a
    :goto_8
    return-object v15

    .line 246
    .end local v12           #dateString:Ljava/lang/CharSequence;
    .end local v15           #formatted:Landroid/text/SpannableStringBuilder;
    .end local v22           #result:Ljava/lang/String;
    .end local v23           #sdf:Ljava/text/SimpleDateFormat;
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/Clock;->mClockFormat:Ljava/text/SimpleDateFormat;

    move-object/from16 v23, v0

    .restart local v23       #sdf:Ljava/text/SimpleDateFormat;
    goto/16 :goto_4

    .line 263
    .restart local v10       #clockDateFormat:Ljava/lang/String;
    .restart local v12       #dateString:Ljava/lang/CharSequence;
    .restart local v19       #now:Ljava/util/Date;
    .restart local v22       #result:Ljava/lang/String;
    :cond_c
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-static {v10, v0}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_5

    .line 268
    :cond_d
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/Clock;->mClockDateStyle:I

    move/from16 v25, v0

    const/16 v26, 0x2

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_e

    .line 269
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    goto/16 :goto_6

    .line 271
    :cond_e
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    goto/16 :goto_6

    .line 284
    .end local v10           #clockDateFormat:Ljava/lang/String;
    .end local v19           #now:Ljava/util/Date;
    .restart local v15       #formatted:Landroid/text/SpannableStringBuilder;
    .restart local v17       #magic1:I
    .restart local v18       #magic2:I
    :cond_f
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/Clock;->mAmPmStyle:I

    move/from16 v25, v0

    const/16 v26, 0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_10

    .line 285
    new-instance v24, Landroid/text/style/RelativeSizeSpan;

    const v25, 0x3f333333

    invoke-direct/range {v24 .. v25}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    .line 286
    .local v24, style:Landroid/text/style/CharacterStyle;
    const/16 v25, 0x22

    move-object/from16 v0, v24

    move/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v25

    invoke-virtual {v15, v0, v1, v2, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 289
    .end local v24           #style:Landroid/text/style/CharacterStyle;
    :cond_10
    add-int/lit8 v25, v18, 0x1

    move/from16 v0, v18

    move/from16 v1, v25

    invoke-virtual {v15, v0, v1}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    .line 290
    add-int/lit8 v25, v17, 0x1

    move/from16 v0, v17

    move/from16 v1, v25

    invoke-virtual {v15, v0, v1}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    goto/16 :goto_7

    .line 300
    .end local v17           #magic1:I
    .end local v18           #magic2:I
    .restart local v13       #dateStringLen:I
    :cond_11
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/Clock;->mClockDateDisplay:I

    move/from16 v25, v0

    const/16 v26, 0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_a

    .line 301
    new-instance v24, Landroid/text/style/RelativeSizeSpan;

    const v25, 0x3f333333

    invoke-direct/range {v24 .. v25}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    .line 302
    .restart local v24       #style:Landroid/text/style/CharacterStyle;
    const/16 v25, 0x0

    const/16 v26, 0x22

    move-object/from16 v0, v24

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v15, v0, v1, v13, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto/16 :goto_8
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 6

    .prologue
    .line 134
    invoke-super {p0}, Landroid/widget/TextView;->onAttachedToWindow()V

    .line 136
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/Clock;->mAttached:Z

    if-nez v2, :cond_0

    .line 137
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/policy/Clock;->mAttached:Z

    .line 138
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 140
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.TIME_TICK"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 141
    const-string v2, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 142
    const-string v2, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 143
    const-string v2, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 144
    const-string v2, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 146
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/Clock;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/Clock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/Clock;->getHandler()Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v2, v3, v0, v4, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 153
    .end local v0           #filter:Landroid/content/IntentFilter;
    :cond_0
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/Clock;->mCalendar:Ljava/util/Calendar;

    .line 155
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/Clock;->mHandler:Landroid/os/Handler;

    .line 156
    new-instance v1, Lcom/android/systemui/statusbar/policy/Clock$SettingsObserver;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/Clock;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/statusbar/policy/Clock$SettingsObserver;-><init>(Lcom/android/systemui/statusbar/policy/Clock;Landroid/os/Handler;)V

    .line 157
    .local v1, settingsObserver:Lcom/android/systemui/statusbar/policy/Clock$SettingsObserver;
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/Clock$SettingsObserver;->observe()V

    .line 158
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/Clock;->updateSettings()V

    .line 159
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 163
    invoke-super {p0}, Landroid/widget/TextView;->onDetachedFromWindow()V

    .line 164
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/Clock;->mAttached:Z

    if-eqz v0, :cond_0

    .line 165
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/Clock;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/Clock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 166
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/Clock;->mAttached:Z

    .line 168
    :cond_0
    return-void
.end method

.method final updateClock()V
    .locals 3

    .prologue
    .line 192
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/Clock;->mCalendar:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 193
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/Clock;->getSmallTime()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/Clock;->setText(Ljava/lang/CharSequence;)V

    .line 194
    return-void
.end method

.method protected updateClockVisibility()V
    .locals 1

    .prologue
    .line 350
    iget v0, p0, Lcom/android/systemui/statusbar/policy/Clock;->mClockStyle:I

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/Clock;->mShowClock:Z

    if-eqz v0, :cond_0

    .line 351
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/Clock;->setVisibility(I)V

    .line 354
    :goto_0
    return-void

    .line 353
    :cond_0
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/Clock;->setVisibility(I)V

    goto :goto_0
.end method

.method protected updateSettings()V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 312
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/Clock;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 313
    .local v2, resolver:Landroid/content/ContentResolver;
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/Clock;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x1060012

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 316
    .local v1, defaultColor:I
    const-string v5, "status_bar_clock"

    invoke-static {v2, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v3, :cond_2

    :goto_0
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/policy/Clock;->mShowClock:Z

    .line 319
    const-string v3, "statusbar_clock_am_pm_style"

    invoke-static {v2, v3, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 322
    .local v0, amPmStyle:I
    iget v3, p0, Lcom/android/systemui/statusbar/policy/Clock;->mAmPmStyle:I

    if-eq v3, v0, :cond_0

    .line 323
    iput v0, p0, Lcom/android/systemui/statusbar/policy/Clock;->mAmPmStyle:I

    .line 324
    const-string v3, ""

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/Clock;->mClockFormatString:Ljava/lang/String;

    .line 326
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/Clock;->mAttached:Z

    if-eqz v3, :cond_0

    .line 327
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/Clock;->updateClock()V

    .line 331
    :cond_0
    const-string v3, "statusbar_clock_style"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/statusbar/policy/Clock;->mClockStyle:I

    .line 333
    const-string v3, "statusbar_clock_date_display"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/statusbar/policy/Clock;->mClockDateDisplay:I

    .line 335
    const-string v3, "statusbar_clock_date_style"

    invoke-static {v2, v3, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/statusbar/policy/Clock;->mClockDateStyle:I

    .line 338
    const-string v3, "statusbar_clock_color"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/statusbar/policy/Clock;->mClockColor:I

    .line 340
    iget v3, p0, Lcom/android/systemui/statusbar/policy/Clock;->mClockColor:I

    const/high16 v4, -0x8000

    if-ne v3, v4, :cond_1

    .line 342
    iput v1, p0, Lcom/android/systemui/statusbar/policy/Clock;->mClockColor:I

    .line 344
    :cond_1
    iget v3, p0, Lcom/android/systemui/statusbar/policy/Clock;->mClockColor:I

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/policy/Clock;->setTextColor(I)V

    .line 345
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/Clock;->updateClockVisibility()V

    .line 346
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/Clock;->updateClock()V

    .line 347
    return-void

    .end local v0           #amPmStyle:I
    :cond_2
    move v3, v4

    .line 316
    goto :goto_0
.end method
