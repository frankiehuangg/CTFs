.class final Lcom/google/android/material/internal/StaticLayoutBuilderCompat;
.super Ljava/lang/Object;
.source "StaticLayoutBuilderCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/internal/StaticLayoutBuilderCompat$StaticLayoutBuilderCompatException;
    }
.end annotation


# static fields
.field static final DEFAULT_HYPHENATION_FREQUENCY:I

.field static final DEFAULT_LINE_SPACING_ADD:F = 0.0f

.field static final DEFAULT_LINE_SPACING_MULTIPLIER:F = 1.0f

.field private static final TEXT_DIRS_CLASS:Ljava/lang/String; = "android.text.TextDirectionHeuristics"

.field private static final TEXT_DIR_CLASS:Ljava/lang/String; = "android.text.TextDirectionHeuristic"

.field private static final TEXT_DIR_CLASS_LTR:Ljava/lang/String; = "LTR"

.field private static final TEXT_DIR_CLASS_RTL:Ljava/lang/String; = "RTL"

.field private static constructor:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor<",
            "Landroid/text/StaticLayout;",
            ">;"
        }
    .end annotation
.end field

.field private static initialized:Z

.field private static textDirection:Ljava/lang/Object;


# instance fields
.field private alignment:Landroid/text/Layout$Alignment;

.field private ellipsize:Landroid/text/TextUtils$TruncateAt;

.field private end:I

.field private hyphenationFrequency:I

.field private includePad:Z

.field private isRtl:Z

.field private lineSpacingAdd:F

.field private lineSpacingMultiplier:F

.field private maxLines:I

.field private final paint:Landroid/text/TextPaint;

.field private source:Ljava/lang/CharSequence;

.field private start:I

.field private final width:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 56
    const/4 v0, 0x1

    sput v0, Lcom/google/android/material/internal/StaticLayoutBuilderCompat;->DEFAULT_HYPHENATION_FREQUENCY:I

    return-void
.end method

.method private constructor <init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;I)V
    .locals 1
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "paint"    # Landroid/text/TextPaint;
    .param p3, "width"    # I

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    iput-object p1, p0, Lcom/google/android/material/internal/StaticLayoutBuilderCompat;->source:Ljava/lang/CharSequence;

    .line 90
    iput-object p2, p0, Lcom/google/android/material/internal/StaticLayoutBuilderCompat;->paint:Landroid/text/TextPaint;

    .line 91
    iput p3, p0, Lcom/google/android/material/internal/StaticLayoutBuilderCompat;->width:I

    .line 92
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/material/internal/StaticLayoutBuilderCompat;->start:I

    .line 93
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    iput v0, p0, Lcom/google/android/material/internal/StaticLayoutBuilderCompat;->end:I

    .line 94
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    iput-object v0, p0, Lcom/google/android/material/internal/StaticLayoutBuilderCompat;->alignment:Landroid/text/Layout$Alignment;

    .line 95
    const v0, 0x7fffffff

    iput v0, p0, Lcom/google/android/material/internal/StaticLayoutBuilderCompat;->maxLines:I

    .line 96
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/material/internal/StaticLayoutBuilderCompat;->lineSpacingAdd:F

    .line 97
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/google/android/material/internal/StaticLayoutBuilderCompat;->lineSpacingMultiplier:F

    .line 98
    sget v0, Lcom/google/android/material/internal/StaticLayoutBuilderCompat;->DEFAULT_HYPHENATION_FREQUENCY:I

    iput v0, p0, Lcom/google/android/material/internal/StaticLayoutBuilderCompat;->hyphenationFrequency:I

    .line 99
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/material/internal/StaticLayoutBuilderCompat;->includePad:Z

    .line 100
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/material/internal/StaticLayoutBuilderCompat;->ellipsize:Landroid/text/TextUtils$TruncateAt;

    .line 101
    return-void
.end method

