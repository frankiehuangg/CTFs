.class public Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelper$SQLiteAssetException;
.super Landroid/database/sqlite/SQLiteException;
.source "SQLiteAssetHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SQLiteAssetException"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 509
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteException;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "error"    # Ljava/lang/String;

    .line 512
    invoke-direct {p0, p1}, Landroid/database/sqlite/SQLiteException;-><init>(Ljava/lang/String;)V

    .line 513
    return-void
.end method
