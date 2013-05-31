.class public abstract Lcom/android/systemui/statusbar/pie/PieView$PieDrawable;
.super Ljava/lang/Object;
.source "PieView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/pie/PieView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "PieDrawable"
.end annotation


# static fields
.field public static final DISPLAY_ALL:I

.field public static final DISPLAY_NOT_AT_TOP:I


# instance fields
.field public flags:I

.field protected mInner:I

.field protected mOuter:I

.field protected mStart:F

.field protected mSweep:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 142
    sget-object v0, Lcom/android/internal/util/pie/PiePosition;->LEFT:Lcom/android/internal/util/pie/PiePosition;

    iget v0, v0, Lcom/android/internal/util/pie/PiePosition;->FLAG:I

    sget-object v1, Lcom/android/internal/util/pie/PiePosition;->BOTTOM:Lcom/android/internal/util/pie/PiePosition;

    iget v1, v1, Lcom/android/internal/util/pie/PiePosition;->FLAG:I

    or-int/2addr v0, v1

    sget-object v1, Lcom/android/internal/util/pie/PiePosition;->RIGHT:Lcom/android/internal/util/pie/PiePosition;

    iget v1, v1, Lcom/android/internal/util/pie/PiePosition;->FLAG:I

    or-int/2addr v0, v1

    sget-object v1, Lcom/android/internal/util/pie/PiePosition;->TOP:Lcom/android/internal/util/pie/PiePosition;

    iget v1, v1, Lcom/android/internal/util/pie/PiePosition;->FLAG:I

    or-int/2addr v0, v1

    sput v0, Lcom/android/systemui/statusbar/pie/PieView$PieDrawable;->DISPLAY_ALL:I

    .line 147
    sget-object v0, Lcom/android/internal/util/pie/PiePosition;->LEFT:Lcom/android/internal/util/pie/PiePosition;

    iget v0, v0, Lcom/android/internal/util/pie/PiePosition;->FLAG:I

    sget-object v1, Lcom/android/internal/util/pie/PiePosition;->BOTTOM:Lcom/android/internal/util/pie/PiePosition;

    iget v1, v1, Lcom/android/internal/util/pie/PiePosition;->FLAG:I

    or-int/2addr v0, v1

    sget-object v1, Lcom/android/internal/util/pie/PiePosition;->RIGHT:Lcom/android/internal/util/pie/PiePosition;

    iget v1, v1, Lcom/android/internal/util/pie/PiePosition;->FLAG:I

    or-int/2addr v0, v1

    sput v0, Lcom/android/systemui/statusbar/pie/PieView$PieDrawable;->DISPLAY_NOT_AT_TOP:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract draw(Landroid/graphics/Canvas;Lcom/android/internal/util/pie/PiePosition;)V
.end method

.method public abstract interact(FI)Lcom/android/systemui/statusbar/pie/PieItem;
.end method

.method public abstract prepare(Lcom/android/internal/util/pie/PiePosition;F)V
.end method

.method public setGeometry(FFII)V
    .locals 0
    .parameter "start"
    .parameter "sweep"
    .parameter "inner"
    .parameter "outer"

    .prologue
    .line 135
    iput p1, p0, Lcom/android/systemui/statusbar/pie/PieView$PieDrawable;->mStart:F

    .line 136
    iput p2, p0, Lcom/android/systemui/statusbar/pie/PieView$PieDrawable;->mSweep:F

    .line 137
    iput p3, p0, Lcom/android/systemui/statusbar/pie/PieView$PieDrawable;->mInner:I

    .line 138
    iput p4, p0, Lcom/android/systemui/statusbar/pie/PieView$PieDrawable;->mOuter:I

    .line 139
    return-void
.end method