.method private createConstructorWithReflection()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/material/internal/StaticLayoutBuilderCompat$StaticLayoutBuilderCompatException;
        }
    .end annotation

    .line 309
    sget-boolean v0, Lcom/google/android/material/internal/StaticLayoutBuilderCompat;->initialized:Z

    if-eqz v0, :cond_0

    .line 310
    return-void

    .line 315
    :cond_0
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/material/internal/StaticLayoutBuilderCompat;->isRtl:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    .line 316
    .local v0, "useRtl":Z
    :goto_0
    nop

    .line 317
    const-class v3, Landroid/text/TextDirectionHeuristic;

    .line 318
    .local v3, "textDirClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v0, :cond_2

    sget-object v4, Landroid/text/TextDirectionHeuristics;->RTL:Landroid/text/TextDirectionHeuristic;

    goto :goto_1

    :cond_2
    sget-object v4, Landroid/text/TextDirectionHeuristics;->LTR:Landroid/text/TextDirectionHeuristic;

    :goto_1
    sput-object v4, Lcom/google/android/material/internal/StaticLayoutBuilderCompat;->textDirection:Ljava/lang/Object;

    .line 327
    const/16 v4, 0xd

    new-array v4, v4, [Ljava/lang/Class;

    const-class v5, Ljava/lang/CharSequence;

    aput-object v5, v4, v1

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v1, v4, v2

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x2

    aput-object v1, v4, v5

    const-class v1, Landroid/text/TextPaint;

    const/4 v5, 0x3

    aput-object v1, v4, v5

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x4

    aput-object v1, v4, v5

    const-class v1, Landroid/text/Layout$Alignment;

    const/4 v5, 0x5

    aput-object v1, v4, v5

    const/4 v1, 0x6

    aput-object v3, v4, v1

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x7

    aput-object v1, v4, v5

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const/16 v5, 0x8

    aput-object v1, v4, v5

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/16 v5, 0x9

    aput-object v1, v4, v5

    const-class v1, Landroid/text/TextUtils$TruncateAt;

    const/16 v5, 0xa

    aput-object v1, v4, v5

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/16 v5, 0xb

    aput-object v1, v4, v5

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/16 v5, 0xc

    aput-object v1, v4, v5

    move-object v1, v4

    .line 344
    .local v1, "signature":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const-class v4, Landroid/text/StaticLayout;

    invoke-virtual {v4, v1}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v4

    sput-object v4, Lcom/google/android/material/internal/StaticLayoutBuilderCompat;->constructor:Ljava/lang/reflect/Constructor;

    .line 345
    invoke-virtual {v4, v2}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 346
    sput-boolean v2, Lcom/google/android/material/internal/StaticLayoutBuilderCompat;->initialized:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 349
    .end local v0    # "useRtl":Z
    .end local v1    # "signature":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .end local v3    # "textDirClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    nop

    .line 350
    return-void

    .line 347
    :catch_0
    move-exception v0

    .line 348
    .local v0, "cause":Ljava/lang/Exception;
    new-instance v1, Lcom/google/android/material/internal/StaticLayoutBuilderCompat$StaticLayoutBuilderCompatException;

    invoke-direct {v1, v0}, Lcom/google/android/material/internal/StaticLayoutBuilderCompat$StaticLayoutBuilderCompatException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static obtain(Ljava/lang/CharSequence;Landroid/text/TextPaint;I)Lcom/google/android/material/internal/StaticLayoutBuilderCompat;
    .locals 1
    .param p0, "source"    # Ljava/lang/CharSequence;
    .param p1, "paint"    # Landroid/text/TextPaint;
    .param p2, "width"    # I

    .line 114
    new-instance v0, Lcom/google/android/material/internal/StaticLayoutBuilderCompat;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/material/internal/StaticLayoutBuilderCompat;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;I)V

    return-object v0
.end method


