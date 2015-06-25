.class public Lcom/android/internal/telephony/uicc/Subscription;
.super Ljava/lang/Object;
.source "Subscription.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/uicc/Subscription$SubscriptionHandler;,
        Lcom/android/internal/telephony/uicc/Subscription$IccIdLoadState;
    }
.end annotation


# static fields
.field private static final EVENT_GET_ICCID_DONE:I = 0x4

.field private static final EVENT_ICC_CHANGED:I = 0x1

.field private static final LOG_TAG:Ljava/lang/String; = "Subscription"


# instance fields
.field private mCi:Lcom/android/internal/telephony/CommandsInterface;

.field private mHandler:Landroid/os/Handler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mIccId:Ljava/lang/String;

.field private mIccIdLoadState:Lcom/android/internal/telephony/uicc/Subscription$IccIdLoadState;

.field mSimActivator:Lcom/android/internal/telephony/uicc/ISimActivator;

.field mUiccController:Lcom/android/internal/telephony/uicc/UiccController;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/uicc/UiccController;Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 4
    .param p1, "uiccController"    # Lcom/android/internal/telephony/uicc/UiccController;
    .param p2, "ci"    # Lcom/android/internal/telephony/CommandsInterface;

    .prologue
    const/4 v3, 0x0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object v3, p0, Lcom/android/internal/telephony/uicc/Subscription;->mIccId:Ljava/lang/String;

    .line 43
    sget-object v0, Lcom/android/internal/telephony/uicc/Subscription$IccIdLoadState;->UNLOAD:Lcom/android/internal/telephony/uicc/Subscription$IccIdLoadState;

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/Subscription;->mIccIdLoadState:Lcom/android/internal/telephony/uicc/Subscription$IccIdLoadState;

    .line 49
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/Subscription;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    .line 50
    iput-object p2, p0, Lcom/android/internal/telephony/uicc/Subscription;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 51
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/Subscription;->getSimActivator()V

    .line 53
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/Subscription;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/UiccController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/Subscription;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1}, Lcom/android/internal/telephony/CommandsInterface;->getInstanceId()I

    move-result v1

    invoke-static {v0, v1}, Lmiui/telephony/SimInfoAdapter;->resetUninsertIccCard(Landroid/content/Context;I)V

    .line 55
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "Subscription"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/Subscription;->mHandlerThread:Landroid/os/HandlerThread;

    .line 56
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/Subscription;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 57
    new-instance v0, Lcom/android/internal/telephony/uicc/Subscription$SubscriptionHandler;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/Subscription;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/uicc/Subscription$SubscriptionHandler;-><init>(Lcom/android/internal/telephony/uicc/Subscription;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/Subscription;->mHandler:Landroid/os/Handler;

    .line 58
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/Subscription;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/Subscription;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/uicc/UiccController;->registerForIccChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 59
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/uicc/Subscription;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/uicc/Subscription;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/Subscription;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/uicc/Subscription;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/uicc/Subscription;

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/Subscription;->handleIccChanged()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/internal/telephony/uicc/Subscription;Landroid/os/AsyncResult;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/uicc/Subscription;
    .param p1, "x1"    # Landroid/os/AsyncResult;

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/Subscription;->handleGetIccIdDone(Landroid/os/AsyncResult;)V

    return-void
.end method

.method private getIccId()V
    .locals 5

    .prologue
    .line 121
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/Subscription;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/Subscription;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    iget-object v2, v2, Lcom/android/internal/telephony/uicc/UiccController;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/Subscription;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    iget-object v2, v2, Lcom/android/internal/telephony/uicc/UiccController;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    iget-object v2, v2, Lcom/android/internal/telephony/uicc/UiccCard;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-nez v2, :cond_1

    .line 131
    :cond_0
    :goto_0
    return-void

    .line 122
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/Subscription;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    iget-object v2, v2, Lcom/android/internal/telephony/uicc/UiccController;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/uicc/UiccCard;->getApplicationIndex(I)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v0

    .line 123
    .local v0, "cardApp":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    if-eqz v0, :cond_0

    .line 124
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccFileHandler()Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-result-object v1

    .line 125
    .local v1, "fileHandler":Lcom/android/internal/telephony/uicc/IccFileHandler;
    if-eqz v1, :cond_0

    .line 126
    const-string v2, "start load iccid."

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/uicc/Subscription;->log(Ljava/lang/String;)V

    .line 127
    const/16 v2, 0x2fe2

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/Subscription;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 128
    sget-object v2, Lcom/android/internal/telephony/uicc/Subscription$IccIdLoadState;->LOADING:Lcom/android/internal/telephony/uicc/Subscription$IccIdLoadState;

    iput-object v2, p0, Lcom/android/internal/telephony/uicc/Subscription;->mIccIdLoadState:Lcom/android/internal/telephony/uicc/Subscription$IccIdLoadState;

    goto :goto_0
.end method

.method private getSimActivator()V
    .locals 3

    .prologue
    .line 62
    invoke-static {}, Lcom/android/internal/telephony/RILFactory;->isLeadcore()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    new-instance v0, Lcom/android/internal/telephony/lc/LCSimActivator;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/Subscription;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    iget-object v1, v1, Lcom/android/internal/telephony/uicc/UiccController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/Subscription;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v2}, Lcom/android/internal/telephony/CommandsInterface;->getInstanceId()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/lc/LCSimActivator;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/Subscription;->mSimActivator:Lcom/android/internal/telephony/uicc/ISimActivator;

    .line 67
    :goto_0
    return-void

    .line 65
    :cond_0
    new-instance v0, Lcom/android/internal/telephony/qc/QCSimActivator;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/Subscription;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/Subscription;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/qc/QCSimActivator;-><init>(Lcom/android/internal/telephony/uicc/UiccController;Lcom/android/internal/telephony/CommandsInterface;)V

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/Subscription;->mSimActivator:Lcom/android/internal/telephony/uicc/ISimActivator;

    goto :goto_0
