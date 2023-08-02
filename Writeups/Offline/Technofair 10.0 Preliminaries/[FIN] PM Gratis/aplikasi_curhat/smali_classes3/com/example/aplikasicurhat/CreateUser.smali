.class public final Lcom/example/aplikasicurhat/CreateUser;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "CreateUser.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u001a\u0010\n\u001a\u00020\u000b2\u0008\u0010\u000c\u001a\u0004\u0018\u00010\r2\u0006\u0010\u000e\u001a\u00020\u000fH\u0002J\u0008\u0010\u0010\u001a\u00020\u000bH\u0002J\u0012\u0010\u0011\u001a\u00020\u000b2\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0013H\u0014R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0006X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0006X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0006X\u0082.\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/example/aplikasicurhat/CreateUser;",
        "Landroidx/appcompat/app/AppCompatActivity;",
        "()V",
        "edtMsg",
        "Landroid/widget/EditText;",
        "m1",
        "Landroid/widget/ImageView;",
        "m2",
        "m3",
        "m4",
        "bukaChatRoom",
        "",
        "username",
        "",
        "m",
        "",
        "errIsiUsername",
        "onCreate",
        "savedInstanceState",
        "Landroid/os/Bundle;",
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
.field private edtMsg:Landroid/widget/EditText;

.field private m1:Landroid/widget/ImageView;

.field private m2:Landroid/widget/ImageView;

.field private m3:Landroid/widget/ImageView;

.field private m4:Landroid/widget/ImageView;


