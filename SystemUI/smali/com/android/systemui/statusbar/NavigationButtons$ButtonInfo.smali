.class public final Lcom/android/systemui/statusbar/NavigationButtons$ButtonInfo;
.super Ljava/lang/Object;
.source "NavigationButtons.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/NavigationButtons;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ButtonInfo"
.end annotation


# instance fields
.field public final contentDescription:I

.field public final displayId:I

.field private final key:Ljava/lang/String;

.field public final keyCode:I

.field public final landResource:I

.field public final portResource:I

.field public final sideResource:I


# direct methods
.method public constructor <init>(IIIIII)V
    .locals 1
    .parameter "rId"
    .parameter "cD"
    .parameter "mC"
    .parameter "pR"
    .parameter "lR"
    .parameter "sR"

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput p1, p0, Lcom/android/systemui/statusbar/NavigationButtons$ButtonInfo;->displayId:I

    .line 73
    iput p2, p0, Lcom/android/systemui/statusbar/NavigationButtons$ButtonInfo;->contentDescription:I

    .line 74
    iput p3, p0, Lcom/android/systemui/statusbar/NavigationButtons$ButtonInfo;->keyCode:I

    .line 75
    iput p4, p0, Lcom/android/systemui/statusbar/NavigationButtons$ButtonInfo;->portResource:I

    .line 76
    iput p5, p0, Lcom/android/systemui/statusbar/NavigationButtons$ButtonInfo;->landResource:I

    .line 77
    iput p6, p0, Lcom/android/systemui/statusbar/NavigationButtons$ButtonInfo;->sideResource:I

    .line 78
    const-string v0, ""

    iput-object v0, p0, Lcom/android/systemui/statusbar/NavigationButtons$ButtonInfo;->key:Ljava/lang/String;

    .line 79
    return-void
.end method

.method public constructor <init>(IIIIIILjava/lang/String;)V
    .locals 0
    .parameter "rId"
    .parameter "cD"
    .parameter "mC"
    .parameter "pR"
    .parameter "lR"
    .parameter "sR"
    .parameter "key"

    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    iput p1, p0, Lcom/android/systemui/statusbar/NavigationButtons$ButtonInfo;->displayId:I

    .line 92
    iput p2, p0, Lcom/android/systemui/statusbar/NavigationButtons$ButtonInfo;->contentDescription:I

    .line 93
    iput p3, p0, Lcom/android/systemui/statusbar/NavigationButtons$ButtonInfo;->keyCode:I

    .line 94
    iput p4, p0, Lcom/android/systemui/statusbar/NavigationButtons$ButtonInfo;->portResource:I

    .line 95
    iput p5, p0, Lcom/android/systemui/statusbar/NavigationButtons$ButtonInfo;->landResource:I

    .line 96
    iput p6, p0, Lcom/android/systemui/statusbar/NavigationButtons$ButtonInfo;->sideResource:I

    .line 97
    iput-object p7, p0, Lcom/android/systemui/statusbar/NavigationButtons$ButtonInfo;->key:Ljava/lang/String;

    .line 98
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/NavigationButtons$ButtonInfo;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/systemui/statusbar/NavigationButtons$ButtonInfo;->key:Ljava/lang/String;

    return-object v0
.end method
