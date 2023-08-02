.class public Landroidx/window/embedding/SplitRule;
.super Landroidx/window/embedding/EmbeddingRule;
.source "SplitRule.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/window/embedding/SplitRule$LayoutDir;,
        Landroidx/window/embedding/SplitRule$Api30Impl;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0002\u0008\t\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0004\u0008\u0017\u0018\u00002\u00020\u0001:\u0002\u0017\u0018B/\u0008\u0000\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0006\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0008J\u000e\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0012J\u0013\u0010\u0013\u001a\u00020\u00102\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0015H\u0096\u0002J\u0008\u0010\u0016\u001a\u00020\u0003H\u0016R\u0011\u0010\u0007\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\nR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\nR\u0011\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000e\u00a8\u0006\u0019"
    }
    d2 = {
        "Landroidx/window/embedding/SplitRule;",
        "Landroidx/window/embedding/EmbeddingRule;",
        "minWidth",
        "",
        "minSmallestWidth",
        "splitRatio",
        "",
        "layoutDirection",
        "(IIFI)V",
        "getLayoutDirection",
        "()I",
        "getMinSmallestWidth",
        "getMinWidth",
        "getSplitRatio",
        "()F",
        "checkParentMetrics",
        "",
        "parentMetrics",
        "Landroid/view/WindowMetrics;",
        "equals",
        "other",
        "",
        "hashCode",
        "Api30Impl",
        "LayoutDir",
        "window_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final layoutDirection:I

.field private final minSmallestWidth:I

.field private final minWidth:I

.field private final splitRatio:F


# direct methods
.method public constructor <init>()V
    .locals 7

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xf

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Landroidx/window/embedding/SplitRule;-><init>(IIFIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(IIFI)V
    .locals 0
    .param p1, "minWidth"    # I
    .param p2, "minSmallestWidth"    # I
    .param p3, "splitRatio"    # F
    .param p4, "layoutDirection"    # I

    .line 67
    invoke-direct {p0}, Landroidx/window/embedding/EmbeddingRule;-><init>()V

    .line 45
    iput p1, p0, Landroidx/window/embedding/SplitRule;->minWidth:I

    .line 54
    iput p2, p0, Landroidx/window/embedding/SplitRule;->minSmallestWidth:I

    .line 60
    iput p3, p0, Landroidx/window/embedding/SplitRule;->splitRatio:F

    .line 65
    iput p4, p0, Landroidx/window/embedding/SplitRule;->layoutDirection:I

    .line 38
    return-void
.end method

.method public synthetic constructor <init>(IIFIILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    .line 38
    and-int/lit8 p6, p5, 0x1

    const/4 v0, 0x0

    if-eqz p6, :cond_0

    .line 45
    move p1, v0

    .line 38
    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    .line 54
    move p2, v0

    .line 38
    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    .line 60
    const/high16 p3, 0x3f000000    # 0.5f

    .line 38
    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    .line 66
    const/4 p4, 0x3

    .line 38
    :cond_3
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/window/embedding/SplitRule;-><init>(IIFI)V

    .line 117
    return-void
.end method


# virtual methods
.method public final checkParentMetrics(Landroid/view/WindowMetrics;)Z
    .locals 6
    .param p1, "parentMetrics"    # Landroid/view/WindowMetrics;

    const-string v0, "parentMetrics"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    const/4 v2, 0x0

    if-gt v0, v1, :cond_0

    .line 79
    return v2

    .line 81
    :cond_0
    sget-object v0, Landroidx/window/embedding/SplitRule$Api30Impl;->INSTANCE:Landroidx/window/embedding/SplitRule$Api30Impl;

    invoke-virtual {v0, p1}, Landroidx/window/embedding/SplitRule$Api30Impl;->getBounds(Landroid/view/WindowMetrics;)Landroid/graphics/Rect;

    move-result-object v0

    .line 82
    .local v0, "bounds":Landroid/graphics/Rect;
    iget v1, p0, Landroidx/window/embedding/SplitRule;->minWidth:I

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget v4, p0, Landroidx/window/embedding/SplitRule;->minWidth:I

    if-lt v1, v4, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1

    :cond_2
    :goto_0
    move v1, v3

    .line 84
    .local v1, "validMinWidth":Z
    :goto_1
    iget v4, p0, Landroidx/window/embedding/SplitRule;->minSmallestWidth:I

    if-eqz v4, :cond_4

    .line 85
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    iget v5, p0, Landroidx/window/embedding/SplitRule;->minSmallestWidth:I

    if-lt v4, v5, :cond_3

    goto :goto_2

    :cond_3
    move v4, v2

    goto :goto_3

    :cond_4
    :goto_2
    move v4, v3

    .line 83
    :goto_3
    nop

    .line 87
    .local v4, "validSmallestMinWidth":Z
    if-eqz v1, :cond_5

    if-eqz v4, :cond_5

    move v2, v3

    :cond_5
    return v2
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "other"    # Ljava/lang/Object;

    .line 99
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 100
    :cond_0
    instance-of v1, p1, Landroidx/window/embedding/SplitRule;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 102
    :cond_1
    iget v1, p0, Landroidx/window/embedding/SplitRule;->minWidth:I

    move-object v3, p1

    check-cast v3, Landroidx/window/embedding/SplitRule;

    iget v3, v3, Landroidx/window/embedding/SplitRule;->minWidth:I

    if-eq v1, v3, :cond_2

    return v2

    .line 103
    :cond_2
    iget v1, p0, Landroidx/window/embedding/SplitRule;->minSmallestWidth:I

    move-object v3, p1

    check-cast v3, Landroidx/window/embedding/SplitRule;

    iget v3, v3, Landroidx/window/embedding/SplitRule;->minSmallestWidth:I

    if-eq v1, v3, :cond_3

    return v2

    .line 104
    :cond_3
    iget v1, p0, Landroidx/window/embedding/SplitRule;->splitRatio:F

    move-object v3, p1

    check-cast v3, Landroidx/window/embedding/SplitRule;

    iget v3, v3, Landroidx/window/embedding/SplitRule;->splitRatio:F

    cmpg-float v1, v1, v3

    if-nez v1, :cond_4

    move v1, v0

    goto :goto_0

    :cond_4
    move v1, v2

    :goto_0
    if-nez v1, :cond_5

    return v2

    .line 105
    :cond_5
    iget v1, p0, Landroidx/window/embedding/SplitRule;->layoutDirection:I

    move-object v3, p1

    check-cast v3, Landroidx/window/embedding/SplitRule;

    iget v3, v3, Landroidx/window/embedding/SplitRule;->layoutDirection:I

    if-eq v1, v3, :cond_6

    return v2

    .line 107
    :cond_6
    return v0
.end method

.method public final getLayoutDirection()I
    .locals 1

    .line 66
    iget v0, p0, Landroidx/window/embedding/SplitRule;->layoutDirection:I

    return v0
.end method

.method public final getMinSmallestWidth()I
    .locals 1

    .line 54
    iget v0, p0, Landroidx/window/embedding/SplitRule;->minSmallestWidth:I

    return v0
.end method

.method public final getMinWidth()I
    .locals 1

    .line 45
    iget v0, p0, Landroidx/window/embedding/SplitRule;->minWidth:I

    return v0
.end method

.method public final getSplitRatio()F
    .locals 1

    .line 60
    iget v0, p0, Landroidx/window/embedding/SplitRule;->splitRatio:F

    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 111
    iget v0, p0, Landroidx/window/embedding/SplitRule;->minWidth:I

    .line 112
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroidx/window/embedding/SplitRule;->minSmallestWidth:I

    add-int/2addr v1, v2

    .line 113
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Landroidx/window/embedding/SplitRule;->splitRatio:F

    invoke-static {v2}, Ljava/lang/Float;->hashCode(F)I

    move-result v2

    add-int/2addr v0, v2

    .line 114
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroidx/window/embedding/SplitRule;->layoutDirection:I

    add-int/2addr v1, v2

    .line 115
    .end local v0    # "result":I
    .restart local v1    # "result":I
    return v1
.end method