# direct methods
.method public static synthetic $r8$lambda$4QOcrBTwp-tUsBxyn-9SscrRvug(Lcom/example/aplikasicurhat/CreateUser;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/example/aplikasicurhat/CreateUser;->onCreate$lambda$1(Lcom/example/aplikasicurhat/CreateUser;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$XD488FrjoQzz_qlEIaiypyP29Ik(Lcom/example/aplikasicurhat/CreateUser;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/example/aplikasicurhat/CreateUser;->onCreate$lambda$0(Lcom/example/aplikasicurhat/CreateUser;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Y-13-sbDOSPEATY27XiB3TSTKeM(Lcom/example/aplikasicurhat/CreateUser;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/example/aplikasicurhat/CreateUser;->onCreate$lambda$3(Lcom/example/aplikasicurhat/CreateUser;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$gEvG78C-9z1jS-vmDl9ALTU3jYs(Lcom/example/aplikasicurhat/CreateUser;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/example/aplikasicurhat/CreateUser;->onCreate$lambda$2(Lcom/example/aplikasicurhat/CreateUser;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method private final bukaChatRoom(Ljava/lang/String;I)V
    .locals 4
    .param p1, "username"    # Ljava/lang/String;
    .param p2, "m"    # I

    .line 63
    new-instance v0, Landroid/content/Intent;

    move-object v1, p0

    check-cast v1, Landroid/content/Context;

    const-class v2, Lcom/example/aplikasicurhat/ChatRoomActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    move-object v1, v0

    .local v1, "$this$bukaChatRoom_u24lambda_u244":Landroid/content/Intent;
    const/4 v2, 0x0

    .line 64
    .local v2, "$i$a$-apply-CreateUser$bukaChatRoom$intentChat$1":I
    const-string v3, "username"

    invoke-virtual {v1, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 65
    const-string v3, "m"

    invoke-virtual {v1, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 66
    nop

    .line 63
    .end local v1    # "$this$bukaChatRoom_u24lambda_u244":Landroid/content/Intent;
    .end local v2    # "$i$a$-apply-CreateUser$bukaChatRoom$intentChat$1":I
    nop

    .line 67
    .local v0, "intentChat":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/example/aplikasicurhat/CreateUser;->startActivity(Landroid/content/Intent;)V

    .line 68
    return-void
.end method

.method private final errIsiUsername()V
    .locals 3

    .line 71
    move-object v0, p0

    check-cast v0, Landroid/content/Context;

    sget v1, Lcom/example/aplikasicurhat/R$string;->masukkan_username:I

    invoke-virtual {p0, v1}, Lcom/example/aplikasicurhat/CreateUser;->getString(I)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 72
    return-void
.end method

.method private static final onCreate$lambda$0(Lcom/example/aplikasicurhat/CreateUser;Landroid/view/View;)V
    .locals 4
    .param p0, "this$0"    # Lcom/example/aplikasicurhat/CreateUser;
    .param p1, "it"    # Landroid/view/View;

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    iget-object v0, p0, Lcom/example/aplikasicurhat/CreateUser;->edtMsg:Landroid/widget/EditText;

    const/4 v1, 0x0

    const-string v2, "edtMsg"

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v3, 0x1

    if-lez v0, :cond_1

    move v0, v3

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_3

    .line 30
    iget-object v0, p0, Lcom/example/aplikasicurhat/CreateUser;->edtMsg:Landroid/widget/EditText;

    if-nez v0, :cond_2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    move-object v1, v0

    :goto_1
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v3}, Lcom/example/aplikasicurhat/CreateUser;->bukaChatRoom(Ljava/lang/String;I)V

    goto :goto_2

    .line 33
    :cond_3
    invoke-direct {p0}, Lcom/example/aplikasicurhat/CreateUser;->errIsiUsername()V

    .line 35
    :goto_2
    return-void
.end method

.method private static final onCreate$lambda$1(Lcom/example/aplikasicurhat/CreateUser;Landroid/view/View;)V
    .locals 3
    .param p0, "this$0"    # Lcom/example/aplikasicurhat/CreateUser;
    .param p1, "it"    # Landroid/view/View;

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    iget-object v0, p0, Lcom/example/aplikasicurhat/CreateUser;->edtMsg:Landroid/widget/EditText;

    const/4 v1, 0x0

    const-string v2, "edtMsg"

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_3

    .line 38
    iget-object v0, p0, Lcom/example/aplikasicurhat/CreateUser;->edtMsg:Landroid/widget/EditText;

    if-nez v0, :cond_2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    move-object v1, v0

    :goto_1
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lcom/example/aplikasicurhat/CreateUser;->bukaChatRoom(Ljava/lang/String;I)V

    goto :goto_2

    .line 41
    :cond_3
    invoke-direct {p0}, Lcom/example/aplikasicurhat/CreateUser;->errIsiUsername()V

    .line 43
    :goto_2
    return-void
.end method

.method private static final onCreate$lambda$2(Lcom/example/aplikasicurhat/CreateUser;Landroid/view/View;)V
    .locals 3
    .param p0, "this$0"    # Lcom/example/aplikasicurhat/CreateUser;
    .param p1, "it"    # Landroid/view/View;

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    iget-object v0, p0, Lcom/example/aplikasicurhat/CreateUser;->edtMsg:Landroid/widget/EditText;

    const/4 v1, 0x0

    const-string v2, "edtMsg"

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_3

    .line 46
    iget-object v0, p0, Lcom/example/aplikasicurhat/CreateUser;->edtMsg:Landroid/widget/EditText;

    if-nez v0, :cond_2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    move-object v1, v0

    :goto_1
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    invoke-direct {p0, v0, v1}, Lcom/example/aplikasicurhat/CreateUser;->bukaChatRoom(Ljava/lang/String;I)V

    goto :goto_2

    .line 49
    :cond_3
    invoke-direct {p0}, Lcom/example/aplikasicurhat/CreateUser;->errIsiUsername()V

    .line 51
    :goto_2
    return-void
.end method

.method private static final onCreate$lambda$3(Lcom/example/aplikasicurhat/CreateUser;Landroid/view/View;)V
    .locals 3
    .param p0, "this$0"    # Lcom/example/aplikasicurhat/CreateUser;
    .param p1, "it"    # Landroid/view/View;

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    iget-object v0, p0, Lcom/example/aplikasicurhat/CreateUser;->edtMsg:Landroid/widget/EditText;

    const/4 v1, 0x0

    const-string v2, "edtMsg"

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_3

    .line 54
    iget-object v0, p0, Lcom/example/aplikasicurhat/CreateUser;->edtMsg:Landroid/widget/EditText;

    if-nez v0, :cond_2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    move-object v1, v0

    :goto_1
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    invoke-direct {p0, v0, v1}, Lcom/example/aplikasicurhat/CreateUser;->bukaChatRoom(Ljava/lang/String;I)V

    goto :goto_2

    .line 57
    :cond_3
    invoke-direct {p0}, Lcom/example/aplikasicurhat/CreateUser;->errIsiUsername()V

    .line 59
    :goto_2
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 19
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 20
    sget v0, Lcom/example/aplikasicurhat/R$layout;->create_user:I

    invoke-virtual {p0, v0}, Lcom/example/aplikasicurhat/CreateUser;->setContentView(I)V

    .line 22
    sget v0, Lcom/example/aplikasicurhat/R$id;->username_input:I

    invoke-virtual {p0, v0}, Lcom/example/aplikasicurhat/CreateUser;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "findViewById(R.id.username_input)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/example/aplikasicurhat/CreateUser;->edtMsg:Landroid/widget/EditText;

    .line 23
    sget v0, Lcom/example/aplikasicurhat/R$id;->member1:I

    invoke-virtual {p0, v0}, Lcom/example/aplikasicurhat/CreateUser;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "findViewById(R.id.member1)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/example/aplikasicurhat/CreateUser;->m1:Landroid/widget/ImageView;

    .line 24
    sget v0, Lcom/example/aplikasicurhat/R$id;->member2:I

    invoke-virtual {p0, v0}, Lcom/example/aplikasicurhat/CreateUser;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "findViewById(R.id.member2)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/example/aplikasicurhat/CreateUser;->m2:Landroid/widget/ImageView;

    .line 25
    sget v0, Lcom/example/aplikasicurhat/R$id;->member3:I

    invoke-virtual {p0, v0}, Lcom/example/aplikasicurhat/CreateUser;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "findViewById(R.id.member3)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/example/aplikasicurhat/CreateUser;->m3:Landroid/widget/ImageView;

    .line 26
    sget v0, Lcom/example/aplikasicurhat/R$id;->member4:I

    invoke-virtual {p0, v0}, Lcom/example/aplikasicurhat/CreateUser;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "findViewById(R.id.member4)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/example/aplikasicurhat/CreateUser;->m4:Landroid/widget/ImageView;

    .line 28
    iget-object v0, p0, Lcom/example/aplikasicurhat/CreateUser;->m1:Landroid/widget/ImageView;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "m1"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    new-instance v2, Lcom/example/aplikasicurhat/CreateUser$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/example/aplikasicurhat/CreateUser$$ExternalSyntheticLambda0;-><init>(Lcom/example/aplikasicurhat/CreateUser;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 36
    iget-object v0, p0, Lcom/example/aplikasicurhat/CreateUser;->m2:Landroid/widget/ImageView;

    if-nez v0, :cond_1

    const-string v0, "m2"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_1
    new-instance v2, Lcom/example/aplikasicurhat/CreateUser$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lcom/example/aplikasicurhat/CreateUser$$ExternalSyntheticLambda1;-><init>(Lcom/example/aplikasicurhat/CreateUser;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 44
    iget-object v0, p0, Lcom/example/aplikasicurhat/CreateUser;->m3:Landroid/widget/ImageView;

    if-nez v0, :cond_2

    const-string v0, "m3"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_2
    new-instance v2, Lcom/example/aplikasicurhat/CreateUser$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0}, Lcom/example/aplikasicurhat/CreateUser$$ExternalSyntheticLambda2;-><init>(Lcom/example/aplikasicurhat/CreateUser;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 52
    iget-object v0, p0, Lcom/example/aplikasicurhat/CreateUser;->m4:Landroid/widget/ImageView;

    if-nez v0, :cond_3

    const-string v0, "m4"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    move-object v1, v0

    :goto_0
    new-instance v0, Lcom/example/aplikasicurhat/CreateUser$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/example/aplikasicurhat/CreateUser$$ExternalSyntheticLambda3;-><init>(Lcom/example/aplikasicurhat/CreateUser;)V

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 60
    return-void
.end method
