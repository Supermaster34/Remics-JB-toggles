.class public abstract Lcom/android/systemui/statusbar/pie/PieView$PieSlice;
.super Lcom/android/systemui/statusbar/pie/PieView$PieDrawable;
.source "PieView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/pie/PieView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "PieSlice"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 160
    invoke-direct {p0}, Lcom/android/systemui/statusbar/pie/PieView$PieDrawable;-><init>()V

    return-void
.end method


# virtual methods
.method public estimateWidth()F
    .locals 4

    .prologue
    .line 174
    iget v0, p0, Lcom/android/systemui/statusbar/pie/PieView$PieSlice;->mStart:F

    iget v1, p0, Lcom/android/systemui/statusbar/pie/PieView$PieSlice;->mSweep:F

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    iget v2, p0, Lcom/android/systemui/statusbar/pie/PieView$PieSlice;->mStart:F

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    sub-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    iget v2, p0, Lcom/android/systemui/statusbar/pie/PieView$PieSlice;->mOuter:I

    int-to-double v2, v2

    mul-double/2addr v0, v2

    double-to-float v0, v0

    return v0
.end method
