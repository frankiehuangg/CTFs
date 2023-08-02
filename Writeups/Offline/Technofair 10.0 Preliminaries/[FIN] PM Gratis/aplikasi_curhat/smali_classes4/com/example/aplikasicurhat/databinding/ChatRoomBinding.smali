.class public final Lcom/example/aplikasicurhat/databinding/ChatRoomBinding;
.super Ljava/lang/Object;
.source "ChatRoomBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final botImage:Landroid/widget/ImageView;

.field public final botMessage:Landroid/widget/TextView;

.field public final botProfile:Landroid/widget/LinearLayout;

.field public final buttonSend:Landroid/widget/Button;

.field public final editChatText:Landroid/widget/EditText;

.field private final rootView:Landroid/widget/RelativeLayout;


# direct methods
.method private constructor <init>(Landroid/widget/RelativeLayout;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/widget/Button;Landroid/widget/EditText;)V
    .locals 0
    .param p1, "rootView"    # Landroid/widget/RelativeLayout;
    .param p2, "botImage"    # Landroid/widget/ImageView;
    .param p3, "botMessage"    # Landroid/widget/TextView;
    .param p4, "botProfile"    # Landroid/widget/LinearLayout;
    .param p5, "buttonSend"    # Landroid/widget/Button;
    .param p6, "editChatText"    # Landroid/widget/EditText;

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/example/aplikasicurhat/databinding/ChatRoomBinding;->rootView:Landroid/widget/RelativeLayout;

    .line 45
    iput-object p2, p0, Lcom/example/aplikasicurhat/databinding/ChatRoomBinding;->botImage:Landroid/widget/ImageView;

    .line 46
    iput-object p3, p0, Lcom/example/aplikasicurhat/databinding/ChatRoomBinding;->botMessage:Landroid/widget/TextView;

    .line 47
    iput-object p4, p0, Lcom/example/aplikasicurhat/databinding/ChatRoomBinding;->botProfile:Landroid/widget/LinearLayout;

    .line 48
    iput-object p5, p0, Lcom/example/aplikasicurhat/databinding/ChatRoomBinding;->buttonSend:Landroid/widget/Button;

    .line 49
    iput-object p6, p0, Lcom/example/aplikasicurhat/databinding/ChatRoomBinding;->editChatText:Landroid/widget/EditText;

    .line 50
    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/example/aplikasicurhat/databinding/ChatRoomBinding;
    .locals 14
    .param p0, "rootView"    # Landroid/view/View;

    .line 79
    sget v0, Lcom/example/aplikasicurhat/R$id;->bot_image:I

    .line 80
    .local v0, "id":I
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 81
    .local v1, "botImage":Landroid/widget/ImageView;
    if-eqz v1, :cond_4

    .line 85
    sget v0, Lcom/example/aplikasicurhat/R$id;->bot_message:I

    .line 86
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Landroid/widget/TextView;

    .line 87
    .local v9, "botMessage":Landroid/widget/TextView;
    if-eqz v9, :cond_3

    .line 91
    sget v0, Lcom/example/aplikasicurhat/R$id;->bot_profile:I

    .line 92
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Landroid/widget/LinearLayout;

    .line 93
    .local v10, "botProfile":Landroid/widget/LinearLayout;
    if-eqz v10, :cond_2

    .line 97
    sget v0, Lcom/example/aplikasicurhat/R$id;->button_send:I

    .line 98
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Landroid/widget/Button;

    .line 99
    .local v11, "buttonSend":Landroid/widget/Button;
    if-eqz v11, :cond_1

    .line 103
    sget v0, Lcom/example/aplikasicurhat/R$id;->edit_chat_text:I

    .line 104
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Landroid/widget/EditText;

    .line 105
    .local v12, "editChatText":Landroid/widget/EditText;
    if-eqz v12, :cond_0

    .line 109
    new-instance v13, Lcom/example/aplikasicurhat/databinding/ChatRoomBinding;

    move-object v3, p0

    check-cast v3, Landroid/widget/RelativeLayout;

    move-object v2, v13

    move-object v4, v1

    move-object v5, v9

    move-object v6, v10

    move-object v7, v11

    move-object v8, v12

    invoke-direct/range {v2 .. v8}, Lcom/example/aplikasicurhat/databinding/ChatRoomBinding;-><init>(Landroid/widget/RelativeLayout;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/widget/Button;Landroid/widget/EditText;)V

    return-object v13

    .line 106
    :cond_0
    goto :goto_0

    .line 100
    .end local v12    # "editChatText":Landroid/widget/EditText;
    :cond_1
    goto :goto_0

    .line 94
    .end local v11    # "buttonSend":Landroid/widget/Button;
    :cond_2
    goto :goto_0

    .line 88
    .end local v10    # "botProfile":Landroid/widget/LinearLayout;
    :cond_3
    goto :goto_0

    .line 82
    .end local v9    # "botMessage":Landroid/widget/TextView;
    :cond_4
    nop

    .line 112
    .end local v1    # "botImage":Landroid/widget/ImageView;
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v1

    .line 113
    .local v1, "missingId":Ljava/lang/String;
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "Missing required view with ID: "

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/example/aplikasicurhat/databinding/ChatRoomBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;

    .line 60
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/example/aplikasicurhat/databinding/ChatRoomBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/example/aplikasicurhat/databinding/ChatRoomBinding;

    move-result-object v0

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/example/aplikasicurhat/databinding/ChatRoomBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "attachToParent"    # Z

    .line 66
    sget v0, Lcom/example/aplikasicurhat/R$layout;->chat_room:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 67
    .local v0, "root":Landroid/view/View;
    if-eqz p2, :cond_0

    .line 68
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 70
    :cond_0
    invoke-static {v0}, Lcom/example/aplikasicurhat/databinding/ChatRoomBinding;->bind(Landroid/view/View;)Lcom/example/aplikasicurhat/databinding/ChatRoomBinding;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 22
    invoke-virtual {p0}, Lcom/example/aplikasicurhat/databinding/ChatRoomBinding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/RelativeLayout;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/example/aplikasicurhat/databinding/ChatRoomBinding;->rootView:Landroid/widget/RelativeLayout;

    return-object v0
.end method
