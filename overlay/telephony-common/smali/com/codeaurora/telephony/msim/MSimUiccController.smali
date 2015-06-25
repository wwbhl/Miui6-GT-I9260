.class public Lcom/codeaurora/telephony/msim/MSimUiccController;
.super Ljava/lang/Object;
.source "MSimUiccController.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;

.field protected static mInstance:Lcom/codeaurora/telephony/msim/MSimUiccController;

.field protected static final mLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    const-class v0, Lcom/codeaurora/telephony/msim/MSimUiccController;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/codeaurora/telephony/msim/MSimUiccController;->LOG_TAG:Ljava/lang/String;

    .line 13
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/codeaurora/telephony/msim/MSimUiccController;->mLock:Ljava/lang/Object;

    .line 14
    new-instance v0, Lcom/codeaurora/telephony/msim/MSimUiccController;

    invoke-direct {v0}, Lcom/codeaurora/telephony/msim/MSimUiccController;-><init>()V

    sput-object v0, Lcom/codeaurora/telephony/msim/MSimUiccController;->mInstance:Lcom/codeaurora/telephony/msim/MSimUiccController;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    return-void
.end method

.method public static getInstance()Lcom/codeaurora/telephony/msim/MSimUiccController;
    .locals 3

    .prologue
    .line 24
    sget-object v1, Lcom/codeaurora/telephony/msim/MSimUiccController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 25
    :try_start_0
    sget-object v0, Lcom/codeaurora/telephony/msim/MSimUiccController;->mInstance:Lcom/codeaurora/telephony/msim/MSimUiccController;

    if-nez v0, :cond_0

    .line 26
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "MSimUiccController instance can\'t be null."

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 29
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 28
    :cond_0
    :try_start_1
    sget-object v0, Lcom/codeaurora/telephony/msim/MSimUiccController;->mInstance:Lcom/codeaurora/telephony/msim/MSimUiccController;

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v0
.end method

.method public static make(Landroid/content/Context;[Lcom/android/internal/telephony/CommandsInterface;)Lcom/codeaurora/telephony/msim/MSimUiccController;
    .locals 2
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "ci"    # [Lcom/android/internal/telephony/CommandsInterface;

    .prologue
    .line 17
    sget-object v1, Lcom/codeaurora/telephony/msim/MSimUiccController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 19
    :try_start_0
    sget-object v0, Lcom/codeaurora/telephony/msim/MSimUiccController;->mInstance:Lcom/codeaurora/telephony/msim/MSimUiccController;

    monitor-exit v1

    return-object v0

    .line 20
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public getUiccCard(I)Lcom/android/internal/telephony/uicc/UiccCard;
    .locals 3
    .param p1, "slotId"    # I

    .prologue
    .line 37
    sget-object v0, Lcom/codeaurora/telephony/msim/MSimUiccController;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MSimUiccController getUiccCard: slotId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    invoke-static {p1}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance(I)Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCard()Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v0

    return-object v0
.end method