# virtual methods
.method public build()Landroid/text/StaticLayout;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/material/internal/StaticLayoutBuilderCompat$StaticLayoutBuilderCompatException;
        }
    .end annotation

    .line 224
    iget-object v0, p0, Lcom/google/android/material/internal/StaticLayoutBuilderCompat;->source:Ljava/lang/CharSequence;

    if-nez v0, :cond_0

    .line 225
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/material/internal/StaticLayoutBuilderCompat;->source:Ljava/lang/CharSequence;

    .line 229
    :cond_0
    const/4 v0, 0x0

    iget v1, p0, Lcom/google/android/material/internal/StaticLayoutBuilderCompat;->width:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 230
    .local v0, "availableWidth":I
    iget-object v1, p0, Lcom/google/android/material/internal/StaticLayoutBuilderCompat;->source:Ljava/lang/CharSequence;

    .line 231
    .local v1, "textToDraw":Ljava/lang/CharSequence;
    iget v2, p0, Lcom/google/android/material/internal/StaticLayoutBuilderCompat;->maxLines:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 232
    iget-object v2, p0, Lcom/google/android/material/internal/StaticLayoutBuilderCompat;->source:Ljava/lang/CharSequence;

    iget-object v4, p0, Lcom/google/android/material/internal/StaticLayoutBuilderCompat;->paint:Landroid/text/TextPaint;

    int-to-float v5, v0

    iget-object v6, p0, Lcom/google/android/material/internal/StaticLayoutBuilderCompat;->ellipsize:Landroid/text/TextUtils$TruncateAt;

    invoke-static {v2, v4, v5, v6}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 235
    :cond_1
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    iget v4, p0, Lcom/google/android/material/internal/StaticLayoutBuilderCompat;->end:I

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, p0, Lcom/google/android/material/internal/StaticLayoutBuilderCompat;->end:I

    .line 236
    nop

    .line 237
    iget-boolean v2, p0, Lcom/google/android/material/internal/StaticLayoutBuilderCompat;->isRtl:Z

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/google/android/material/internal/StaticLayoutBuilderCompat;->maxLines:I

    if-ne v2, v3, :cond_2

    .line 238
    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    iput-object v2, p0, Lcom/google/android/material/internal/StaticLayoutBuilderCompat;->alignment:Landroid/text/Layout$Alignment;

    .line 242
    :cond_2
    iget v2, p0, Lcom/google/android/material/internal/StaticLayoutBuilderCompat;->start:I

    iget v4, p0, Lcom/google/android/material/internal/StaticLayoutBuilderCompat;->end:I

    iget-object v5, p0, Lcom/google/android/material/internal/StaticLayoutBuilderCompat;->paint:Landroid/text/TextPaint;

    .line 243
    invoke-static {v1, v2, v4, v5, v0}, Landroid/text/StaticLayout$Builder;->obtain(Ljava/lang/CharSequence;IILandroid/text/TextPaint;I)Landroid/text/StaticLayout$Builder;

    move-result-object v2

    .line 245
    .local v2, "builder":Landroid/text/StaticLayout$Builder;
    iget-object v4, p0, Lcom/google/android/material/internal/StaticLayoutBuilderCompat;->alignment:Landroid/text/Layout$Alignment;

    invoke-virtual {v2, v4}, Landroid/text/StaticLayout$Builder;->setAlignment(Landroid/text/Layout$Alignment;)Landroid/text/StaticLayout$Builder;

    .line 246
    iget-boolean v4, p0, Lcom/google/android/material/internal/StaticLayoutBuilderCompat;->includePad:Z

    invoke-virtual {v2, v4}, Landroid/text/StaticLayout$Builder;->setIncludePad(Z)Landroid/text/StaticLayout$Builder;

    .line 247
    iget-boolean v4, p0, Lcom/google/android/material/internal/StaticLayoutBuilderCompat;->isRtl:Z

    if-eqz v4, :cond_3

    sget-object v4, Landroid/text/TextDirectionHeuristics;->RTL:Landroid/text/TextDirectionHeuristic;

    goto :goto_0

    :cond_3
    sget-object v4, Landroid/text/TextDirectionHeuristics;->LTR:Landroid/text/TextDirectionHeuristic;

    .line 250
    .local v4, "textDirectionHeuristic":Landroid/text/TextDirectionHeuristic;
    :goto_0
    invoke-virtual {v2, v4}, Landroid/text/StaticLayout$Builder;->setTextDirection(Landroid/text/TextDirectionHeuristic;)Landroid/text/StaticLayout$Builder;

    .line 251
    iget-object v5, p0, Lcom/google/android/material/internal/StaticLayoutBuilderCompat;->ellipsize:Landroid/text/TextUtils$TruncateAt;

    if-eqz v5, :cond_4

    .line 252
    invoke-virtual {v2, v5}, Landroid/text/StaticLayout$Builder;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)Landroid/text/StaticLayout$Builder;

    .line 254
    :cond_4
    iget v5, p0, Lcom/google/android/material/internal/StaticLayoutBuilderCompat;->maxLines:I

    invoke-virtual {v2, v5}, Landroid/text/StaticLayout$Builder;->setMaxLines(I)Landroid/text/StaticLayout$Builder;

    .line 255
    iget v5, p0, Lcom/google/android/material/internal/StaticLayoutBuilderCompat;->lineSpacingAdd:F

    const/4 v6, 0x0

    cmpl-float v6, v5, v6

    if-nez v6, :cond_5

    iget v6, p0, Lcom/google/android/material/internal/StaticLayoutBuilderCompat;->lineSpacingMultiplier:F

    const/high16 v7, 0x3f800000    # 1.0f

    cmpl-float v6, v6, v7

    if-eqz v6, :cond_6

    .line 257
    :cond_5
    iget v6, p0, Lcom/google/android/material/internal/StaticLayoutBuilderCompat;->lineSpacingMultiplier:F

    invoke-virtual {v2, v5, v6}, Landroid/text/StaticLayout$Builder;->setLineSpacing(FF)Landroid/text/StaticLayout$Builder;

    .line 259
    :cond_6
    iget v5, p0, Lcom/google/android/material/internal/StaticLayoutBuilderCompat;->maxLines:I

    if-le v5, v3, :cond_7

    .line 260
    iget v3, p0, Lcom/google/android/material/internal/StaticLayoutBuilderCompat;->hyphenationFrequency:I

    invoke-virtual {v2, v3}, Landroid/text/StaticLayout$Builder;->setHyphenationFrequency(I)Landroid/text/StaticLayout$Builder;

    .line 262
    :cond_7
    invoke-virtual {v2}, Landroid/text/StaticLayout$Builder;->build()Landroid/text/StaticLayout;

    move-result-object v3

    return-object v3
