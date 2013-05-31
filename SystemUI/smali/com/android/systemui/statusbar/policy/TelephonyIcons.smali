.class Lcom/android/systemui/statusbar/policy/TelephonyIcons;
.super Ljava/lang/Object;
.source "TelephonyIcons.java"


# static fields
.field static final DATA_1X:[[I

.field static final DATA_3G:[[I

.field static final DATA_4G:[[I

.field static final DATA_E:[[I

.field static final DATA_G:[[I

.field static final DATA_H:[[I

.field static final DATA_HP:[[I

.field static final DATA_SIGNAL_STRENGTH:[[I

.field static final QS_TELEPHONY_SIGNAL_STRENGTH:[[I

.field static final TELEPHONY_SIGNAL_STRENGTH:[[I

.field static final TELEPHONY_SIGNAL_STRENGTH_ROAMING:[[I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x5

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x4

    .line 25
    new-array v0, v5, [[I

    new-array v1, v6, [I

    fill-array-data v1, :array_0

    aput-object v1, v0, v3

    new-array v1, v6, [I

    fill-array-data v1, :array_1

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH:[[I

    .line 38
    new-array v0, v5, [[I

    new-array v1, v6, [I

    fill-array-data v1, :array_2

    aput-object v1, v0, v3

    new-array v1, v6, [I

    fill-array-data v1, :array_3

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_TELEPHONY_SIGNAL_STRENGTH:[[I

    .line 51
    new-array v0, v5, [[I

    new-array v1, v6, [I

    fill-array-data v1, :array_4

    aput-object v1, v0, v3

    new-array v1, v6, [I

    fill-array-data v1, :array_5

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH_ROAMING:[[I

    .line 64
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH:[[I

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_SIGNAL_STRENGTH:[[I

    .line 69
    new-array v0, v5, [[I

    new-array v1, v2, [I

    fill-array-data v1, :array_6

    aput-object v1, v0, v3

    new-array v1, v2, [I

    fill-array-data v1, :array_7

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_G:[[I

    .line 80
    new-array v0, v5, [[I

    new-array v1, v2, [I

    fill-array-data v1, :array_8

    aput-object v1, v0, v3

    new-array v1, v2, [I

    fill-array-data v1, :array_9

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G:[[I

    .line 91
    new-array v0, v5, [[I

    new-array v1, v2, [I

    fill-array-data v1, :array_a

    aput-object v1, v0, v3

    new-array v1, v2, [I

    fill-array-data v1, :array_b

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_E:[[I

    .line 103
    new-array v0, v5, [[I

    new-array v1, v2, [I

    fill-array-data v1, :array_c

    aput-object v1, v0, v3

    new-array v1, v2, [I

    fill-array-data v1, :array_d

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_H:[[I

    .line 115
    new-array v0, v5, [[I

    new-array v1, v2, [I

    fill-array-data v1, :array_e

    aput-object v1, v0, v3

    new-array v1, v2, [I

    fill-array-data v1, :array_f

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_HP:[[I

    .line 128
    new-array v0, v5, [[I

    new-array v1, v2, [I

    fill-array-data v1, :array_10

    aput-object v1, v0, v3

    new-array v1, v2, [I

    fill-array-data v1, :array_11

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_1X:[[I

    .line 140
    new-array v0, v5, [[I

    new-array v1, v2, [I

    fill-array-data v1, :array_12

    aput-object v1, v0, v3

    new-array v1, v2, [I

    fill-array-data v1, :array_13

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_4G:[[I

    return-void

    .line 25
    :array_0
    .array-data 0x4
        0xe6t 0x1t 0x2t 0x7ft
        0xe8t 0x1t 0x2t 0x7ft
        0xeat 0x1t 0x2t 0x7ft
        0xect 0x1t 0x2t 0x7ft
        0xeet 0x1t 0x2t 0x7ft
    .end array-data

    :array_1
    .array-data 0x4
        0xe7t 0x1t 0x2t 0x7ft
        0xe9t 0x1t 0x2t 0x7ft
        0xebt 0x1t 0x2t 0x7ft
        0xedt 0x1t 0x2t 0x7ft
        0xeft 0x1t 0x2t 0x7ft
    .end array-data

    .line 38
    :array_2
    .array-data 0x4
        0x8bt 0x0t 0x2t 0x7ft
        0x8ct 0x0t 0x2t 0x7ft
        0x8et 0x0t 0x2t 0x7ft
        0x8ft 0x0t 0x2t 0x7ft
        0x91t 0x0t 0x2t 0x7ft
    .end array-data

    :array_3
    .array-data 0x4
        0x95t 0x0t 0x2t 0x7ft
        0x96t 0x0t 0x2t 0x7ft
        0x98t 0x0t 0x2t 0x7ft
        0x99t 0x0t 0x2t 0x7ft
        0x9bt 0x0t 0x2t 0x7ft
    .end array-data

    .line 51
    :array_4
    .array-data 0x4
        0xe6t 0x1t 0x2t 0x7ft
        0xe8t 0x1t 0x2t 0x7ft
        0xeat 0x1t 0x2t 0x7ft
        0xect 0x1t 0x2t 0x7ft
        0xeet 0x1t 0x2t 0x7ft
    .end array-data

    :array_5
    .array-data 0x4
        0xe7t 0x1t 0x2t 0x7ft
        0xe9t 0x1t 0x2t 0x7ft
        0xebt 0x1t 0x2t 0x7ft
        0xedt 0x1t 0x2t 0x7ft
        0xeft 0x1t 0x2t 0x7ft
    .end array-data

    .line 69
    :array_6
    .array-data 0x4
        0xa2t 0x1t 0x2t 0x7ft
        0xa2t 0x1t 0x2t 0x7ft
        0xa2t 0x1t 0x2t 0x7ft
        0xa2t 0x1t 0x2t 0x7ft
    .end array-data

    :array_7
    .array-data 0x4
        0xaat 0x1t 0x2t 0x7ft
        0xaat 0x1t 0x2t 0x7ft
        0xaat 0x1t 0x2t 0x7ft
        0xaat 0x1t 0x2t 0x7ft
    .end array-data

    .line 80
    :array_8
    .array-data 0x4
        0x9ft 0x1t 0x2t 0x7ft
        0x9ft 0x1t 0x2t 0x7ft
        0x9ft 0x1t 0x2t 0x7ft
        0x9ft 0x1t 0x2t 0x7ft
    .end array-data

    :array_9
    .array-data 0x4
        0xa7t 0x1t 0x2t 0x7ft
        0xa7t 0x1t 0x2t 0x7ft
        0xa7t 0x1t 0x2t 0x7ft
        0xa7t 0x1t 0x2t 0x7ft
    .end array-data

    .line 91
    :array_a
    .array-data 0x4
        0xa1t 0x1t 0x2t 0x7ft
        0xa1t 0x1t 0x2t 0x7ft
        0xa1t 0x1t 0x2t 0x7ft
        0xa1t 0x1t 0x2t 0x7ft
    .end array-data

    :array_b
    .array-data 0x4
        0xa9t 0x1t 0x2t 0x7ft
        0xa9t 0x1t 0x2t 0x7ft
        0xa9t 0x1t 0x2t 0x7ft
        0xa9t 0x1t 0x2t 0x7ft
    .end array-data

    .line 103
    :array_c
    .array-data 0x4
        0xa3t 0x1t 0x2t 0x7ft
        0xa3t 0x1t 0x2t 0x7ft
        0xa3t 0x1t 0x2t 0x7ft
        0xa3t 0x1t 0x2t 0x7ft
    .end array-data

    :array_d
    .array-data 0x4
        0xabt 0x1t 0x2t 0x7ft
        0xabt 0x1t 0x2t 0x7ft
        0xabt 0x1t 0x2t 0x7ft
        0xabt 0x1t 0x2t 0x7ft
    .end array-data

    .line 115
    :array_e
    .array-data 0x4
        0xa4t 0x1t 0x2t 0x7ft
        0xa4t 0x1t 0x2t 0x7ft
        0xa4t 0x1t 0x2t 0x7ft
        0xa4t 0x1t 0x2t 0x7ft
    .end array-data

    :array_f
    .array-data 0x4
        0xact 0x1t 0x2t 0x7ft
        0xact 0x1t 0x2t 0x7ft
        0xact 0x1t 0x2t 0x7ft
        0xact 0x1t 0x2t 0x7ft
    .end array-data

    .line 128
    :array_10
    .array-data 0x4
        0x9et 0x1t 0x2t 0x7ft
        0x9et 0x1t 0x2t 0x7ft
        0x9et 0x1t 0x2t 0x7ft
        0x9et 0x1t 0x2t 0x7ft
    .end array-data

    :array_11
    .array-data 0x4
        0xa6t 0x1t 0x2t 0x7ft
        0xa6t 0x1t 0x2t 0x7ft
        0xa6t 0x1t 0x2t 0x7ft
        0xa6t 0x1t 0x2t 0x7ft
    .end array-data

    .line 140
    :array_12
    .array-data 0x4
        0xa0t 0x1t 0x2t 0x7ft
        0xa0t 0x1t 0x2t 0x7ft
        0xa0t 0x1t 0x2t 0x7ft
        0xa0t 0x1t 0x2t 0x7ft
    .end array-data

    :array_13
    .array-data 0x4
        0xa8t 0x1t 0x2t 0x7ft
        0xa8t 0x1t 0x2t 0x7ft
        0xa8t 0x1t 0x2t 0x7ft
        0xa8t 0x1t 0x2t 0x7ft
    .end array-data
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
