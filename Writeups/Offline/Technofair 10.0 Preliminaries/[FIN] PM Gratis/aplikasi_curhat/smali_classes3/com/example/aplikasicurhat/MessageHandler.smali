.class public final Lcom/example/aplikasicurhat/MessageHandler;
.super Ljava/lang/Object;
.source "messageHandler.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000L\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0012\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u000e\u0010\u0017\u001a\u00020\u000f2\u0006\u0010\u0018\u001a\u00020\u0019J\u000e\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u001dJ\u0010\u0010\u001e\u001a\u00020\u000f2\u0006\u0010\u001f\u001a\u00020\u000fH\u0007R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u000cX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0019\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u000e\u00a2\u0006\n\n\u0002\u0010\u0012\u001a\u0004\u0008\u0010\u0010\u0011R\u000e\u0010\u0013\u001a\u00020\u0014X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0019\u0010\u0015\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u000e\u00a2\u0006\n\n\u0002\u0010\u0012\u001a\u0004\u0008\u0016\u0010\u0011\u00a8\u0006 "
    }
    d2 = {
        "Lcom/example/aplikasicurhat/MessageHandler;",
        "",
        "context",
        "Landroid/content/Context;",
        "cd",
        "Lcom/example/aplikasicurhat/chatModel;",
        "(Landroid/content/Context;Lcom/example/aplikasicurhat/chatModel;)V",
        "getCd",
        "()Lcom/example/aplikasicurhat/chatModel;",
        "dbHandler",
        "Lcom/example/aplikasicurhat/SQLAccess;",
        "iv",
        "Ljavax/crypto/spec/IvParameterSpec;",
        "jawaban",
        "",
        "",
        "getJawaban",
        "()[Ljava/lang/String;",
        "[Ljava/lang/String;",
        "key",
        "Ljavax/crypto/spec/SecretKeySpec;",
        "pembukaan",
        "getPembukaan",
        "getBotReply",
        "pembuka",
        "",
        "sendInit",
        "",
        "data",
        "",
        "sendMessage",
        "msg",
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


# instance fields
.field private final cd:Lcom/example/aplikasicurhat/chatModel;

.field private final context:Landroid/content/Context;

.field private final dbHandler:Lcom/example/aplikasicurhat/SQLAccess;

.field private final iv:Ljavax/crypto/spec/IvParameterSpec;

.field private final jawaban:[Ljava/lang/String;

.field private final key:Ljavax/crypto/spec/SecretKeySpec;

.field private final pembukaan:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/example/aplikasicurhat/chatModel;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cd"    # Lcom/example/aplikasicurhat/chatModel;

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cd"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/example/aplikasicurhat/MessageHandler;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/example/aplikasicurhat/MessageHandler;->cd:Lcom/example/aplikasicurhat/chatModel;

    .line 16
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    sget v1, Lcom/example/aplikasicurhat/R$string;->cishani:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "context.getString(R.string.cishani)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    const-string v2, "this as java.lang.String).getBytes(charset)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "AES"

    invoke-direct {v0, v1, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    iput-object v0, p0, Lcom/example/aplikasicurhat/MessageHandler;->key:Ljavax/crypto/spec/SecretKeySpec;

    .line 17
    new-instance v0, Ljavax/crypto/spec/IvParameterSpec;

    sget v1, Lcom/example/aplikasicurhat/R$string;->oshiku:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "context.getString(R.string.oshiku)"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v3, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    iput-object v0, p0, Lcom/example/aplikasicurhat/MessageHandler;->iv:Ljavax/crypto/spec/IvParameterSpec;

    .line 21
    nop

    .line 22
    nop

    .line 21
    nop

    .line 23
    nop

    .line 21
    nop

    .line 24
    nop

    .line 21
    nop

    .line 25
    const-string v0, "Ketahuilah bahwa kamu tidak sendirian. Aku siap mendengarkan segala ceritamu dan berada di sampingmu sepanjang waktu."

    const-string v1, "Aku ada di sini untuk mendengarkanmu. Ceritakan saja apa yang kamu ingin katakan."

    const-string v2, "Jangan khawatir, kamu bisa mempercayai aku. Aku siap mendengarkan semua yang ingin kamu ceritakan."

    const-string v3, "Sesekali kita semua butuh seseorang untuk mengeluarkan perasaan kita. Aku siap menjadi pendengarmu yang setia."

    const-string v4, "Jika kamu ingin mengeluarkan semua perasaanmu, kamu bisa mengandalkan aku. Aku akan menjadi tempat yang aman untukmu."

    filled-new-array {v1, v2, v3, v4, v0}, [Ljava/lang/String;

    move-result-object v0

    .line 21
    iput-object v0, p0, Lcom/example/aplikasicurhat/MessageHandler;->pembukaan:[Ljava/lang/String;

    .line 26
    const-string v1, "Wah kamu keren banget"

    const-string v2, "Wah bagus dong"

    const-string v3, "Aku ngerti perasaan kamu"

    const-string v4, "Wah bagus dong"

    .line 27
    const-string v5, "Wah sayang banget"

    .line 26
    nop

    .line 27
    const-string v6, "Aku sangat menyesal mendengar itu. Aku di sini untukmu jika kamu perlu mengobrol atau melupakan semuanya sejenak."

    .line 26
    nop

    .line 28
    const-string v7, "Ceritamu begitu menginspirasi. Aku bangga dengan semua yang telah kamu capai."

    .line 26
    nop

    .line 28
    const-string v8, "Terima kasih sudah berbagi cerita ini. Aku benar-benar menghargainya dan kamu."

    .line 26
    nop

    .line 29
    const-string v9, "Itu terdengar menarik. Aku bisa memahami perasaanmu."

    .line 26
    nop

    .line 29
    const-string v10, "Aku benar-benar mendengarkan setiap kata yang kamu katakan."

    filled-new-array/range {v1 .. v10}, [Ljava/lang/String;

    move-result-object v0

    .line 26
    iput-object v0, p0, Lcom/example/aplikasicurhat/MessageHandler;->jawaban:[Ljava/lang/String;

    .line 30
    new-instance v0, Lcom/example/aplikasicurhat/SQLAccess;

    invoke-direct {v0, p1}, Lcom/example/aplikasicurhat/SQLAccess;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/example/aplikasicurhat/MessageHandler;->dbHandler:Lcom/example/aplikasicurhat/SQLAccess;

    .line 15
    return-void
.end method


# virtual methods
.method public final getBotReply(Z)Ljava/lang/String;
    .locals 4
    .param p1, "pembuka"    # Z

    .line 50
    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 51
    new-instance v1, Lkotlin/ranges/IntRange;

    iget-object v2, p0, Lcom/example/aplikasicurhat/MessageHandler;->pembukaan:[Ljava/lang/String;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    invoke-direct {v1, v0, v2}, Lkotlin/ranges/IntRange;-><init>(II)V

    sget-object v0, Lkotlin/random/Random;->Default:Lkotlin/random/Random$Default;

    check-cast v0, Lkotlin/random/Random;

    invoke-static {v1, v0}, Lkotlin/ranges/RangesKt;->random(Lkotlin/ranges/IntRange;Lkotlin/random/Random;)I

    move-result v0

    .line 52
    .local v0, "rnd":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/example/aplikasicurhat/MessageHandler;->pembukaan:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/example/aplikasicurhat/MessageHandler;->context:Landroid/content/Context;

    sget v3, Lcom/example/aplikasicurhat/R$string;->rahasia:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 55
    .end local v0    # "rnd":I
    :cond_0
    new-instance v1, Lkotlin/ranges/IntRange;

    iget-object v2, p0, Lcom/example/aplikasicurhat/MessageHandler;->jawaban:[Ljava/lang/String;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    invoke-direct {v1, v0, v2}, Lkotlin/ranges/IntRange;-><init>(II)V

    sget-object v0, Lkotlin/random/Random;->Default:Lkotlin/random/Random$Default;

    check-cast v0, Lkotlin/random/Random;

    invoke-static {v1, v0}, Lkotlin/ranges/RangesKt;->random(Lkotlin/ranges/IntRange;Lkotlin/random/Random;)I

    move-result v0

    .line 56
    .restart local v0    # "rnd":I
    iget-object v1, p0, Lcom/example/aplikasicurhat/MessageHandler;->jawaban:[Ljava/lang/String;

    aget-object v1, v1, v0

    return-object v1
.end method

.method public final getCd()Lcom/example/aplikasicurhat/chatModel;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/example/aplikasicurhat/MessageHandler;->cd:Lcom/example/aplikasicurhat/chatModel;

    return-object v0
.end method

.method public final getJawaban()[Ljava/lang/String;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/example/aplikasicurhat/MessageHandler;->jawaban:[Ljava/lang/String;

    return-object v0
.end method

.method public final getPembukaan()[Ljava/lang/String;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/example/aplikasicurhat/MessageHandler;->pembukaan:[Ljava/lang/String;

    return-object v0
.end method

.method public final sendInit([B)V
    .locals 1
    .param p1, "data"    # [B

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    return-void
.end method

.method public final sendMessage(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "msg"    # Ljava/lang/String;

    const-string v0, "msg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    const-string v0, "AES/CBC/PKCS5PADDING"

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 39
    .local v0, "cipher":Ljavax/crypto/Cipher;
    iget-object v1, p0, Lcom/example/aplikasicurhat/MessageHandler;->key:Ljavax/crypto/spec/SecretKeySpec;

    check-cast v1, Ljava/security/Key;

    iget-object v2, p0, Lcom/example/aplikasicurhat/MessageHandler;->iv:Ljavax/crypto/spec/IvParameterSpec;

    check-cast v2, Ljava/security/spec/AlgorithmParameterSpec;

    const/4 v3, 0x1

    invoke-virtual {v0, v3, v1, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 40
    sget-object v1, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    const-string v2, "this as java.lang.String).getBytes(charset)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v1

    .line 41
    .local v1, "cipherText":[B
    invoke-static {}, Ljava/util/Base64;->getEncoder()Ljava/util/Base64$Encoder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/Base64$Encoder;->encodeToString([B)Ljava/lang/String;

    move-result-object v2

    .line 43
    .local v2, "cipherMsg":Ljava/lang/String;
    iget-object v3, p0, Lcom/example/aplikasicurhat/MessageHandler;->dbHandler:Lcom/example/aplikasicurhat/SQLAccess;

    const-string v4, "cipherMsg"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/example/aplikasicurhat/MessageHandler;->cd:Lcom/example/aplikasicurhat/chatModel;

    invoke-virtual {v3, v2, v4}, Lcom/example/aplikasicurhat/SQLAccess;->insertData(Ljava/lang/String;Lcom/example/aplikasicurhat/chatModel;)V

    .line 46
    iget-object v3, p0, Lcom/example/aplikasicurhat/MessageHandler;->dbHandler:Lcom/example/aplikasicurhat/SQLAccess;

    iget-object v4, p0, Lcom/example/aplikasicurhat/MessageHandler;->cd:Lcom/example/aplikasicurhat/chatModel;

    invoke-virtual {v3, v2, v4}, Lcom/example/aplikasicurhat/SQLAccess;->insertData(Ljava/lang/String;Lcom/example/aplikasicurhat/chatModel;)V

    .line 47
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/example/aplikasicurhat/MessageHandler;->getBotReply(Z)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
