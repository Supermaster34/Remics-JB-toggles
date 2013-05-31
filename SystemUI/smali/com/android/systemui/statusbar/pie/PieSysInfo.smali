.class public Lcom/android/systemui/statusbar/pie/PieSysInfo;
.super Lcom/android/systemui/statusbar/pie/PieSliceContainer;
.source "PieSysInfo.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field private mBatteryLevelReadable:Ljava/lang/String;

.field private mClockPaint:Landroid/graphics/Paint;

.field private mClockPath:Landroid/graphics/Path;

.field private mClockText:Ljava/lang/String;

.field private mClockTextDisplacements:[F

.field private mContext:Landroid/content/Context;

.field private mController:Lcom/android/systemui/statusbar/policy/PieController;

.field private mDateText:Ljava/lang/String;

.field private mInfoPaint:Landroid/graphics/Paint;

.field private mInfoPath:[Landroid/graphics/Path;

.field private mNetworkState:Ljava/lang/String;

.field private mStaleData:Z

.field private mTimeFormat:Ljava/text/SimpleDateFormat;

.field private mTimeFormatString:Ljava/lang/String;

.field private mWifiSsid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/pie/PieView;Lcom/android/systemui/statusbar/policy/PieController;I)V
    .locals 4
    .parameter "context"
    .parameter "parent"
    .parameter "controller"
    .parameter "initialFlags"

    .prologue
    const/4 v3, 0x1

    .line 70
    invoke-direct {p0, p2, p4}, Lcom/android/systemui/statusbar/pie/PieSliceContainer;-><init>(Lcom/android/systemui/statusbar/pie/PieView;I)V

    .line 50
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/pie/PieSysInfo;->mClockPath:Landroid/graphics/Path;

    .line 51
    const/4 v1, 0x4

    new-array v1, v1, [Landroid/graphics/Path;

    iput-object v1, p0, Lcom/android/systemui/statusbar/pie/PieSysInfo;->mInfoPath:[Landroid/graphics/Path;

    .line 53
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/pie/PieSysInfo;->mClockPaint:Landroid/graphics/Paint;

    .line 54
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/pie/PieSysInfo;->mInfoPaint:Landroid/graphics/Paint;

    .line 56
    const/16 v1, 0x20

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/android/systemui/statusbar/pie/PieSysInfo;->mClockTextDisplacements:[F

    .line 58
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/pie/PieSysInfo;->mStaleData:Z

    .line 71
    iput-object p3, p0, Lcom/android/systemui/statusbar/pie/PieSysInfo;->mController:Lcom/android/systemui/statusbar/policy/PieController;

    .line 72
    iput-object p1, p0, Lcom/android/systemui/statusbar/pie/PieSysInfo;->mContext:Landroid/content/Context;

    .line 74
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0006

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 76
    .local v0, textColor:I
    iget-object v1, p0, Lcom/android/systemui/statusbar/pie/PieSysInfo;->mClockPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 77
    iget-object v1, p0, Lcom/android/systemui/statusbar/pie/PieSysInfo;->mClockPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 78
    iget-object v1, p0, Lcom/android/systemui/statusbar/pie/PieSysInfo;->mClockPaint:Landroid/graphics/Paint;

    const-string v2, "sans-serif-light"

    invoke-static {v2, v3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 80
    iget-object v1, p0, Lcom/android/systemui/statusbar/pie/PieSysInfo;->mInfoPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 81
    iget-object v1, p0, Lcom/android/systemui/statusbar/pie/PieSysInfo;->mInfoPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 82
    iget-object v1, p0, Lcom/android/systemui/statusbar/pie/PieSysInfo;->mInfoPaint:Landroid/graphics/Paint;

    const-string v2, "sans-serif-light"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 83
    return-void
.end method

.method private getTimeFormat()Ljava/text/SimpleDateFormat;
    .locals 8

    .prologue
    .line 196
    iget-object v6, p0, Lcom/android/systemui/statusbar/pie/PieSysInfo;->mContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 197
    const v3, 0x1040019

    .line 202
    .local v3, formatResId:I
    :goto_0
    iget-object v6, p0, Lcom/android/systemui/statusbar/pie/PieSysInfo;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 203
    .local v1, format:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/systemui/statusbar/pie/PieSysInfo;->mTimeFormatString:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 204
    iget-object v6, p0, Lcom/android/systemui/statusbar/pie/PieSysInfo;->mTimeFormat:Ljava/text/SimpleDateFormat;

    .line 226
    :goto_1
    return-object v6

    .line 199
    .end local v1           #format:Ljava/lang/String;
    .end local v3           #formatResId:I
    :cond_0
    const v3, 0x1040018

    .restart local v3       #formatResId:I
    goto :goto_0

    .line 211
    .restart local v1       #format:Ljava/lang/String;
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 212
    .local v2, formatBuilder:Ljava/lang/StringBuilder;
    const/4 v5, 0x0

    .line 213
    .local v5, quoted:Z
    const/4 v4, 0x0

    .local v4, i:I
    :goto_2
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v4, v6, :cond_6

    .line 214
    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 216
    .local v0, c:C
    const/16 v6, 0x27

    if-ne v0, v6, :cond_2

    .line 217
    if-nez v5, :cond_5

    const/4 v5, 0x1

    .line 219
    :cond_2
    :goto_3
    if-nez v5, :cond_3

    const/16 v6, 0x61

    if-eq v0, v6, :cond_4

    .line 220
    :cond_3
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 213
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 217
    :cond_5
    const/4 v5, 0x0

    goto :goto_3

    .line 224
    .end local v0           #c:C
    :cond_6
    iput-object v1, p0, Lcom/android/systemui/statusbar/pie/PieSysInfo;->mTimeFormatString:Ljava/lang/String;

    .line 225
    new-instance v6, Ljava/text/SimpleDateFormat;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v6, p0, Lcom/android/systemui/statusbar/pie/PieSysInfo;->mTimeFormat:Ljava/text/SimpleDateFormat;

    .line 226
    iget-object v6, p0, Lcom/android/systemui/statusbar/pie/PieSysInfo;->mTimeFormat:Ljava/text/SimpleDateFormat;

    goto :goto_1
.end method

.method private getWifiSsid()Ljava/lang/String;
    .locals 6

    .prologue
    .line 176
    const/4 v1, 0x0

    .line 177
    .local v1, ssid:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/systemui/statusbar/pie/PieSysInfo;->mContext:Landroid/content/Context;

    const-string v5, "wifi"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    .line 178
    .local v2, wifiManager:Landroid/net/wifi/WifiManager;
    if-eqz v2, :cond_0

    .line 179
    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 180
    .local v0, connectionInfo:Landroid/net/wifi/WifiInfo;
    if-eqz v0, :cond_0

    .line 181
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getWifiSsid()Landroid/net/wifi/WifiSsid;

    move-result-object v3

    .line 182
    .local v3, wifiSsid:Landroid/net/wifi/WifiSsid;
    if-eqz v3, :cond_0

    .line 183
    invoke-virtual {v3}, Landroid/net/wifi/WifiSsid;->toString()Ljava/lang/String;

    move-result-object v1

    .line 187
    .end local v0           #connectionInfo:Landroid/net/wifi/WifiInfo;
    .end local v3           #wifiSsid:Landroid/net/wifi/WifiSsid;
    :cond_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 188
    iget-object v4, p0, Lcom/android/systemui/statusbar/pie/PieSysInfo;->mContext:Landroid/content/Context;

    const v5, 0x7f0a00ed

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 190
    :cond_1
    return-object v1
.end method

.method private updateData()V
    .locals 2

    .prologue
    .line 166
    iget-object v0, p0, Lcom/android/systemui/statusbar/pie/PieSysInfo;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/text/format/DateFormat;->getMediumDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v0

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/pie/PieSysInfo;->mDateText:Ljava/lang/String;

    .line 167
    iget-object v0, p0, Lcom/android/systemui/statusbar/pie/PieSysInfo;->mController:Lcom/android/systemui/statusbar/policy/PieController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/PieController;->getOperatorState()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/pie/PieSysInfo;->mNetworkState:Ljava/lang/String;

    .line 168
    iget-object v0, p0, Lcom/android/systemui/statusbar/pie/PieSysInfo;->mNetworkState:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 169
    iget-object v0, p0, Lcom/android/systemui/statusbar/pie/PieSysInfo;->mNetworkState:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/pie/PieSysInfo;->mNetworkState:Ljava/lang/String;

    .line 171
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/pie/PieSysInfo;->getWifiSsid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/pie/PieSysInfo;->mWifiSsid:Ljava/lang/String;

    .line 172
    iget-object v0, p0, Lcom/android/systemui/statusbar/pie/PieSysInfo;->mController:Lcom/android/systemui/statusbar/policy/PieController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/PieController;->getBatteryLevel()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/pie/PieSysInfo;->mBatteryLevelReadable:Ljava/lang/String;

    .line 173
    return-void
.end method

.method private updatePath(Landroid/graphics/Path;FFF)Landroid/graphics/Path;
    .locals 3
    .parameter "path"
    .parameter "radius"
    .parameter "start"
    .parameter "sweep"

    .prologue
    .line 154
    if-nez p1, :cond_0

    .line 155
    new-instance p1, Landroid/graphics/Path;

    .end local p1
    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    .line 160
    .restart local p1
    :goto_0
    new-instance v0, Landroid/graphics/RectF;

    neg-float v1, p2

    neg-float v2, p2

    invoke-direct {v0, v1, v2, p2, p2}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 161
    .local v0, bB:Landroid/graphics/RectF;
    const/4 v1, 0x1

    invoke-virtual {p1, v0, p3, p4, v1}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    .line 162
    return-object p1

    .line 157
    .end local v0           #bB:Landroid/graphics/RectF;
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Path;->reset()V

    goto :goto_0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Lcom/android/internal/util/pie/PiePosition;)V
    .locals 12
    .parameter "canvas"
    .parameter "position"

    .prologue
    const/4 v4, 0x0

    .line 122
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/pie/PieSysInfo;->mStaleData:Z

    if-eqz v0, :cond_0

    .line 138
    :goto_0
    return-void

    .line 126
    :cond_0
    const/4 v3, 0x0

    .line 127
    .local v3, lastPos:F
    const/4 v11, 0x0

    .local v11, i:I
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/pie/PieSysInfo;->mClockText:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v11, v0, :cond_1

    .line 128
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/pie/PieSysInfo;->mClockText:Ljava/lang/String;

    invoke-virtual {v1, v11}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/pie/PieSysInfo;->mClockPath:Landroid/graphics/Path;

    iget-object v5, p0, Lcom/android/systemui/statusbar/pie/PieSysInfo;->mClockPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawTextOnPath(Ljava/lang/String;Landroid/graphics/Path;FFLandroid/graphics/Paint;)V

    .line 129
    iget-object v0, p0, Lcom/android/systemui/statusbar/pie/PieSysInfo;->mClockTextDisplacements:[F

    aget v0, v0, v11

    add-float/2addr v3, v0

    .line 127
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 132
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/pie/PieSysInfo;->mNetworkState:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 133
    iget-object v6, p0, Lcom/android/systemui/statusbar/pie/PieSysInfo;->mNetworkState:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/systemui/statusbar/pie/PieSysInfo;->mInfoPath:[Landroid/graphics/Path;

    const/4 v1, 0x3

    aget-object v7, v0, v1

    iget-object v10, p0, Lcom/android/systemui/statusbar/pie/PieSysInfo;->mInfoPaint:Landroid/graphics/Paint;

    move-object v5, p1

    move v8, v4

    move v9, v4

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawTextOnPath(Ljava/lang/String;Landroid/graphics/Path;FFLandroid/graphics/Paint;)V

    .line 135
    :cond_2
    iget-object v6, p0, Lcom/android/systemui/statusbar/pie/PieSysInfo;->mDateText:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/systemui/statusbar/pie/PieSysInfo;->mInfoPath:[Landroid/graphics/Path;

    const/4 v1, 0x2

    aget-object v7, v0, v1

    iget-object v10, p0, Lcom/android/systemui/statusbar/pie/PieSysInfo;->mInfoPaint:Landroid/graphics/Paint;

    move-object v5, p1

    move v8, v4

    move v9, v4

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawTextOnPath(Ljava/lang/String;Landroid/graphics/Path;FFLandroid/graphics/Paint;)V

    .line 136
    iget-object v6, p0, Lcom/android/systemui/statusbar/pie/PieSysInfo;->mBatteryLevelReadable:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/systemui/statusbar/pie/PieSysInfo;->mInfoPath:[Landroid/graphics/Path;

    const/4 v1, 0x1

    aget-object v7, v0, v1

    iget-object v10, p0, Lcom/android/systemui/statusbar/pie/PieSysInfo;->mInfoPaint:Landroid/graphics/Paint;

    move-object v5, p1

    move v8, v4

    move v9, v4

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawTextOnPath(Ljava/lang/String;Landroid/graphics/Path;FFLandroid/graphics/Paint;)V

    .line 137
    iget-object v6, p0, Lcom/android/systemui/statusbar/pie/PieSysInfo;->mWifiSsid:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/systemui/statusbar/pie/PieSysInfo;->mInfoPath:[Landroid/graphics/Path;

    const/4 v1, 0x0

    aget-object v7, v0, v1

    iget-object v10, p0, Lcom/android/systemui/statusbar/pie/PieSysInfo;->mInfoPaint:Landroid/graphics/Paint;

    move-object v5, p1

    move v8, v4

    move v9, v4

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawTextOnPath(Ljava/lang/String;Landroid/graphics/Path;FFLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3
    .parameter "animation"

    .prologue
    .line 142
    const/high16 v1, 0x437f

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v2

    mul-float/2addr v1, v2

    float-to-int v0, v1

    .line 143
    .local v0, alpha:I
    iget-object v1, p0, Lcom/android/systemui/statusbar/pie/PieSysInfo;->mClockPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 144
    iget-object v1, p0, Lcom/android/systemui/statusbar/pie/PieSysInfo;->mInfoPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 147
    if-lez v0, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/pie/PieSysInfo;->mStaleData:Z

    if-eqz v1, :cond_0

    .line 148
    invoke-direct {p0}, Lcom/android/systemui/statusbar/pie/PieSysInfo;->updateData()V

    .line 149
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/pie/PieSysInfo;->mStaleData:Z

    .line 151
    :cond_0
    return-void
.end method

.method public prepare(Lcom/android/internal/util/pie/PiePosition;F)V
    .locals 15
    .parameter "position"
    .parameter "scale"

    .prologue
    .line 91
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/android/systemui/statusbar/pie/PieSysInfo;->mStaleData:Z

    .line 93
    invoke-direct {p0}, Lcom/android/systemui/statusbar/pie/PieSysInfo;->getTimeFormat()Ljava/text/SimpleDateFormat;

    move-result-object v8

    new-instance v9, Ljava/util/Date;

    invoke-direct {v9}, Ljava/util/Date;-><init>()V

    invoke-virtual {v8, v9}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/systemui/statusbar/pie/PieSysInfo;->mClockText:Ljava/lang/String;

    .line 95
    iget-object v8, p0, Lcom/android/systemui/statusbar/pie/PieSysInfo;->mClockPaint:Landroid/graphics/Paint;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 96
    iget-object v8, p0, Lcom/android/systemui/statusbar/pie/PieSysInfo;->mInfoPaint:Landroid/graphics/Paint;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 98
    iget-object v8, p0, Lcom/android/systemui/statusbar/pie/PieSysInfo;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 99
    .local v5, res:Landroid/content/res/Resources;
    const v8, 0x7f0e004c

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    .line 101
    .local v6, textsize:I
    iget-object v8, p0, Lcom/android/systemui/statusbar/pie/PieSysInfo;->mInfoPaint:Landroid/graphics/Paint;

    int-to-float v9, v6

    mul-float v9, v9, p2

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 102
    iget-object v8, p0, Lcom/android/systemui/statusbar/pie/PieSysInfo;->mClockPaint:Landroid/graphics/Paint;

    iget v9, p0, Lcom/android/systemui/statusbar/pie/PieSysInfo;->mOuter:I

    iget v10, p0, Lcom/android/systemui/statusbar/pie/PieSysInfo;->mInner:I

    sub-int/2addr v9, v10

    int-to-float v9, v9

    mul-float v9, v9, p2

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 104
    const/4 v7, 0x0

    .line 105
    .local v7, total:F
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    iget-object v8, p0, Lcom/android/systemui/statusbar/pie/PieSysInfo;->mClockText:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v3, v8, :cond_2

    .line 106
    iget-object v8, p0, Lcom/android/systemui/statusbar/pie/PieSysInfo;->mClockText:Ljava/lang/String;

    invoke-virtual {v8, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 107
    .local v2, character:C
    iget-object v8, p0, Lcom/android/systemui/statusbar/pie/PieSysInfo;->mClockPaint:Landroid/graphics/Paint;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v4

    .line 108
    .local v4, measure:F
    iget-object v9, p0, Lcom/android/systemui/statusbar/pie/PieSysInfo;->mClockTextDisplacements:[F

    const/16 v8, 0x31

    if-eq v2, v8, :cond_0

    const/16 v8, 0x3a

    if-ne v2, v8, :cond_1

    :cond_0
    const/high16 v8, 0x3f00

    :goto_1
    mul-float/2addr v8, v4

    aput v8, v9, v3

    .line 109
    iget-object v8, p0, Lcom/android/systemui/statusbar/pie/PieSysInfo;->mClockTextDisplacements:[F

    aget v8, v8, v3

    add-float/2addr v7, v8

    .line 105
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 108
    :cond_1
    const v8, 0x3f4ccccd

    goto :goto_1

    .line 111
    .end local v2           #character:C
    .end local v4           #measure:F
    :cond_2
    const/high16 v8, 0x4386

    const/high16 v9, 0x43b4

    mul-float/2addr v9, v7

    float-to-double v9, v9

    const-wide v11, 0x401921fb54442d18L

    iget v13, p0, Lcom/android/systemui/statusbar/pie/PieSysInfo;->mInner:I

    int-to-double v13, v13

    mul-double/2addr v11, v13

    move/from16 v0, p2

    float-to-double v13, v0

    mul-double/2addr v11, v13

    div-double/2addr v9, v11

    double-to-float v9, v9

    sub-float v1, v8, v9

    .line 113
    .local v1, alpha:F
    iget-object v8, p0, Lcom/android/systemui/statusbar/pie/PieSysInfo;->mClockPath:Landroid/graphics/Path;

    iget v9, p0, Lcom/android/systemui/statusbar/pie/PieSysInfo;->mInner:I

    int-to-float v9, v9

    mul-float v9, v9, p2

    iget v10, p0, Lcom/android/systemui/statusbar/pie/PieSysInfo;->mSweep:F

    invoke-direct {p0, v8, v9, v1, v10}, Lcom/android/systemui/statusbar/pie/PieSysInfo;->updatePath(Landroid/graphics/Path;FFF)Landroid/graphics/Path;

    move-result-object v8

    iput-object v8, p0, Lcom/android/systemui/statusbar/pie/PieSysInfo;->mClockPath:Landroid/graphics/Path;

    .line 114
    const/4 v3, 0x0

    :goto_2
    iget-object v8, p0, Lcom/android/systemui/statusbar/pie/PieSysInfo;->mInfoPath:[Landroid/graphics/Path;

    array-length v8, v8

    if-ge v3, v8, :cond_3

    .line 115
    iget-object v8, p0, Lcom/android/systemui/statusbar/pie/PieSysInfo;->mInfoPath:[Landroid/graphics/Path;

    iget-object v9, p0, Lcom/android/systemui/statusbar/pie/PieSysInfo;->mInfoPath:[Landroid/graphics/Path;

    aget-object v9, v9, v3

    iget v10, p0, Lcom/android/systemui/statusbar/pie/PieSysInfo;->mInner:I

    int-to-float v10, v10

    int-to-float v11, v6

    const v12, 0x3f99999a

    mul-float/2addr v11, v12

    int-to-float v12, v3

    mul-float/2addr v11, v12

    add-float/2addr v10, v11

    mul-float v10, v10, p2

    const/high16 v11, 0x4388

    iget v12, p0, Lcom/android/systemui/statusbar/pie/PieSysInfo;->mStart:F

    iget v13, p0, Lcom/android/systemui/statusbar/pie/PieSysInfo;->mSweep:F

    add-float/2addr v12, v13

    const/high16 v13, 0x4388

    sub-float/2addr v12, v13

    invoke-direct {p0, v9, v10, v11, v12}, Lcom/android/systemui/statusbar/pie/PieSysInfo;->updatePath(Landroid/graphics/Path;FFF)Landroid/graphics/Path;

    move-result-object v9

    aput-object v9, v8, v3

    .line 114
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 117
    :cond_3
    return-void
.end method
