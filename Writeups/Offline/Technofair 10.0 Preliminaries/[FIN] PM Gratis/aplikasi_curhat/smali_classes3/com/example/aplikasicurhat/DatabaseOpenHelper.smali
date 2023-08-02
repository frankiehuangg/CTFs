.class public final Lcom/example/aplikasicurhat/DatabaseOpenHelper;
.super Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelper;
.source "DatabaseOpenHelper.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/example/aplikasicurhat/DatabaseOpenHelper$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u0000 \u00052\u00020\u0001:\u0001\u0005B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004\u00a8\u0006\u0006"
    }
    d2 = {
        "Lcom/example/aplikasicurhat/DatabaseOpenHelper;",
        "Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelper;",
        "context",
        "Landroid/content/Context;",
        "(Landroid/content/Context;)V",
        "Companion",
        "app_debug"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lcom/example/aplikasicurhat/DatabaseOpenHelper$Companion;

.field private static final DATABASE_NAME:Ljava/lang/String; = "dbChat.db"

.field private static final DATABASE_VERSION:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/example/aplikasicurhat/DatabaseOpenHelper$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/example/aplikasicurhat/DatabaseOpenHelper$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/example/aplikasicurhat/DatabaseOpenHelper;->Companion:Lcom/example/aplikasicurhat/DatabaseOpenHelper$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    const/4 v0, 0x0

    const/4 v1, 0x1

    const-string v2, "dbChat.db"

    invoke-direct {p0, p1, v2, v0, v1}, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 6
    return-void
.end method
