.class Lcom/android/systemui/statusbar/pie/PieView$SnapPoint;
.super Ljava/lang/Object;
.source "PieView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/pie/PieView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SnapPoint"
.end annotation


# instance fields
.field private mActivity:F

.field private mX:I

.field private mY:I

.field public final position:Lcom/android/internal/util/pie/PiePosition;

.field final synthetic this$0:Lcom/android/systemui/statusbar/pie/PieView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/pie/PieView;IILcom/android/internal/util/pie/PiePosition;)V
    .locals 1
    .parameter
    .parameter "x"
    .parameter "y"
    .parameter "gravity"

    .prologue
    .line 190
    iput-object p1, p0, Lcom/android/systemui/statusbar/pie/PieView$SnapPoint;->this$0:Lcom/android/systemui/statusbar/pie/PieView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 191
    iput p2, p0, Lcom/android/systemui/statusbar/pie/PieView$SnapPoint;->mX:I

    .line 192
    iput p3, p0, Lcom/android/systemui/statusbar/pie/PieView$SnapPoint;->mY:I

    .line 193
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/pie/PieView$SnapPoint;->mActivity:F

    .line 194
    iput-object p4, p0, Lcom/android/systemui/statusbar/pie/PieView$SnapPoint;->position:Lcom/android/internal/util/pie/PiePosition;

    .line 195
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 4
    .parameter "canvas"

    .prologue
    .line 207
    iget-object v0, p0, Lcom/android/systemui/statusbar/pie/PieView$SnapPoint;->this$0:Lcom/android/systemui/statusbar/pie/PieView;

    #getter for: Lcom/android/systemui/statusbar/pie/PieView;->mActiveSnap:Lcom/android/systemui/statusbar/pie/PieView$SnapPoint;
    invoke-static {v0}, Lcom/android/systemui/statusbar/pie/PieView;->access$400(Lcom/android/systemui/statusbar/pie/PieView;)Lcom/android/systemui/statusbar/pie/PieView$SnapPoint;

    move-result-object v0

    if-ne v0, p0, :cond_0

    .line 208
    iget v0, p0, Lcom/android/systemui/statusbar/pie/PieView$SnapPoint;->mX:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/systemui/statusbar/pie/PieView$SnapPoint;->mY:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/pie/PieView$SnapPoint;->this$0:Lcom/android/systemui/statusbar/pie/PieView;

    #getter for: Lcom/android/systemui/statusbar/pie/PieView;->mSnapRadius:F
    invoke-static {v2}, Lcom/android/systemui/statusbar/pie/PieView;->access$500(Lcom/android/systemui/statusbar/pie/PieView;)F

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/pie/PieView$SnapPoint;->this$0:Lcom/android/systemui/statusbar/pie/PieView;

    #getter for: Lcom/android/systemui/statusbar/pie/PieView;->mSnapActivePaint:Landroid/graphics/Paint;
    invoke-static {v3}, Lcom/android/systemui/statusbar/pie/PieView;->access$600(Lcom/android/systemui/statusbar/pie/PieView;)Landroid/graphics/Paint;

    move-result-object v3

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 211
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pie/PieView$SnapPoint;->this$0:Lcom/android/systemui/statusbar/pie/PieView;

    #getter for: Lcom/android/systemui/statusbar/pie/PieView;->mSnapPaint:Landroid/graphics/Paint;
    invoke-static {v0}, Lcom/android/systemui/statusbar/pie/PieView;->access$700(Lcom/android/systemui/statusbar/pie/PieView;)Landroid/graphics/Paint;

    move-result-object v0

    const/high16 v1, 0x4280

    const/high16 v2, 0x433f

    iget v3, p0, Lcom/android/systemui/statusbar/pie/PieView$SnapPoint;->mActivity:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/android/systemui/statusbar/pie/PieView$SnapPoint;->this$0:Lcom/android/systemui/statusbar/pie/PieView;

    #getter for: Lcom/android/systemui/statusbar/pie/PieView;->mBackgroundFraction:F
    invoke-static {v2}, Lcom/android/systemui/statusbar/pie/PieView;->access$200(Lcom/android/systemui/statusbar/pie/PieView;)F

    move-result v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 212
    iget v0, p0, Lcom/android/systemui/statusbar/pie/PieView$SnapPoint;->mX:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/systemui/statusbar/pie/PieView$SnapPoint;->mY:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/pie/PieView$SnapPoint;->this$0:Lcom/android/systemui/statusbar/pie/PieView;

    #getter for: Lcom/android/systemui/statusbar/pie/PieView;->mSnapRadius:F
    invoke-static {v2}, Lcom/android/systemui/statusbar/pie/PieView;->access$500(Lcom/android/systemui/statusbar/pie/PieView;)F

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/pie/PieView$SnapPoint;->this$0:Lcom/android/systemui/statusbar/pie/PieView;

    #getter for: Lcom/android/systemui/statusbar/pie/PieView;->mSnapPaint:Landroid/graphics/Paint;
    invoke-static {v3}, Lcom/android/systemui/statusbar/pie/PieView;->access$700(Lcom/android/systemui/statusbar/pie/PieView;)Landroid/graphics/Paint;

    move-result-object v3

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 213
    return-void
