.class public Lcom/android/internal/telephony/qc/QCSimActivator;
.super Ljava/lang/Object;
.source "QCSimActivator.java"

# interfaces
.implements Lcom/android/internal/telephony/uicc/ISimActivator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/qc/QCSimActivator$SimActivatorHandler;,
        Lcom/android/internal/telephony/qc/QCSimActivator$SubscriptionStatus;
    }
.end annotation


# static fields
.field private static final EVENT_SET_UICC_SUBSCRIPTION:I = 0x1

.field private static final EVENT_SET_UICC_SUBSCRIPTION_DONE:I = 0x2

.field private static final LOG_TAG:Ljava/lang/String; = "QCSimActivator"

.field public static final SUBSCRIPTION_INDEX_INVALID:I = -0x1


# instance fields
.field mAppIndex:I

.field private mCi:Lcom/android/internal/telephony/CommandsInterface;

.field mGlobalAppsIndex:[I

.field private mHandler:Landroid/os/Handler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field mIsGlobalApp:Z

.field mLastIsGlobalApp:Z

.field mSubscriptionStatus:Lcom/android/internal/telephony/qc/QCSimActivator$SubscriptionStatus;

.field private mSyncObject:Ljava/lang/Object;

.field private mUiccController:Lcom/android/internal/telephony/uicc/UiccController;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/uicc/UiccController;Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 2
    .param p1, "uiccController"    # Lcom/android/internal/telephony/uicc/UiccController;
    .param p2, "ci"    # Lcom/android/internal/telephony/CommandsInterface;

    .prologue
    const/4 v1, 0x0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    sget-object v0, Lcom/android/internal/telephony/qc/QCSimActivator$SubscriptionStatus;->SUB_DEACTIVATED:Lcom/android/internal/telephony/qc/QCSimActivator$SubscriptionStatus;

    iput-object v0, p0, Lcom/android/internal/telephony/qc/QCSimActivator;->mSubscriptionStatus:Lcom/android/internal/telephony/qc/QCSimActivator$SubscriptionStatus;

    .line 50
    iput-boolean v1, p0, Lcom/android/internal/telephony/qc/QCSimActivator;->mIsGlobalApp:Z

    .line 51
    iput-boolean v1, p0, Lcom/android/internal/telephony/qc/QCSimActivator;->mLastIsGlobalApp:Z

    .line 52
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/internal/telephony/qc/QCSimActivator;->mGlobalAppsIndex:[I

    .line 55
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/qc/QCSimActivator;->mAppIndex:I

    .line 59
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/qc/QCSimActivator;->mSyncObject:Ljava/lang/Object;

    .line 65
    iput-object p1, p0, Lcom/android/internal/telephony/qc/QCSimActivator;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    .line 66
    iput-object p2, p0, Lcom/android/internal/telephony/qc/QCSimActivator;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 67
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "QCSimActivator"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/internal/telephony/qc/QCSimActivator;->mHandlerThread:Landroid/os/HandlerThread;

    .line 68
    iget-object v0, p0, Lcom/android/internal/telephony/qc/QCSimActivator;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 69
    new-instance v0, Lcom/android/internal/telephony/qc/QCSimActivator$SimActivatorHandler;

    iget-object v1, p0, Lcom/android/internal/telephony/qc/QCSimActivator;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/qc/QCSimActivator$SimActivatorHandler;-><init>(Lcom/android/internal/telephony/qc/QCSimActivator;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/internal/telephony/qc/QCSimActivator;->mHandler:Landroid/os/Handler;

    .line 70
    return-void

    .line 52
    :array_0
    .array-data 4
        -0x1
        -0x1
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/qc/QCSimActivator;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/qc/QCSimActivator;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/qc/QCSimActivator;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/qc/QCSimActivator;Lcom/android/internal/telephony/qc/QCSimActivator$SubscriptionStatus;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/qc/QCSimActivator;
    .param p1, "x1"    # Lcom/android/internal/telephony/qc/QCSimActivator$SubscriptionStatus;

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/qc/QCSimActivator;->setSubscriptionStatus(Lcom/android/internal/telephony/qc/QCSimActivator$SubscriptionStatus;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/internal/telephony/qc/QCSimActivator;Landroid/os/AsyncResult;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/qc/QCSimActivator;
    .param p1, "x1"    # Landroid/os/AsyncResult;

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/qc/QCSimActivator;->handleSetUiccSubscriptionDone(Landroid/os/AsyncResult;)V

    return-void
.end method

.method private canSetUiccSubscription()Z
    .locals 2

    .prologue
    .line 136
    iget-boolean v0, p0, Lcom/android/internal/telephony/qc/QCSimActivator;->mIsGlobalApp:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/internal/telephony/qc/QCSimActivator;->mAppIndex:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 137
    const/4 v0, 0x0

    .line 139
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private getAppIndex()V
    .locals 7

    .prologue
    const/4 v6, -0x1

    .line 210
    iput v6, p0, Lcom/android/internal/telephony/qc/QCSimActivator;->mAppIndex:I

    .line 211
    iget-object v5, p0, Lcom/android/internal/telephony/qc/QCSimActivator;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    invoke-virtual {v5}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCard()Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v3

    .line 212
    .local v3, "uiccCard":Lcom/android/internal/telephony/uicc/UiccCard;
    if-nez v3, :cond_1

    .line 231
    :cond_0
    return-void

    .line 217
    :cond_1
    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/UiccCard;->getNumApplications()I

    move-result v2

    .line 218
    .local v2, "numApps":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 219
    invoke-virtual {v3, v1}, Lcom/android/internal/telephony/uicc/UiccCard;->getApplicationIndex(I)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v4

    .line 221
    .local v4, "uiccCardApplication":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    if-eqz v4, :cond_3

    .line 222
    invoke-virtual {v4}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getType()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    move-result-object v0

    .line 223
    .local v0, "appType":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;
    sget-object v5, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_RUIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    if-eq v0, v5, :cond_2

    sget-object v5, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_USIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    if-ne v0, v5, :cond_4

    .line 224
    :cond_2
    iput v1, p0, Lcom/android/internal/telephony/qc/QCSimActivator;->mAppIndex:I

    .line 218
    .end local v0    # "appType":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;
    :cond_3
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 225
    .restart local v0    # "appType":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;
    :cond_4
    sget-object v5, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_CSIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    if-eq v0, v5, :cond_5

    sget-object v5, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_SIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    if-ne v0, v5, :cond_3

    :cond_5
    iget v5, p0, Lcom/android/internal/telephony/qc/QCSimActivator;->mAppIndex:I

    if-ne v5, v6, :cond_3

    .line 227
    iput v1, p0, Lcom/android/internal/telephony/qc/QCSimActivator;->mAppIndex:I

    goto :goto_1
.end method

.method private getGlobalAppsIndex()V
    .locals 11

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v10, -0x1

    .line 185
    const/4 v2, 0x0

    .line 186
    .local v2, "index3gpp":I
    const/4 v3, 0x1

    .line 187
    .local v3, "index3gpp2":I
    iget-object v9, p0, Lcom/android/internal/telephony/qc/QCSimActivator;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    invoke-virtual {v9}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCard()Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v5

    .line 188
    .local v5, "uiccCard":Lcom/android/internal/telephony/uicc/UiccCard;
    if-eqz v5, :cond_4

    .line 189
    invoke-virtual {v5}, Lcom/android/internal/telephony/uicc/UiccCard;->getNumApplications()I

    move-result v4

    .line 190
    .local v4, "numApps":I
    const/4 v0, 0x0

    .local v0, "appIndex":I
    :goto_0
    if-ge v0, v4, :cond_4

    .line 191
    invoke-virtual {v5, v0}, Lcom/android/internal/telephony/uicc/UiccCard;->getApplicationIndex(I)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v6

    .line 192
    .local v6, "uiccCardApp":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    if-eqz v6, :cond_1

    .line 193
    invoke-virtual {v6}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getType()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    move-result-object v1

    .line 194
    .local v1, "appType":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;
    sget-object v9, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_SIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    if-eq v1, v9, :cond_0

    sget-object v9, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_USIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    if-ne v1, v9, :cond_2

    :cond_0
    iget-object v9, p0, Lcom/android/internal/telephony/qc/QCSimActivator;->mGlobalAppsIndex:[I

    aget v9, v9, v2

    if-ne v9, v10, :cond_2

    .line 196
    iget-object v9, p0, Lcom/android/internal/telephony/qc/QCSimActivator;->mGlobalAppsIndex:[I

    aput v0, v9, v2

    .line 190
    .end local v1    # "appType":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 197
    .restart local v1    # "appType":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;
    :cond_2
    sget-object v9, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_CSIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    if-eq v1, v9, :cond_3

    sget-object v9, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_RUIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    if-ne v1, v9, :cond_1

    :cond_3
    iget-object v9, p0, Lcom/android/internal/telephony/qc/QCSimActivator;->mGlobalAppsIndex:[I

    aget v9, v9, v3

    if-ne v9, v10, :cond_1

    .line 199
    iget-object v9, p0, Lcom/android/internal/telephony/qc/QCSimActivator;->mGlobalAppsIndex:[I

    aput v0, v9, v3

    goto :goto_1

    .line 205
    .end local v0    # "appIndex":I
    .end local v1    # "appType":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;
    .end local v4    # "numApps":I
    .end local v6    # "uiccCardApp":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    :cond_4
    iget-object v9, p0, Lcom/android/internal/telephony/qc/QCSimActivator;->mGlobalAppsIndex:[I

    aget v9, v9, v8

    if-eq v9, v10, :cond_5

    iget-object v9, p0, Lcom/android/internal/telephony/qc/QCSimActivator;->mGlobalAppsIndex:[I

    aget v9, v9, v7

    if-eq v9, v10, :cond_5

    :goto_2
    iput-boolean v7, p0, Lcom/android/internal/telephony/qc/QCSimActivator;->mIsGlobalApp:Z

    .line 207
    return-void

    :cond_5
    move v7, v8

    .line 205
    goto :goto_2
.end method

.method private handleSetUiccSubscriptionDone(Landroid/os/AsyncResult;)V
    .locals 4
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    const/4 v3, 0x0

    .line 234
    iget-object v2, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v2, [Ljava/lang/Object;

    move-object v1, v2

    check-cast v1, [Ljava/lang/Object;

    .line 235
    .local v1, "userObj":[Ljava/lang/Object;
    aget-object v2, v1, v3

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    .line 236
    const/4 v2, 0x1

    aget-object v0, v1, v2

    check-cast v0, Lcom/android/internal/telephony/qc/QCSimActivator$SubscriptionStatus;

    .line 237
    .local v0, "subscriptionStatus":Lcom/android/internal/telephony/qc/QCSimActivator$SubscriptionStatus;
    iget-object v2, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_1

    .line 238
    sget-object v2, Lcom/android/internal/telephony/qc/QCSimActivator$SubscriptionStatus;->SUB_ACTIVATE:Lcom/android/internal/telephony/qc/QCSimActivator$SubscriptionStatus;

    if-ne v0, v2, :cond_0

    sget-object v2, Lcom/android/internal/telephony/qc/QCSimActivator$SubscriptionStatus;->SUB_ACTIVATED:Lcom/android/internal/telephony/qc/QCSimActivator$SubscriptionStatus;

    :goto_0
    iput-object v2, p0, Lcom/android/internal/telephony/qc/QCSimActivator;->mSubscriptionStatus:Lcom/android/internal/telephony/qc/QCSimActivator$SubscriptionStatus;

    .line 240
    aget-object v2, v1, v3

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-lez v2, :cond_2

    .line 241
    const-string v2, "handleSetUiccSubscriptionDone waiting for another response"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/qc/QCSimActivator;->log(Ljava/lang/String;)V

    .line 252
    :goto_1
    return-void

    .line 238
    :cond_0
    sget-object v2, Lcom/android/internal/telephony/qc/QCSimActivator$SubscriptionStatus;->SUB_DEACTIVATED:Lcom/android/internal/telephony/qc/QCSimActivator$SubscriptionStatus;

    goto :goto_0

    .line 245
    :cond_1
    sget-object v2, Lcom/android/internal/telephony/qc/QCSimActivator$SubscriptionStatus;->SUB_ACTIVATE:Lcom/android/internal/telephony/qc/QCSimActivator$SubscriptionStatus;

    if-ne v0, v2, :cond_3

    sget-object v2, Lcom/android/internal/telephony/qc/QCSimActivator$SubscriptionStatus;->SUB_DEACTIVATED:Lcom/android/internal/telephony/qc/QCSimActivator$SubscriptionStatus;

    :goto_2
    iput-object v2, p0, Lcom/android/internal/telephony/qc/QCSimActivator;->mSubscriptionStatus:Lcom/android/internal/telephony/qc/QCSimActivator$SubscriptionStatus;

    .line 249
    :cond_2
    iget-object v3, p0, Lcom/android/internal/telephony/qc/QCSimActivator;->mSyncObject:Ljava/lang/Object;

    monitor-enter v3

    .line 250
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/qc/QCSimActivator;->mSyncObject:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 251
    monitor-exit v3

    goto :goto_1

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 245
    :cond_3
    sget-object v2, Lcom/android/internal/telephony/qc/QCSimActivator$SubscriptionStatus;->SUB_ACTIVATED:Lcom/android/internal/telephony/qc/QCSimActivator$SubscriptionStatus;

    goto :goto_2
.end method

.method private log(Ljava/lang/String;)V
    .locals 3
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    .line 255
    const-string v0, "QCSimActivator"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[SLOT"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/qc/QCSimActivator;->mCi:Lcom/android/internal/telephony/CommandsInterface;

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

    .line 256
    return-void
.end method

.method private resetAppIndex()V
    .locals 1

    .prologue
    .line 148
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/internal/telephony/qc/QCSimActivator;->mGlobalAppsIndex:[I

    .line 151
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/qc/QCSimActivator;->mIsGlobalApp:Z

    .line 152
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/qc/QCSimActivator;->mAppIndex:I

    .line 153
    sget-object v0, Lcom/android/internal/telephony/qc/QCSimActivator$SubscriptionStatus;->SUB_DEACTIVATED:Lcom/android/internal/telephony/qc/QCSimActivator$SubscriptionStatus;

    iput-object v0, p0, Lcom/android/internal/telephony/qc/QCSimActivator;->mSubscriptionStatus:Lcom/android/internal/telephony/qc/QCSimActivator$SubscriptionStatus;

    .line 154
    return-void

    .line 148
    nop

    :array_0
    .array-data 4
        -0x1
        -0x1
    .end array-data
.end method

.method private setSubscriptionStatus(Lcom/android/internal/telephony/qc/QCSimActivator$SubscriptionStatus;)V
    .locals 13
    .param p1, "subscriptionStatus"    # Lcom/android/internal/telephony/qc/QCSimActivator$SubscriptionStatus;

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    const/4 v8, 0x2

    .line 159
    new-array v12, v8, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v12, v1

    aput-object p1, v12, v3

    .line 160
    .local v12, "userObj":[Ljava/lang/Object;
    iget-boolean v0, p0, Lcom/android/internal/telephony/qc/QCSimActivator;->mIsGlobalApp:Z

    if-eqz v0, :cond_0

    .line 161
    iget-object v0, p0, Lcom/android/internal/telephony/qc/QCSimActivator;->mGlobalAppsIndex:[I

    array-length v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v12, v1

    .line 162
    iget-object v9, p0, Lcom/android/internal/telephony/qc/QCSimActivator;->mGlobalAppsIndex:[I

    .local v9, "arr$":[I
    array-length v11, v9

    .local v11, "len$":I
    const/4 v10, 0x0

    .local v10, "i$":I
    :goto_0
    if-ge v10, v11, :cond_1

    aget v2, v9, v10

    .line 163
    .local v2, "i":I
    iget-object v0, p0, Lcom/android/internal/telephony/qc/QCSimActivator;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/qc/QCSimActivator;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1}, Lcom/android/internal/telephony/CommandsInterface;->getInstanceId()I

    move-result v1

    iget-object v3, p0, Lcom/android/internal/telephony/qc/QCSimActivator;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v3}, Lcom/android/internal/telephony/CommandsInterface;->getInstanceId()I

    move-result v3

    invoke-virtual {p1}, Lcom/android/internal/telephony/qc/QCSimActivator$SubscriptionStatus;->ordinal()I

    move-result v4

    iget-object v5, p0, Lcom/android/internal/telephony/qc/QCSimActivator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v8, v12}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/CommandsInterface;->setUiccSubscription(IIIILandroid/os/Message;)V

    .line 162
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 171
    .end local v2    # "i":I
    .end local v9    # "arr$":[I
    .end local v10    # "i$":I
    .end local v11    # "len$":I
    :cond_0
    iget v0, p0, Lcom/android/internal/telephony/qc/QCSimActivator;->mAppIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 172
    iget-object v3, p0, Lcom/android/internal/telephony/qc/QCSimActivator;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v0, p0, Lcom/android/internal/telephony/qc/QCSimActivator;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0}, Lcom/android/internal/telephony/CommandsInterface;->getInstanceId()I

    move-result v4

    iget v5, p0, Lcom/android/internal/telephony/qc/QCSimActivator;->mAppIndex:I

    iget-object v0, p0, Lcom/android/internal/telephony/qc/QCSimActivator;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0}, Lcom/android/internal/telephony/CommandsInterface;->getInstanceId()I

    move-result v6

    invoke-virtual {p1}, Lcom/android/internal/telephony/qc/QCSimActivator$SubscriptionStatus;->ordinal()I

    move-result v7

    iget-object v0, p0, Lcom/android/internal/telephony/qc/QCSimActivator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v8, v12}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    invoke-interface/range {v3 .. v8}, Lcom/android/internal/telephony/CommandsInterface;->setUiccSubscription(IIIILandroid/os/Message;)V

    .line 180
    :cond_1
    iput-object p1, p0, Lcom/android/internal/telephony/qc/QCSimActivator;->mSubscriptionStatus:Lcom/android/internal/telephony/qc/QCSimActivator$SubscriptionStatus;

    .line 181
    return-void
.end method

.method private updateAppIndex()V
    .locals 0

    .prologue
    .line 143
    invoke-direct {p0}, Lcom/android/internal/telephony/qc/QCSimActivator;->getGlobalAppsIndex()V

    .line 144
    invoke-direct {p0}, Lcom/android/internal/telephony/qc/QCSimActivator;->getAppIndex()V

    .line 145
    return-void
.end method


# virtual methods
.method public onIccCardAbsent()V
    .locals 0

    .prologue
    .line 105
    invoke-direct {p0}, Lcom/android/internal/telephony/qc/QCSimActivator;->resetAppIndex()V

    .line 106
    return-void
.end method

.method public onIccCardPresent(Z)V
    .locals 1
    .param p1, "isActivate"    # Z

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/android/internal/telephony/qc/QCSimActivator;->updateAppIndex()V

    .line 98
    invoke-direct {p0}, Lcom/android/internal/telephony/qc/QCSimActivator;->canSetUiccSubscription()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 99
    sget-object v0, Lcom/android/internal/telephony/qc/QCSimActivator$SubscriptionStatus;->SUB_ACTIVATE:Lcom/android/internal/telephony/qc/QCSimActivator$SubscriptionStatus;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/qc/QCSimActivator;->setSubscriptionStatus(Lcom/android/internal/telephony/qc/QCSimActivator$SubscriptionStatus;)V

    .line 101
    :cond_0
    return-void
.end method

.method public setActivate(Z)Z
    .locals 6
    .param p1, "isActivate"    # Z

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 110
    invoke-direct {p0}, Lcom/android/internal/telephony/qc/QCSimActivator;->canSetUiccSubscription()Z

    move-result v4

    if-nez v4, :cond_1

    .line 132
    :cond_0
    :goto_0
    return v2

    .line 113
    :cond_1
    if-eqz p1, :cond_2

    iget-object v4, p0, Lcom/android/internal/telephony/qc/QCSimActivator;->mSubscriptionStatus:Lcom/android/internal/telephony/qc/QCSimActivator$SubscriptionStatus;

    invoke-virtual {v4}, Lcom/android/internal/telephony/qc/QCSimActivator$SubscriptionStatus;->isActivate()Z

    move-result v4

    if-nez v4, :cond_3

    :cond_2
    if-nez p1, :cond_4

    iget-object v4, p0, Lcom/android/internal/telephony/qc/QCSimActivator;->mSubscriptionStatus:Lcom/android/internal/telephony/qc/QCSimActivator$SubscriptionStatus;

    invoke-virtual {v4}, Lcom/android/internal/telephony/qc/QCSimActivator$SubscriptionStatus;->isDeactivate()Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_3
    move v2, v3

    .line 115
    goto :goto_0

    .line 117
    :cond_4
    if-eqz p1, :cond_7

    sget-object v1, Lcom/android/internal/telephony/qc/QCSimActivator$SubscriptionStatus;->SUB_ACTIVATE:Lcom/android/internal/telephony/qc/QCSimActivator$SubscriptionStatus;

    .line 120
    .local v1, "setStatus":Lcom/android/internal/telephony/qc/QCSimActivator$SubscriptionStatus;
    :goto_1
    iget-object v4, p0, Lcom/android/internal/telephony/qc/QCSimActivator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v3, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    .line 121
    iget-object v4, p0, Lcom/android/internal/telephony/qc/QCSimActivator;->mSyncObject:Ljava/lang/Object;

    monitor-enter v4

    .line 123
    :try_start_0
    iget-object v5, p0, Lcom/android/internal/telephony/qc/QCSimActivator;->mSyncObject:Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 127
    :goto_2
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 128
    if-eqz p1, :cond_5

    iget-object v4, p0, Lcom/android/internal/telephony/qc/QCSimActivator;->mSubscriptionStatus:Lcom/android/internal/telephony/qc/QCSimActivator$SubscriptionStatus;

    sget-object v5, Lcom/android/internal/telephony/qc/QCSimActivator$SubscriptionStatus;->SUB_ACTIVATED:Lcom/android/internal/telephony/qc/QCSimActivator$SubscriptionStatus;

    if-eq v4, v5, :cond_6

    :cond_5
    if-nez p1, :cond_0

    iget-object v4, p0, Lcom/android/internal/telephony/qc/QCSimActivator;->mSubscriptionStatus:Lcom/android/internal/telephony/qc/QCSimActivator$SubscriptionStatus;

    sget-object v5, Lcom/android/internal/telephony/qc/QCSimActivator$SubscriptionStatus;->SUB_DEACTIVATED:Lcom/android/internal/telephony/qc/QCSimActivator$SubscriptionStatus;

    if-ne v4, v5, :cond_0

    :cond_6
    move v2, v3

    .line 130
    goto :goto_0

    .line 117
    .end local v1    # "setStatus":Lcom/android/internal/telephony/qc/QCSimActivator$SubscriptionStatus;
    :cond_7
    sget-object v1, Lcom/android/internal/telephony/qc/QCSimActivator$SubscriptionStatus;->SUB_DEACTIVATE:Lcom/android/internal/telephony/qc/QCSimActivator$SubscriptionStatus;

    goto :goto_1

    .line 124
    .restart local v1    # "setStatus":Lcom/android/internal/telephony/qc/QCSimActivator$SubscriptionStatus;
    :catch_0
    move-exception v0

    .line 125
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/qc/QCSimActivator;->log(Ljava/lang/String;)V

    goto :goto_2

    .line 127
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v2

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method
