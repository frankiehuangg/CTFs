.class public final Lcom/example/aplikasicurhat/SQLAccess;
.super Ljava/lang/Object;
.source "SQLAccess.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/example/aplikasicurhat/SQLAccess$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u0000 \u000f2\u00020\u0001:\u0001\u000fB\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0008\u0010\u0007\u001a\u00020\u0008H\u0003J\u0008\u0010\t\u001a\u00020\u0008H\u0007J\u0018\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\u00082\u0006\u0010\r\u001a\u00020\u000eH\u0007R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/example/aplikasicurhat/SQLAccess;",
        "",
        "context",
        "Landroid/content/Context;",
        "(Landroid/content/Context;)V",
        "openHelper",
        "Landroid/database/sqlite/SQLiteOpenHelper;",
        "getCurrTime",
        "",
        "getData",
        "insertData",
        "",
        "chatText",
        "cd",
        "Lcom/example/aplikasicurhat/chatModel;",
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
.field public static final Companion:Lcom/example/aplikasicurhat/SQLAccess$Companion;

.field private static final chatName:Ljava/lang/String; = "chatName"

.field private static final chatSender:Ljava/lang/String; = "chatSender"

.field private static final chatTextData:Ljava/lang/String; = "chatText"

.field private static final chatTime:Ljava/lang/String; = "chatTime"

.field private static final tableName:Ljava/lang/String; = "chatData"


# instance fields
.field private final openHelper:Landroid/database/sqlite/SQLiteOpenHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/example/aplikasicurhat/SQLAccess$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/example/aplikasicurhat/SQLAccess$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/example/aplikasicurhat/SQLAccess;->Companion:Lcom/example/aplikasicurhat/SQLAccess$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Lcom/example/aplikasicurhat/DatabaseOpenHelper;

    invoke-direct {v0, p1}, Lcom/example/aplikasicurhat/DatabaseOpenHelper;-><init>(Landroid/content/Context;)V

    check-cast v0, Landroid/database/sqlite/SQLiteOpenHelper;

    iput-object v0, p0, Lcom/example/aplikasicurhat/SQLAccess;->openHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    .line 12
    return-void
.end method

.method private final getCurrTime()Ljava/lang/String;
    .locals 2

    .line 26
    invoke-static {}, Ljava/time/LocalDateTime;->now()Ljava/time/LocalDateTime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/LocalDateTime;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "now().toString()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public final getData()Ljava/lang/String;
    .locals 9

    .line 30
    iget-object v0, p0, Lcom/example/aplikasicurhat/SQLAccess;->openHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v0, "openHelper.writableDatabase"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    nop

    .line 32
    const-string v2, "chatData"

    .line 33
    const/4 v3, 0x0

    .line 34
    const-string v4, "chatSender=?"

    .line 35
    const/4 v5, 0x0

    .line 36
    const/4 v6, 0x0

    .line 37
    const/4 v7, 0x0

    .line 38
    const/4 v8, 0x0

    .line 31
    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 40
    .local v0, "c":Landroid/database/Cursor;
    const-string v2, "default"

    .line 41
    .local v2, "dbres":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 42
    const-string v3, "chatText"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "c.getString(c.getColumnIndex(chatTextData))"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v2, v3

    .line 45
    :cond_0
    return-object v2
.end method

.method public final insertData(Ljava/lang/String;Lcom/example/aplikasicurhat/chatModel;)V
    .locals 7
    .param p1, "chatText"    # Ljava/lang/String;
    .param p2, "cd"    # Lcom/example/aplikasicurhat/chatModel;

    const-string v0, "chatText"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "cd"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    iget-object v1, p0, Lcom/example/aplikasicurhat/SQLAccess;->openHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v2, "openHelper.writableDatabase"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    move-object v3, v2

    .local v3, "$this$insertData_u24lambda_u240":Landroid/content/ContentValues;
    const/4 v4, 0x0

    .line 51
    .local v4, "$i$a$-apply-SQLAccess$insertData$values$1":I
    const-string v5, "chatName"

    invoke-virtual {p2}, Lcom/example/aplikasicurhat/chatModel;->getChatName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    const-string v5, "chatSender"

    invoke-virtual {p2}, Lcom/example/aplikasicurhat/chatModel;->getUsername()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    invoke-virtual {v3, v0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    const-string v0, "chatTime"

    invoke-direct {p0}, Lcom/example/aplikasicurhat/SQLAccess;->getCurrTime()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    nop

    .line 50
    .end local v3    # "$this$insertData_u24lambda_u240":Landroid/content/ContentValues;
    .end local v4    # "$i$a$-apply-SQLAccess$insertData$values$1":I
    move-object v0, v2

    .line 56
    .local v0, "values":Landroid/content/ContentValues;
    const-string v2, "chatData"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 57
    return-void
.end method