.end method

.method public interact(FF)Z
    .locals 6
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v1, 0x0

    const/high16 v5, 0x3f80

    .line 216
    iget v2, p0, Lcom/android/systemui/statusbar/pie/PieView$SnapPoint;->mX:I

    int-to-float v2, v2

    sub-float v2, p1, v2

    iget v3, p0, Lcom/android/systemui/statusbar/pie/PieView$SnapPoint;->mX:I

    int-to-float v3, v3

    sub-float v3, p1, v3

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/android/systemui/statusbar/pie/PieView$SnapPoint;->mY:I

    int-to-float v3, v3

    sub-float v3, p2, v3

    iget v4, p0, Lcom/android/systemui/statusbar/pie/PieView$SnapPoint;->mY:I

    int-to-float v4, v4

    sub-float v4, p2, v4

    mul-float/2addr v3, v4

    add-float v0, v2, v3

    .line 217
    .local v0, distanceSqr:F
    iget-object v2, p0, Lcom/android/systemui/statusbar/pie/PieView$SnapPoint;->this$0:Lcom/android/systemui/statusbar/pie/PieView;

    #getter for: Lcom/android/systemui/statusbar/pie/PieView;->mSnapRadiusSqr:F
    invoke-static {v2}, Lcom/android/systemui/statusbar/pie/PieView;->access$800(Lcom/android/systemui/statusbar/pie/PieView;)F

    move-result v2

    sub-float v2, v0, v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/pie/PieView$SnapPoint;->this$0:Lcom/android/systemui/statusbar/pie/PieView;

    #getter for: Lcom/android/systemui/statusbar/pie/PieView;->mSnapThresholdSqr:F
    invoke-static {v3}, Lcom/android/systemui/statusbar/pie/PieView;->access$900(Lcom/android/systemui/statusbar/pie/PieView;)F

    move-result v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_0

    .line 218
    iget-object v2, p0, Lcom/android/systemui/statusbar/pie/PieView$SnapPoint;->this$0:Lcom/android/systemui/statusbar/pie/PieView;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/pie/PieView;->invalidate()V

    .line 220
    iget-object v2, p0, Lcom/android/systemui/statusbar/pie/PieView$SnapPoint;->this$0:Lcom/android/systemui/statusbar/pie/PieView;

    #getter for: Lcom/android/systemui/statusbar/pie/PieView;->mSnapRadiusSqr:F
    invoke-static {v2}, Lcom/android/systemui/statusbar/pie/PieView;->access$800(Lcom/android/systemui/statusbar/pie/PieView;)F

    move-result v2

    cmpg-float v2, v0, v2

    if-gez v2, :cond_1

    .line 225
    iput v5, p0, Lcom/android/systemui/statusbar/pie/PieView$SnapPoint;->mActivity:F

    .line 226
    const/4 v1, 0x1

    .line 232
    :cond_0
    :goto_0
    return v1

    .line 228
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/pie/PieView$SnapPoint;->this$0:Lcom/android/systemui/statusbar/pie/PieView;

    #getter for: Lcom/android/systemui/statusbar/pie/PieView;->mSnapRadiusSqr:F
    invoke-static {v2}, Lcom/android/systemui/statusbar/pie/PieView;->access$800(Lcom/android/systemui/statusbar/pie/PieView;)F

    move-result v2

    sub-float v2, v0, v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/pie/PieView$SnapPoint;->this$0:Lcom/android/systemui/statusbar/pie/PieView;

    #getter for: Lcom/android/systemui/statusbar/pie/PieView;->mSnapThresholdSqr:F
    invoke-static {v3}, Lcom/android/systemui/statusbar/pie/PieView;->access$900(Lcom/android/systemui/statusbar/pie/PieView;)F

    move-result v3

    div-float/2addr v2, v3

    sub-float v2, v5, v2

    iput v2, p0, Lcom/android/systemui/statusbar/pie/PieView$SnapPoint;->mActivity:F

    goto :goto_0
.end method

.method public reposition(II)V
    .locals 0
    .parameter "x"
    .parameter "y"

    .prologue
    .line 198
    iput p1, p0, Lcom/android/systemui/statusbar/pie/PieView$SnapPoint;->mX:I

    .line 199
    iput p2, p0, Lcom/android/systemui/statusbar/pie/PieView$SnapPoint;->mY:I

    .line 200
    return-void
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 203
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/pie/PieView$SnapPoint;->mActivity:F

    .line 204
    return-void
.end method