.end method

.method private handleGetIccIdDone(Landroid/os/AsyncResult;)V
    .locals 5
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    const/4 v3, 0x0

    .line 134
    iget-object v2, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_3

    .line 135
    iget-object v2, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    move-object v0, v2

    check-cast v0, [B

    .line 136
    .local v0, "data":[B
    array-length v2, v0

    invoke-static {v0, v3, v2}, Lcom/android/internal/telephony/uicc/IccUtils;->parseIccIdToString([BII)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/uicc/Subscription;->mIccId:Ljava/lang/String;

    .line 137
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/Subscription;->mIccId:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 138
    sget-object v2, Lcom/android/internal/telephony/uicc/Subscription$IccIdLoadState;->UNLOAD:Lcom/android/internal/telephony/uicc/Subscription$IccIdLoadState;

    iput-object v2, p0, Lcom/android/internal/telephony/uicc/Subscription;->mIccIdLoadState:Lcom/android/internal/telephony/uicc/Subscription$IccIdLoadState;

    .line 139
    const-string v2, "get iccid is empty, retry get iccid."

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/uicc/Subscription;->log(Ljava/lang/String;)V

    .line 140
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/Subscription;->getIccId()V

    .line 154
    .end local v0    # "data":[B
    :goto_0
    return-void

    .line 143
    .restart local v0    # "data":[B
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/Subscription;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    iget-object v2, v2, Lcom/android/internal/telephony/uicc/UiccController;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/internal/telephony/uicc/Subscription;->mIccId:Ljava/lang/String;

    invoke-static {v2, v4}, Lmiui/telephony/SimInfoManager;->getSimInfoByIccId(Landroid/content/Context;Ljava/lang/String;)Lmiui/telephony/SimInfoManager$SimInfoRecord;

    move-result-object v1

    .line 145
    .local v1, "simInfo":Lmiui/telephony/SimInfoManager$SimInfoRecord;
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/Subscription;->mSimActivator:Lcom/android/internal/telephony/uicc/ISimActivator;

    if-eqz v1, :cond_1

    iget-boolean v2, v1, Lmiui/telephony/SimInfoManager$SimInfoRecord;->mIsActivte:Z

    if-eqz v2, :cond_2

    :cond_1
    const/4 v2, 0x1

    :goto_1
    invoke-interface {v4, v2}, Lcom/android/internal/telephony/uicc/ISimActivator;->onIccCardPresent(Z)V

    .line 147
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/Subscription;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    iget-object v2, v2, Lcom/android/internal/telephony/uicc/UiccController;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/Subscription;->mIccId:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/internal/telephony/uicc/Subscription;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v4}, Lcom/android/internal/telephony/CommandsInterface;->getInstanceId()I

    move-result v4

    invoke-static {v2, v3, v4}, Lmiui/telephony/SimInfoAdapter;->addSimInfoRecord(Landroid/content/Context;Ljava/lang/String;I)Landroid/net/Uri;

    .line 148
    sget-object v2, Lcom/android/internal/telephony/uicc/Subscription$IccIdLoadState;->LOADED:Lcom/android/internal/telephony/uicc/Subscription$IccIdLoadState;

    iput-object v2, p0, Lcom/android/internal/telephony/uicc/Subscription;->mIccIdLoadState:Lcom/android/internal/telephony/uicc/Subscription$IccIdLoadState;

    goto :goto_0

    :cond_2
    move v2, v3

    .line 145
    goto :goto_1

    .line 150
    .end local v0    # "data":[B
    .end local v1    # "simInfo":Lmiui/telephony/SimInfoManager$SimInfoRecord;
    :cond_3
    sget-object v2, Lcom/android/internal/telephony/uicc/Subscription$IccIdLoadState;->UNLOAD:Lcom/android/internal/telephony/uicc/Subscription$IccIdLoadState;

    iput-object v2, p0, Lcom/android/internal/telephony/uicc/Subscription;->mIccIdLoadState:Lcom/android/internal/telephony/uicc/Subscription$IccIdLoadState;

    .line 151
    const-string v2, "get iccid error, retry get iccid."

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/uicc/Subscription;->log(Ljava/lang/String;)V

    .line 152
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/Subscription;->getIccId()V

    goto :goto_0
.end method

.method private handleIccChanged()V
    .locals 2

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/Subscription;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/UiccController;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/Subscription;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/UiccController;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/UiccCard;->mCardState:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->isCardPresent()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 105
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/Subscription;->mIccIdLoadState:Lcom/android/internal/telephony/uicc/Subscription$IccIdLoadState;

    sget-object v1, Lcom/android/internal/telephony/uicc/Subscription$IccIdLoadState;->UNLOAD:Lcom/android/internal/telephony/uicc/Subscription$IccIdLoadState;

    if-ne v0, v1, :cond_0

    .line 106
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/Subscription;->getIccId()V

    .line 115
    :cond_0
    :goto_0
    return-void

    .line 108
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/Subscription;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/UiccController;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/Subscription;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/UiccController;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/UiccCard;->mCardState:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_ABSENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    if-ne v0, v1, :cond_0

    .line 110
    :cond_2
    sget-object v0, Lcom/android/internal/telephony/uicc/Subscription$IccIdLoadState;->UNLOAD:Lcom/android/internal/telephony/uicc/Subscription$IccIdLoadState;

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/Subscription;->mIccIdLoadState:Lcom/android/internal/telephony/uicc/Subscription$IccIdLoadState;

    .line 111
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/Subscription;->mIccId:Ljava/lang/String;

    .line 112
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/Subscription;->mSimActivator:Lcom/android/internal/telephony/uicc/ISimActivator;

    invoke-interface {v0}, Lcom/android/internal/telephony/uicc/ISimActivator;->onIccCardAbsent()V

    .line 113
    const-string v0, "icc card state changed to absent."

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/Subscription;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 3
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    .line 157
    const-string v0, "Subscription"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[SLOT"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/Subscription;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v2}, Lcom/android/internal/telephony/CommandsInterface;->getInstanceId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    return-void
.end method


# virtual methods
.method public setActivate(Z)Z
    .locals 4
    .param p1, "isActivate"    # Z

    .prologue
    const/4 v2, 0x0

    .line 93
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/Subscription;->mSimActivator:Lcom/android/internal/telephony/uicc/ISimActivator;

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/uicc/ISimActivator;->setActivate(Z)Z

    move-result v0

    .line 94
    .local v0, "result":Z
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/Subscription;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    iget-object v1, v1, Lcom/android/internal/telephony/uicc/UiccController;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/Subscription;->mIccId:Ljava/lang/String;

    invoke-static {v1, v3, p1}, Lmiui/telephony/SimInfoAdapter;->setIccCardActiveState(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_1

    .line 96
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/Subscription;->mSimActivator:Lcom/android/internal/telephony/uicc/ISimActivator;

    if-nez p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-interface {v3, v1}, Lcom/android/internal/telephony/uicc/ISimActivator;->setActivate(Z)Z

    .line 99
    :goto_1
    return v2

    :cond_0
    move v1, v2

    .line 96
    goto :goto_0

    :cond_1
    move v2, v0

    .line 99
    goto :goto_1
.end method
