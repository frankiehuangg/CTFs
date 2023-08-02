.class public final Lcom/example/aplikasicurhat/ChatRoomActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "ChatRoomActivity.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0012\u0010\u0003\u001a\u00020\u00042\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006H\u0014\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/example/aplikasicurhat/ChatRoomActivity;",
        "Landroidx/appcompat/app/AppCompatActivity;",
        "()V",
        "onCreate",
        "",
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


# direct methods
.method public static synthetic $r8$lambda$3gBlD7kFR3aNAWrPp0cn3bkQf6U(Landroid/widget/EditText;Lcom/example/aplikasicurhat/ChatRoomActivity;Landroid/widget/TextView;Lcom/example/aplikasicurhat/MessageHandler;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/example/aplikasicurhat/ChatRoomActivity;->onCreate$lambda$0(Landroid/widget/EditText;Lcom/example/aplikasicurhat/ChatRoomActivity;Landroid/widget/TextView;Lcom/example/aplikasicurhat/MessageHandler;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method private static final onCreate$getCurrTime()Ljava/lang/String;
    .locals 3

    .line 27
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 28
    invoke-static {}, Ljava/time/LocalDateTime;->now()Ljava/time/LocalDateTime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/LocalDateTime;->toString()Ljava/lang/String;

    move-result-object v0

    .line 27
    const-string v1, "{\n                LocalD\u2026.toString()\n            }"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    .line 30
    :cond_0
    new-instance v0, Lkotlin/NotImplementedError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "An operation is not implemented: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "VERSION.SDK_INT < O"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lkotlin/NotImplementedError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static final onCreate$lambda$0(Landroid/widget/EditText;Lcom/example/aplikasicurhat/ChatRoomActivity;Landroid/widget/TextView;Lcom/example/aplikasicurhat/MessageHandler;Landroid/view/View;)V
    .locals 3
    .param p0, "$edtMsg"    # Landroid/widget/EditText;
    .param p1, "this$0"    # Lcom/example/aplikasicurhat/ChatRoomActivity;
    .param p2, "$botMsg"    # Landroid/widget/TextView;
    .param p3, "$hMsg"    # Lcom/example/aplikasicurhat/MessageHandler;
    .param p4, "it"    # Landroid/view/View;

    const-string v0, "$edtMsg"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$botMsg"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$hMsg"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

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

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz v0, :cond_1

    .line 61
    move-object v0, p1

    check-cast v0, Landroid/content/Context;

    sget v2, Lcom/example/aplikasicurhat/R$string;->masukkan_pesan_notif:I

    invoke-virtual {p1, v2}, Lcom/example/aplikasicurhat/ChatRoomActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 64
    :cond_1
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/example/aplikasicurhat/MessageHandler;->sendMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    :goto_1
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 12
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 23
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 24
    sget v0, Lcom/example/aplikasicurhat/R$layout;->chat_room:I

    invoke-virtual {p0, v0}, Lcom/example/aplikasicurhat/ChatRoomActivity;->setContentView(I)V

    .line 33
    sget v0, Lcom/example/aplikasicurhat/R$id;->edit_chat_text:I

    invoke-virtual {p0, v0}, Lcom/example/aplikasicurhat/ChatRoomActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "findViewById(R.id.edit_chat_text)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/EditText;

    .line 34
    .local v0, "edtMsg":Landroid/widget/EditText;
    sget v1, Lcom/example/aplikasicurhat/R$id;->button_send:I

    invoke-virtual {p0, v1}, Lcom/example/aplikasicurhat/ChatRoomActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const-string v2, "findViewById(R.id.button_send)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/widget/Button;

    .line 35
    .local v1, "sendButton":Landroid/widget/Button;
    sget v2, Lcom/example/aplikasicurhat/R$id;->bot_image:I

    invoke-virtual {p0, v2}, Lcom/example/aplikasicurhat/ChatRoomActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const-string v3, "findViewById(R.id.bot_image)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroid/widget/ImageView;

    .line 36
    .local v2, "profileImage":Landroid/widget/ImageView;
    sget v3, Lcom/example/aplikasicurhat/R$id;->bot_message:I

    invoke-virtual {p0, v3}, Lcom/example/aplikasicurhat/ChatRoomActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const-string v4, "findViewById(R.id.bot_message)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Landroid/widget/TextView;

    .line 37
    .local v3, "botMsg":Landroid/widget/TextView;
    move-object v4, p0

    .line 38
    .local v4, "context":Lcom/example/aplikasicurhat/ChatRoomActivity;
    invoke-virtual {p0}, Lcom/example/aplikasicurhat/ChatRoomActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "username"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_0

    const-string v5, ""

    .line 39
    .local v5, "username":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Lcom/example/aplikasicurhat/ChatRoomActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v7, "m"

    const/4 v8, 0x1

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 41
    .local v6, "botId":I
    new-instance v9, Lcom/example/aplikasicurhat/chatModel;

    invoke-static {}, Lcom/example/aplikasicurhat/ChatRoomActivity;->onCreate$getCurrTime()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v5, v6, v10}, Lcom/example/aplikasicurhat/chatModel;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 42
    .local v9, "modelChat":Lcom/example/aplikasicurhat/chatModel;
    new-instance v10, Lcom/example/aplikasicurhat/MessageHandler;

    move-object v11, v4

    check-cast v11, Landroid/content/Context;

    invoke-direct {v10, v11, v9}, Lcom/example/aplikasicurhat/MessageHandler;-><init>(Landroid/content/Context;Lcom/example/aplikasicurhat/chatModel;)V

    .line 44
    .local v10, "hMsg":Lcom/example/aplikasicurhat/MessageHandler;
    invoke-virtual {p0}, Lcom/example/aplikasicurhat/ChatRoomActivity;->getIntent()Landroid/content/Intent;

    move-result-object v11

    invoke-virtual {v11, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    packed-switch v7, :pswitch_data_0

    .line 55
    sget v7, Lcom/example/aplikasicurhat/R$drawable;->dio_brando:I

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 52
    :pswitch_0
    sget v7, Lcom/example/aplikasicurhat/R$drawable;->mashiro_cuy:I

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 49
    :pswitch_1
    sget v7, Lcom/example/aplikasicurhat/R$drawable;->fw9_imraeaakn9g:I

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 46
    :pswitch_2
    sget v7, Lcom/example/aplikasicurhat/R$drawable;->marsha_cuy:I

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 58
    :goto_0
    invoke-virtual {v10, v8}, Lcom/example/aplikasicurhat/MessageHandler;->getBotReply(Z)Ljava/lang/String;

    move-result-object v7

    check-cast v7, Ljava/lang/CharSequence;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 59
    new-instance v7, Lcom/example/aplikasicurhat/ChatRoomActivity$$ExternalSyntheticLambda0;

    invoke-direct {v7, v0, p0, v3, v10}, Lcom/example/aplikasicurhat/ChatRoomActivity$$ExternalSyntheticLambda0;-><init>(Landroid/widget/EditText;Lcom/example/aplikasicurhat/ChatRoomActivity;Landroid/widget/TextView;Lcom/example/aplikasicurhat/MessageHandler;)V

    invoke-virtual {v1, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 68
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