.end method

.method public setAlignment(Landroid/text/Layout$Alignment;)Lcom/google/android/material/internal/StaticLayoutBuilderCompat;
    .locals 0
    .param p1, "alignment"    # Landroid/text/Layout$Alignment;

    .line 125
    iput-object p1, p0, Lcom/google/android/material/internal/StaticLayoutBuilderCompat;->alignment:Landroid/text/Layout$Alignment;

    .line 126
    return-object p0
.end method

.method public setEllipsize(Landroid/text/TextUtils$TruncateAt;)Lcom/google/android/material/internal/StaticLayoutBuilderCompat;
    .locals 0
    .param p1, "ellipsize"    # Landroid/text/TextUtils$TruncateAt;

    .line 218
    iput-object p1, p0, Lcom/google/android/material/internal/StaticLayoutBuilderCompat;->ellipsize:Landroid/text/TextUtils$TruncateAt;

    .line 219
    return-object p0
.end method

.method public setEnd(I)Lcom/google/android/material/internal/StaticLayoutBuilderCompat;
    .locals 0
    .param p1, "end"    # I

    .line 162
    iput p1, p0, Lcom/google/android/material/internal/StaticLayoutBuilderCompat;->end:I

    .line 163
    return-object p0
.end method

.method public setHyphenationFrequency(I)Lcom/google/android/material/internal/StaticLayoutBuilderCompat;
    .locals 0
    .param p1, "hyphenationFrequency"    # I

    .line 204
    iput p1, p0, Lcom/google/android/material/internal/StaticLayoutBuilderCompat;->hyphenationFrequency:I

    .line 205
    return-object p0
.end method

.method public setIncludePad(Z)Lcom/google/android/material/internal/StaticLayoutBuilderCompat;
    .locals 0
    .param p1, "includePad"    # Z

    .line 139
    iput-boolean p1, p0, Lcom/google/android/material/internal/StaticLayoutBuilderCompat;->includePad:Z

    .line 140
    return-object p0
.end method

.method public setIsRtl(Z)Lcom/google/android/material/internal/StaticLayoutBuilderCompat;
    .locals 0
    .param p1, "isRtl"    # Z

    .line 353
    iput-boolean p1, p0, Lcom/google/android/material/internal/StaticLayoutBuilderCompat;->isRtl:Z

    .line 354
    return-object p0
.end method

.method public setLineSpacing(FF)Lcom/google/android/material/internal/StaticLayoutBuilderCompat;
    .locals 0
    .param p1, "spacingAdd"    # F
    .param p2, "lineSpacingMultiplier"    # F

    .line 190
    iput p1, p0, Lcom/google/android/material/internal/StaticLayoutBuilderCompat;->lineSpacingAdd:F

    .line 191
    iput p2, p0, Lcom/google/android/material/internal/StaticLayoutBuilderCompat;->lineSpacingMultiplier:F

    .line 192
    return-object p0
.end method

.method public setMaxLines(I)Lcom/google/android/material/internal/StaticLayoutBuilderCompat;
    .locals 0
    .param p1, "maxLines"    # I

    .line 176
    iput p1, p0, Lcom/google/android/material/internal/StaticLayoutBuilderCompat;->maxLines:I

    .line 177
    return-object p0
.end method

.method public setStart(I)Lcom/google/android/material/internal/StaticLayoutBuilderCompat;
    .locals 0
    .param p1, "start"    # I

    .line 150
    iput p1, p0, Lcom/google/android/material/internal/StaticLayoutBuilderCompat;->start:I

    .line 151
    return-object p0
.end method