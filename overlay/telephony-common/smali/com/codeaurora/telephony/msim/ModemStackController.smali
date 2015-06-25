.class public Lcom/codeaurora/telephony/msim/ModemStackController;
.super Landroid/os/Handler;
.source "ModemStackController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codeaurora/telephony/msim/ModemStackController$ModemCapabilityInfo;
    }
.end annotation


# static fields
.field public static final ACTION_CROSS_MAPPING_SIM_ACTIVED:Ljava/lang/String; = "android.intent.action.CROSS_MAPPING_SIM_ACTIVED"

.field public static final ACTION_CROSS_MAPPING_START_DEACTIVE:Ljava/lang/String; = "android.intent.action.CROSS_MAPPING_START_DEACTIVE"

.field private static final BIND_TO_STACK:I = 0x1

.field private static final CMD_DEACTIVATE_ALL_SUBS:I = 0x1

.field private static final CMD_TRIGGER_BIND:I = 0x5

.field private static final CMD_TRIGGER_UNBIND:I = 0x3

.field private static final EVENT_BIND_DONE:I = 0x6

.field private static final EVENT_FORCE_NEWWORK_SELECTION_MODE_AUTO:I = 0xc8

.field private static final EVENT_GET_MODEM_CAPS_DONE:I = 0x2

.field private static final EVENT_RADIO_AVAILABLE:I = 0x9

.field private static final EVENT_SET_PREF_MODE_DONE:I = 0x7

.field public static final EVENT_SUB_DEACTIVATED:I = 0x8

.field private static final EVENT_SUB_REACTIVED:I = 0x64

.field private static final EVENT_UNBIND_DONE:I = 0x4

.field private static final FAILURE:I = 0x0

.field private static final GET_MODEM_CAPS_BUFFER_LEN:I = 0x6

.field static final LOG_TAG:Ljava/lang/String; = "ModemStackController"

.field private static final STATE_BIND:I = 0x5

.field private static final STATE_GOT_MODEM_CAPS:I = 0x2

.field private static final STATE_SET_PREF_MODE:I = 0x7

.field private static final STATE_SUB_ACT:I = 0x6

.field private static final STATE_SUB_DEACT:I = 0x3

.field private static final STATE_UNBIND:I = 0x4

.field private static final STATE_UNKNOWN:I = 0x1

.field private static final SUCCESS:I = 0x1

.field private static final UNBIND_TO_STACK:I

.field private static sModemStackController:Lcom/codeaurora/telephony/msim/ModemStackController;


# instance fields
.field private mActiveSubCount:I

.field private mCi:[Lcom/android/internal/telephony/CommandsInterface;

.field private mCmdFailed:[Z

.field private mContext:Landroid/content/Context;

.field private mCurrentStackId:[I

.field private mDeactivateAllSubscriptionFlag:Z

.field private mDeactivedSubCount:I

.field private mEcbmReceiver:Landroid/content/BroadcastReceiver;

.field private mForceNetworkSelectionModeAutoLock:Ljava/lang/Object;

.field private mIsPhoneInEcbmMode:Z

.field private mIsRecoveryInProgress:Z

.field private mIsStackReady:Z

.field private mModemCapInfo:[Lcom/codeaurora/telephony/msim/ModemStackController$ModemCapabilityInfo;

.field private mModemRatCapabilitiesAvailable:Z

.field private mModemRatCapsAvailableRegistrants:Landroid/os/RegistrantList;

.field private mNumPhones:I

.field private mPhones:[Lcom/android/internal/telephony/Phone;

.field private mPrefNwMode:[I

.field private mPreferredStackId:[I

.field private mStackReadyRegistrants:Landroid/os/RegistrantList;

.field private mSubReactived:I

.field private mSubState:[I

.field private mUpdateStackMsg:Landroid/os/Message;


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/codeaurora/telephony/msim/MSimUiccController;[Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uiccManager"    # Lcom/codeaurora/telephony/msim/MSimUiccController;
    .param p3, "ci"    # [Lcom/android/internal/telephony/CommandsInterface;

    .prologue
    const/4 v5, 0x0

    .line 200
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 139
    invoke-static {}, Lmiui/telephony/MultiSimManager;->getInstance()Lmiui/telephony/MultiSimManager;

    move-result-object v2

    invoke-virtual {v2}, Lmiui/telephony/MultiSimManager;->getMultiSimCount()I

    move-result v2

    iput v2, p0, Lcom/codeaurora/telephony/msim/ModemStackController;->mNumPhones:I

    .line 140
    iput v5, p0, Lcom/codeaurora/telephony/msim/ModemStackController;->mActiveSubCount:I

    .line 141
    iput v5, p0, Lcom/codeaurora/telephony/msim/ModemStackController;->mDeactivedSubCount:I

    .line 142
    iget v2, p0, Lcom/codeaurora/telephony/msim/ModemStackController;->mNumPhones:I

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/codeaurora/telephony/msim/ModemStackController;->mPreferredStackId:[I

    .line 143
    iget v2, p0, Lcom/codeaurora/telephony/msim/ModemStackController;->mNumPhones:I

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/codeaurora/telephony/msim/ModemStackController;->mCurrentStackId:[I

    .line 144
    iget v2, p0, Lcom/codeaurora/telephony/msim/ModemStackController;->mNumPhones:I

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/codeaurora/telephony/msim/ModemStackController;->mPrefNwMode:[I

    .line 145
    iget v2, p0, Lcom/codeaurora/telephony/msim/ModemStackController;->mNumPhones:I

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/codeaurora/telephony/msim/ModemStackController;->mSubState:[I

    .line 146
    iput-boolean v5, p0, Lcom/codeaurora/telephony/msim/ModemStackController;->mIsStackReady:Z

    .line 147
    iput-boolean v5, p0, Lcom/codeaurora/telephony/msim/ModemStackController;->mIsRecoveryInProgress:Z

    .line 148
    iput-boolean v5, p0, Lcom/codeaurora/telephony/msim/ModemStackController;->mIsPhoneInEcbmMode:Z

    .line 149
    iput-boolean v5, p0, Lcom/codeaurora/telephony/msim/ModemStackController;->mModemRatCapabilitiesAvailable:Z

    .line 150
    iget v2, p0, Lcom/codeaurora/telephony/msim/ModemStackController;->mNumPhones:I

    new-array v2, v2, [Z

    iput-object v2, p0, Lcom/codeaurora/telephony/msim/ModemStackController;->mCmdFailed:[Z

    .line 151
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/codeaurora/telephony/msim/ModemStackController;->mStackReadyRegistrants:Landroid/os/RegistrantList;

    .line 152
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/codeaurora/telephony/msim/ModemStackController;->mModemRatCapsAvailableRegistrants:Landroid/os/RegistrantList;

    .line 154
    iput v5, p0, Lcom/codeaurora/telephony/msim/ModemStackController;->mSubReactived:I

    .line 157
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/codeaurora/telephony/msim/ModemStackController;->mModemCapInfo:[Lcom/codeaurora/telephony/msim/ModemStackController$ModemCapabilityInfo;

    .line 164
    new-instance v2, Lcom/codeaurora/telephony/msim/ModemStackController$1;

    invoke-direct {v2, p0}, Lcom/codeaurora/telephony/msim/ModemStackController$1;-><init>(Lcom/codeaurora/telephony/msim/ModemStackController;)V

    iput-object v2, p0, Lcom/codeaurora/telephony/msim/ModemStackController;->mEcbmReceiver:Landroid/content/BroadcastReceiver;

    .line 634
    iput-boolean v5, p0, Lcom/codeaurora/telephony/msim/ModemStackController;->mDeactivateAllSubscriptionFlag:Z

    .line 635
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getProxyPhones()[Lcom/android/internal/telephony/Phone;

    move-result-object v2

    iput-object v2, p0, Lcom/codeaurora/telephony/msim/ModemStackController;->mPhones:[Lcom/android/internal/telephony/Phone;

    .line 713
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/codeaurora/telephony/msim/ModemStackController;->mForceNetworkSelectionModeAutoLock:Ljava/lang/Object;

    .line 201
    const-string v2, "Constructor - Enter"

    invoke-direct {p0, v2}, Lcom/codeaurora/telephony/msim/ModemStackController;->logd(Ljava/lang/String;)V

    .line 203
    iput-object p3, p0, Lcom/codeaurora/telephony/msim/ModemStackController;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    .line 204
    iput-object p1, p0, Lcom/codeaurora/telephony/msim/ModemStackController;->mContext:Landroid/content/Context;

    .line 205
    iget v2, p0, Lcom/codeaurora/telephony/msim/ModemStackController;->mNumPhones:I

    new-array v2, v2, [Lcom/codeaurora/telephony/msim/ModemStackController$ModemCapabilityInfo;

    iput-object v2, p0, Lcom/codeaurora/telephony/msim/ModemStackController;->mModemCapInfo:[Lcom/codeaurora/telephony/msim/ModemStackController$ModemCapabilityInfo;

    .line 207
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/codeaurora/telephony/msim/ModemStackController;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 208
    iget-object v2, p0, Lcom/codeaurora/telephony/msim/ModemStackController;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v2, v2, v1

    const/16 v3, 0x9

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, v1}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v2, p0, v3, v4}, Lcom/android/internal/telephony/CommandsInterface;->registerForAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 207
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 211
    :cond_0
    const/4 v1, 0x0

    :goto_1
    iget v2, p0, Lcom/codeaurora/telephony/msim/ModemStackController;->mNumPhones:I

    if-ge v1, v2, :cond_1

    .line 212
    iget-object v2, p0, Lcom/codeaurora/telephony/msim/ModemStackController;->mPreferredStackId:[I

    aput v1, v2, v1

    .line 213
    iget-object v2, p0, Lcom/codeaurora/telephony/msim/ModemStackController;->mCurrentStackId:[I

    aput v1, v2, v1

    .line 214
    iget-object v2, p0, Lcom/codeaurora/telephony/msim/ModemStackController;->mSubState:[I

    const/4 v3, 0x1

    aput v3, v2, v1

    .line 215
    iget-object v2, p0, Lcom/codeaurora/telephony/msim/ModemStackController;->mCmdFailed:[Z

    aput-boolean v5, v2, v1

    .line 211
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 218
    :cond_1
    new-instance v0, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.EMERGENCY_CALLBACK_MODE_CHANGED"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 220
    .local v0, "filter":Landroid/content/IntentFilter;
    iget-object v2, p0, Lcom/codeaurora/telephony/msim/ModemStackController;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/codeaurora/telephony/msim/ModemStackController;->mEcbmReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 221
    const-string v2, "Constructor - Exit"

    invoke-direct {p0, v2}, Lcom/codeaurora/telephony/msim/ModemStackController;->logd(Ljava/lang/String;)V

    .line 222
    return-void
.end method

.method static synthetic access$000(Lcom/codeaurora/telephony/msim/ModemStackController;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/codeaurora/telephony/msim/ModemStackController;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 84
    invoke-direct {p0, p1}, Lcom/codeaurora/telephony/msim/ModemStackController;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$102(Lcom/codeaurora/telephony/msim/ModemStackController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/codeaurora/telephony/msim/ModemStackController;
    .param p1, "x1"    # Z

    .prologue
    .line 84
    iput-boolean p1, p0, Lcom/codeaurora/telephony/msim/ModemStackController;->mIsPhoneInEcbmMode:Z

    return p1
.end method

.method static synthetic access$200(Lcom/codeaurora/telephony/msim/ModemStackController;)V
    .locals 0
    .param p0, "x0"    # Lcom/codeaurora/telephony/msim/ModemStackController;

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/codeaurora/telephony/msim/ModemStackController;->forceNetworkSelectionModeAuto()V

    return-void
.end method

.method static synthetic access$302(Lcom/codeaurora/telephony/msim/ModemStackController;I)I
    .locals 0
    .param p0, "x0"    # Lcom/codeaurora/telephony/msim/ModemStackController;
    .param p1, "x1"    # I

    .prologue
    .line 84
    iput p1, p0, Lcom/codeaurora/telephony/msim/ModemStackController;->mDeactivedSubCount:I

    return p1
.end method

.method static synthetic access$402(Lcom/codeaurora/telephony/msim/ModemStackController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/codeaurora/telephony/msim/ModemStackController;
    .param p1, "x1"    # Z

    .prologue
    .line 84
    iput-boolean p1, p0, Lcom/codeaurora/telephony/msim/ModemStackController;->mDeactivateAllSubscriptionFlag:Z

    return p1
.end method

.method static synthetic access$500(Lcom/codeaurora/telephony/msim/ModemStackController;)[Lcom/android/internal/telephony/Phone;
    .locals 1
    .param p0, "x0"    # Lcom/codeaurora/telephony/msim/ModemStackController;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/codeaurora/telephony/msim/ModemStackController;->mPhones:[Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/PhoneBase;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/Phone;

    .prologue
    .line 84
    invoke-static {p0}, Lcom/codeaurora/telephony/msim/ModemStackController;->getBasePhone(Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/codeaurora/telephony/msim/ModemStackController;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/codeaurora/telephony/msim/ModemStackController;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 84
    invoke-direct {p0, p1}, Lcom/codeaurora/telephony/msim/ModemStackController;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Lcom/codeaurora/telephony/msim/ModemStackController;)I
    .locals 1
    .param p0, "x0"    # Lcom/codeaurora/telephony/msim/ModemStackController;

    .prologue
    .line 84
    iget v0, p0, Lcom/codeaurora/telephony/msim/ModemStackController;->mSubReactived:I

    return v0
.end method

.method static synthetic access$802(Lcom/codeaurora/telephony/msim/ModemStackController;I)I
    .locals 0
    .param p0, "x0"    # Lcom/codeaurora/telephony/msim/ModemStackController;
    .param p1, "x1"    # I

    .prologue
    .line 84
    iput p1, p0, Lcom/codeaurora/telephony/msim/ModemStackController;->mSubReactived:I

    return p1
.end method

.method static synthetic access$808(Lcom/codeaurora/telephony/msim/ModemStackController;)I
    .locals 2
    .param p0, "x0"    # Lcom/codeaurora/telephony/msim/ModemStackController;

    .prologue
    .line 84
    iget v0, p0, Lcom/codeaurora/telephony/msim/ModemStackController;->mSubReactived:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/codeaurora/telephony/msim/ModemStackController;->mSubReactived:I

    return v0
.end method

.method static synthetic access$900(Lcom/codeaurora/telephony/msim/ModemStackController;)V
    .locals 0
    .param p0, "x0"    # Lcom/codeaurora/telephony/msim/ModemStackController;

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/codeaurora/telephony/msim/ModemStackController;->sendBroadcastForSimActived()V

    return-void
.end method

.method private activateAllSubscriptions()V
    .locals 2

    .prologue
    .line 675
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/codeaurora/telephony/msim/ModemStackController$3;

    invoke-direct {v1, p0}, Lcom/codeaurora/telephony/msim/ModemStackController$3;-><init>(Lcom/codeaurora/telephony/msim/ModemStackController;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 705
    return-void
.end method

.method private areAllSubsinSameState(I)Z
    .locals 5
    .param p1, "state"    # I

    .prologue
    .line 492
    iget-object v0, p0, Lcom/codeaurora/telephony/msim/ModemStackController;->mSubState:[I

    .local v0, "arr$":[I
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget v3, v0, v1

    .line 493
    .local v3, "subState":I
    if-eq v3, p1, :cond_0

    const/4 v4, 0x0

    .line 495
    .end local v3    # "subState":I
    :goto_1
    return v4

    .line 492
    .restart local v3    # "subState":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 495
    .end local v3    # "subState":I
    :cond_1
    const/4 v4, 0x1

    goto :goto_1
.end method

.method private bindStackOnSub(I)V
    .locals 4
    .param p1, "subId"    # I

    .prologue
    .line 381
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bindStack "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/codeaurora/telephony/msim/ModemStackController;->mPreferredStackId:[I

    aget v2, v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " On SubId["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/codeaurora/telephony/msim/ModemStackController;->logd(Ljava/lang/String;)V

    .line 382
    const/4 v1, 0x6

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {p0, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 383
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/codeaurora/telephony/msim/ModemStackController;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v1, v1, p1

    iget-object v2, p0, Lcom/codeaurora/telephony/msim/ModemStackController;->mPreferredStackId:[I

    aget v2, v2, p1

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3, v0}, Lcom/android/internal/telephony/CommandsInterface;->updateStackBinding(IILandroid/os/Message;)V

    .line 384
    return-void
.end method

.method private deactivateAllSubscriptions()V
    .locals 2

    .prologue
    .line 643
    iget-object v0, p0, Lcom/codeaurora/telephony/msim/ModemStackController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lmiui/telephony/SimInfoManager;->getActiveSimCount(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/codeaurora/telephony/msim/ModemStackController;->mActiveSubCount:I

    .line 644
    invoke-static {}, Lmiui/telephony/MultiSimManager;->getInstance()Lmiui/telephony/MultiSimManager;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/telephony/MultiSimManager;->isMultiSimSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 645
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/codeaurora/telephony/msim/ModemStackController$2;

    invoke-direct {v1, p0}, Lcom/codeaurora/telephony/msim/ModemStackController$2;-><init>(Lcom/codeaurora/telephony/msim/ModemStackController;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 671
    :goto_0
    invoke-direct {p0}, Lcom/codeaurora/telephony/msim/ModemStackController;->sendBroadcastForStartDeactive()V

    .line 672
    return-void

    .line 669
    :cond_0
    invoke-direct {p0}, Lcom/codeaurora/telephony/msim/ModemStackController;->triggerUnBindingOnAllSubs()V

    goto :goto_0
.end method

.method private forceNetworkSelectionModeAuto()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 716
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/codeaurora/telephony/msim/ModemStackController;->mPhones:[Lcom/android/internal/telephony/Phone;

    array-length v3, v3

    if-ge v1, v3, :cond_1

    .line 717
    iget-object v3, p0, Lcom/codeaurora/telephony/msim/ModemStackController;->mPhones:[Lcom/android/internal/telephony/Phone;

    aget-object v3, v3, v1

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v3

    if-ne v3, v4, :cond_0

    .line 718
    iget-object v3, p0, Lcom/codeaurora/telephony/msim/ModemStackController;->mPhones:[Lcom/android/internal/telephony/Phone;

    aget-object v3, v3, v1

    invoke-direct {p0, v3}, Lcom/codeaurora/telephony/msim/ModemStackController;->processForceNetworkSelectionModeAuto(Lcom/android/internal/telephony/Phone;)V

    .line 716
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 721
    :cond_1
    iget-object v3, p0, Lcom/codeaurora/telephony/msim/ModemStackController;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 722
    .local v2, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 723
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v3, "button_auto_select_key"

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 724
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 725
    return-void
.end method

.method private static getBasePhone(Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/PhoneBase;
    .locals 1
    .param p0, "phone"    # Lcom/android/internal/telephony/Phone;

    .prologue
    .line 708
    instance-of v0, p0, Lcom/android/internal/telephony/PhoneProxy;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/android/internal/telephony/PhoneProxy;

    .end local p0    # "phone":Lcom/android/internal/telephony/Phone;
    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    :goto_0
    check-cast v0, Lcom/android/internal/telephony/PhoneBase;

    check-cast v0, Lcom/android/internal/telephony/PhoneBase;

    return-object v0

    .restart local p0    # "phone":Lcom/android/internal/telephony/Phone;
    :cond_0
    move-object v0, p0

    goto :goto_0
.end method

.method public static getInstance()Lcom/codeaurora/telephony/msim/ModemStackController;
    .locals 2

    .prologue
    .line 192
    sget-object v0, Lcom/codeaurora/telephony/msim/ModemStackController;->sModemStackController:Lcom/codeaurora/telephony/msim/ModemStackController;

    if-nez v0, :cond_0

    .line 193
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "ModemStackController.getInstance called before make()"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 195
    :cond_0
    sget-object v0, Lcom/codeaurora/telephony/msim/ModemStackController;->sModemStackController:Lcom/codeaurora/telephony/msim/ModemStackController;

    return-object v0
.end method

.method private getSavedNetworkSelection(I)Ljava/lang/String;
    .locals 4
    .param p1, "slotId"    # I

    .prologue
    .line 746
    iget-object v2, p0, Lcom/codeaurora/telephony/msim/ModemStackController;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 747
    .local v1, "sp":Landroid/content/SharedPreferences;
    const-string v0, "network_selection_key"

    .line 748
    .local v0, "networkSelectionKey":Ljava/lang/String;
    invoke-static {}, Lmiui/telephony/MultiSimManager;->getInstance()Lmiui/telephony/MultiSimManager;

    move-result-object v2

    invoke-virtual {v2}, Lmiui/telephony/MultiSimManager;->isMultiSimSupported()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 749
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 751
    :cond_0
    const-string v2, ""

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private isAnyCallsInProgress()Z
    .locals 3

    .prologue
    .line 557
    const/4 v1, 0x0

    .line 558
    .local v1, "isCallInProgress":Z
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v2, p0, Lcom/codeaurora/telephony/msim/ModemStackController;->mNumPhones:I

    if-ge v0, v2, :cond_0

    .line 559
    invoke-static {v0}, Lmiui/telephony/TelephonyManagerFactory;->getDefault(I)Lmiui/telephony/TelephonyManager;

    move-result-object v2

    invoke-interface {v2}, Lmiui/telephony/TelephonyManager;->getCallState()I

    move-result v2

    if-eqz v2, :cond_1

    .line 561
    const/4 v1, 0x1

    .line 565
    :cond_0
    return v1

    .line 558
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private isAnyCmdFailed()Z
    .locals 3

    .prologue
    .line 506
    const/4 v1, 0x0

    .line 507
    .local v1, "result":Z
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v2, p0, Lcom/codeaurora/telephony/msim/ModemStackController;->mNumPhones:I

    if-ge v0, v2, :cond_1

    .line 508
    iget-object v2, p0, Lcom/codeaurora/telephony/msim/ModemStackController;->mCmdFailed:[Z

    aget-boolean v2, v2, v0

    if-eqz v2, :cond_0

    .line 509
    const/4 v1, 0x1

    .line 507
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 512
    :cond_1
    return v1
.end method

.method private logd(Ljava/lang/String;)V
    .locals 1
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    .line 829
    const-string v0, "ModemStackController"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 830
    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 1
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    .line 833
    const-string v0, "ModemStackController"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 834
    return-void
.end method

.method public static make(Landroid/content/Context;Lcom/codeaurora/telephony/msim/MSimUiccController;[Lcom/android/internal/telephony/CommandsInterface;)Lcom/codeaurora/telephony/msim/ModemStackController;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uiccMgr"    # Lcom/codeaurora/telephony/msim/MSimUiccController;
    .param p2, "ci"    # [Lcom/android/internal/telephony/CommandsInterface;

    .prologue
    .line 182
    const-string v0, "ModemStackController"

    const-string v1, "getInstance"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    sget-object v0, Lcom/codeaurora/telephony/msim/ModemStackController;->sModemStackController:Lcom/codeaurora/telephony/msim/ModemStackController;

    if-nez v0, :cond_0

    .line 184
    new-instance v0, Lcom/codeaurora/telephony/msim/ModemStackController;

    invoke-direct {v0, p0, p1, p2}, Lcom/codeaurora/telephony/msim/ModemStackController;-><init>(Landroid/content/Context;Lcom/codeaurora/telephony/msim/MSimUiccController;[Lcom/android/internal/telephony/CommandsInterface;)V

    sput-object v0, Lcom/codeaurora/telephony/msim/ModemStackController;->sModemStackController:Lcom/codeaurora/telephony/msim/ModemStackController;

    .line 188
    sget-object v0, Lcom/codeaurora/telephony/msim/ModemStackController;->sModemStackController:Lcom/codeaurora/telephony/msim/ModemStackController;

    return-object v0

    .line 186
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "ModemStackController.make() should only be called once"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private notifyModemRatCapabilitiesAvailable()V
    .locals 1

    .prologue
    .line 781
    const-string v0, "notifyGetRatCapabilitiesDone: Got RAT capabilities for all Stacks!!!"

    invoke-direct {p0, v0}, Lcom/codeaurora/telephony/msim/ModemStackController;->logd(Ljava/lang/String;)V

    .line 782
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/codeaurora/telephony/msim/ModemStackController;->mModemRatCapabilitiesAvailable:Z

    .line 783
    iget-object v0, p0, Lcom/codeaurora/telephony/msim/ModemStackController;->mModemRatCapsAvailableRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 784
    return-void
.end method

.method private notifyStackReady()V
    .locals 3

    .prologue
    .line 755
    const-string v1, "notifyStackReady: Stack is READY!!!"

    invoke-direct {p0, v1}, Lcom/codeaurora/telephony/msim/ModemStackController;->logd(Ljava/lang/String;)V

    .line 756
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/codeaurora/telephony/msim/ModemStackController;->mIsRecoveryInProgress:Z

    .line 757
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/codeaurora/telephony/msim/ModemStackController;->mIsStackReady:Z

    .line 758
    invoke-direct {p0}, Lcom/codeaurora/telephony/msim/ModemStackController;->resetSubStates()V

    .line 760
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/codeaurora/telephony/msim/ModemStackController;->mNumPhones:I

    if-ge v0, v1, :cond_0

    .line 762
    iget-object v1, p0, Lcom/codeaurora/telephony/msim/ModemStackController;->mCurrentStackId:[I

    iget-object v2, p0, Lcom/codeaurora/telephony/msim/ModemStackController;->mPreferredStackId:[I

    aget v2, v2, v0

    aput v2, v1, v0

    .line 760
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 767
    :cond_0
    iget-object v1, p0, Lcom/codeaurora/telephony/msim/ModemStackController;->mStackReadyRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 768
    return-void
.end method

.method private onBindComplete(Landroid/os/AsyncResult;I)V
    .locals 3
    .param p1, "ar"    # Landroid/os/AsyncResult;
    .param p2, "subId"    # I

    .prologue
    const/4 v2, 0x5

    .line 411
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v0, v0, Lcom/android/internal/telephony/CommandException;

    if-eqz v0, :cond_0

    .line 412
    iget-object v0, p0, Lcom/codeaurora/telephony/msim/ModemStackController;->mCmdFailed:[Z

    const/4 v1, 0x1

    aput-boolean v1, v0, p2

    .line 413
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onBindComplete("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "): got Exception ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/codeaurora/telephony/msim/ModemStackController;->loge(Ljava/lang/String;)V

    .line 416
    :cond_0
    iget-object v0, p0, Lcom/codeaurora/telephony/msim/ModemStackController;->mSubState:[I

    aput v2, v0, p2

    .line 419
    invoke-direct {p0, v2}, Lcom/codeaurora/telephony/msim/ModemStackController;->areAllSubsinSameState(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 420
    invoke-direct {p0}, Lcom/codeaurora/telephony/msim/ModemStackController;->isAnyCmdFailed()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 421
    invoke-direct {p0}, Lcom/codeaurora/telephony/msim/ModemStackController;->recoverToPrevState()V

    .line 426
    :cond_1
    :goto_0
    return-void

    .line 424
    :cond_2
    invoke-direct {p0}, Lcom/codeaurora/telephony/msim/ModemStackController;->setPrefNwTypeOnAllSubs()V

    goto :goto_0
.end method

.method private onGetModemCapabilityDone(Landroid/os/AsyncResult;I)V
    .locals 4
    .param p1, "ar"    # Landroid/os/AsyncResult;
    .param p2, "subId"    # I

    .prologue
    const/4 v3, 0x2

    .line 319
    iget-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [B

    move-object v0, v1

    check-cast v0, [B

    .line 321
    .local v0, "result":[B
    if-nez v0, :cond_1

    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v1, v1, Lcom/android/internal/telephony/CommandException;

    if-eqz v1, :cond_1

    .line 322
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onGetModemCapabilityDone: EXIT!, result null or Exception ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/codeaurora/telephony/msim/ModemStackController;->loge(Ljava/lang/String;)V

    .line 340
    :cond_0
    :goto_0
    return-void

    .line 326
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onGetModemCapabilityDone on subId["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] result = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/codeaurora/telephony/msim/ModemStackController;->logd(Ljava/lang/String;)V

    .line 328
    if-ltz p2, :cond_2

    iget v1, p0, Lcom/codeaurora/telephony/msim/ModemStackController;->mNumPhones:I

    if-ge p2, v1, :cond_2

    .line 330
    iget-object v1, p0, Lcom/codeaurora/telephony/msim/ModemStackController;->mSubState:[I

    aput v3, v1, p2

    .line 331
    invoke-direct {p0, v0, p2}, Lcom/codeaurora/telephony/msim/ModemStackController;->parseGetModemCapabilityResponse([BI)V

    .line 334
    invoke-direct {p0, v3}, Lcom/codeaurora/telephony/msim/ModemStackController;->areAllSubsinSameState(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 335
    invoke-direct {p0}, Lcom/codeaurora/telephony/msim/ModemStackController;->notifyModemRatCapabilitiesAvailable()V

    goto :goto_0

    .line 338
    :cond_2
    const-string v1, "Invalid Index!!!"

    invoke-direct {p0, v1}, Lcom/codeaurora/telephony/msim/ModemStackController;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private onSetPrefNwModeDone(Landroid/os/AsyncResult;I)V
    .locals 3
    .param p1, "ar"    # Landroid/os/AsyncResult;
    .param p2, "subId"    # I

    .prologue
    const/4 v2, 0x7

    .line 429
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v0, v0, Lcom/android/internal/telephony/CommandException;

    if-eqz v0, :cond_0

    .line 430
    iget-object v0, p0, Lcom/codeaurora/telephony/msim/ModemStackController;->mCmdFailed:[Z

    const/4 v1, 0x1

    aput-boolean v1, v0, p2

    .line 431
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSetPrefNwModeDone(SUB:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "): got Exception ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/codeaurora/telephony/msim/ModemStackController;->loge(Ljava/lang/String;)V

    .line 434
    :cond_0
    iget-object v0, p0, Lcom/codeaurora/telephony/msim/ModemStackController;->mSubState:[I

    aput v2, v0, p2

    .line 437
    invoke-direct {p0, v2}, Lcom/codeaurora/telephony/msim/ModemStackController;->areAllSubsinSameState(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 438
    invoke-direct {p0}, Lcom/codeaurora/telephony/msim/ModemStackController;->isAnyCmdFailed()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 439
    invoke-direct {p0}, Lcom/codeaurora/telephony/msim/ModemStackController;->recoverToPrevState()V

    .line 455
    :cond_1
    :goto_0
    return-void

    .line 443
    :cond_2
    iget-object v0, p0, Lcom/codeaurora/telephony/msim/ModemStackController;->mUpdateStackMsg:Landroid/os/Message;

    if-eqz v0, :cond_3

    .line 444
    iget-object v0, p0, Lcom/codeaurora/telephony/msim/ModemStackController;->mUpdateStackMsg:Landroid/os/Message;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/codeaurora/telephony/msim/ModemStackController;->sendResponseToTarget(Landroid/os/Message;I)V

    .line 445
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/codeaurora/telephony/msim/ModemStackController;->mUpdateStackMsg:Landroid/os/Message;

    .line 447
    :cond_3
    invoke-direct {p0}, Lcom/codeaurora/telephony/msim/ModemStackController;->updateNetworkSelectionMode()V

    .line 448
    invoke-direct {p0}, Lcom/codeaurora/telephony/msim/ModemStackController;->notifyStackReady()V

    .line 449
    iget-boolean v0, p0, Lcom/codeaurora/telephony/msim/ModemStackController;->mDeactivateAllSubscriptionFlag:Z

    if-eqz v0, :cond_4

    .line 450
    invoke-direct {p0}, Lcom/codeaurora/telephony/msim/ModemStackController;->activateAllSubscriptions()V

    goto :goto_0

    .line 452
    :cond_4
    const-string v0, "deactivateAllSubscriptionFlag is false not do activateAllSubscriptions"

    invoke-direct {p0, v0}, Lcom/codeaurora/telephony/msim/ModemStackController;->logd(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private onSubDeactivated(Landroid/os/AsyncResult;I)V
    .locals 6
    .param p1, "ar"    # Landroid/os/AsyncResult;
    .param p2, "subId"    # I

    .prologue
    const/4 v5, 0x3

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 350
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    .line 351
    .local v0, "success":Ljava/lang/Boolean;
    iget-object v4, p0, Lcom/codeaurora/telephony/msim/ModemStackController;->mCmdFailed:[Z

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_1

    move v1, v2

    :goto_0
    aput-boolean v1, v4, p2

    .line 352
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onSubDeactivated on subId["

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "] subStatus = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/codeaurora/telephony/msim/ModemStackController;->mSubState:[I

    aget v4, v4, p2

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " success="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/codeaurora/telephony/msim/ModemStackController;->logd(Ljava/lang/String;)V

    .line 356
    iget-object v1, p0, Lcom/codeaurora/telephony/msim/ModemStackController;->mSubState:[I

    aget v1, v1, p2

    if-ne v1, v5, :cond_2

    .line 378
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v1, v3

    .line 351
    goto :goto_0

    .line 358
    :cond_2
    iget-object v1, p0, Lcom/codeaurora/telephony/msim/ModemStackController;->mSubState:[I

    aput v5, v1, p2

    .line 359
    iget v1, p0, Lcom/codeaurora/telephony/msim/ModemStackController;->mDeactivedSubCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/codeaurora/telephony/msim/ModemStackController;->mDeactivedSubCount:I

    .line 362
    iget v1, p0, Lcom/codeaurora/telephony/msim/ModemStackController;->mDeactivedSubCount:I

    invoke-static {}, Lmiui/telephony/MultiSimManager;->getInstance()Lmiui/telephony/MultiSimManager;

    move-result-object v4

    invoke-virtual {v4}, Lmiui/telephony/MultiSimManager;->getMultiSimCount()I

    move-result v4

    if-ne v1, v4, :cond_0

    .line 365
    invoke-direct {p0}, Lcom/codeaurora/telephony/msim/ModemStackController;->isAnyCmdFailed()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 367
    iget-object v1, p0, Lcom/codeaurora/telephony/msim/ModemStackController;->mUpdateStackMsg:Landroid/os/Message;

    if-eqz v1, :cond_3

    .line 368
    iget-object v1, p0, Lcom/codeaurora/telephony/msim/ModemStackController;->mUpdateStackMsg:Landroid/os/Message;

    const/4 v4, 0x2

    invoke-direct {p0, v1, v4}, Lcom/codeaurora/telephony/msim/ModemStackController;->sendResponseToTarget(Landroid/os/Message;I)V

    .line 369
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/codeaurora/telephony/msim/ModemStackController;->mUpdateStackMsg:Landroid/os/Message;

    .line 371
    :cond_3
    iput-boolean v3, p0, Lcom/codeaurora/telephony/msim/ModemStackController;->mIsRecoveryInProgress:Z

    .line 372
    iput-boolean v2, p0, Lcom/codeaurora/telephony/msim/ModemStackController;->mIsStackReady:Z

    .line 373
    iget-object v1, p0, Lcom/codeaurora/telephony/msim/ModemStackController;->mStackReadyRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1}, Landroid/os/RegistrantList;->notifyRegistrants()V

    goto :goto_1

    .line 375
    :cond_4
    invoke-direct {p0}, Lcom/codeaurora/telephony/msim/ModemStackController;->triggerUnBindingOnAllSubs()V

    goto :goto_1
.end method

.method private onUnbindComplete(Landroid/os/AsyncResult;I)V
    .locals 3
    .param p1, "ar"    # Landroid/os/AsyncResult;
    .param p2, "subId"    # I

    .prologue
    const/4 v2, 0x4

    .line 393
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v0, v0, Lcom/android/internal/telephony/CommandException;

    if-eqz v0, :cond_0

    .line 394
    iget-object v0, p0, Lcom/codeaurora/telephony/msim/ModemStackController;->mCmdFailed:[Z

    const/4 v1, 0x1

    aput-boolean v1, v0, p2

    .line 395
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onUnbindComplete("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "): got Exception ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/codeaurora/telephony/msim/ModemStackController;->loge(Ljava/lang/String;)V

    .line 398
    :cond_0
    iget-object v0, p0, Lcom/codeaurora/telephony/msim/ModemStackController;->mSubState:[I

    aput v2, v0, p2

    .line 401
    invoke-direct {p0, v2}, Lcom/codeaurora/telephony/msim/ModemStackController;->areAllSubsinSameState(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 402
    invoke-direct {p0}, Lcom/codeaurora/telephony/msim/ModemStackController;->isAnyCmdFailed()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 403
    invoke-direct {p0}, Lcom/codeaurora/telephony/msim/ModemStackController;->recoverToPrevState()V

    .line 408
    :cond_1
    :goto_0
    return-void

    .line 406
    :cond_2
    invoke-direct {p0}, Lcom/codeaurora/telephony/msim/ModemStackController;->triggerBindingOnAllSubs()V

    goto :goto_0
.end method

.method private parseGetModemCapabilityResponse([BI)V
    .locals 7
    .param p1, "result"    # [B
    .param p2, "subId"    # I

    .prologue
    const/4 v5, 0x6

    .line 519
    array-length v3, p1

    if-eq v3, v5, :cond_0

    .line 520
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "parseGetModemCapabilityResponse: EXIT!, result length("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, p1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") and Expected length("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") not matching."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/codeaurora/telephony/msim/ModemStackController;->loge(Ljava/lang/String;)V

    .line 542
    :goto_0
    return-void

    .line 524
    :cond_0
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 525
    .local v0, "respBuffer":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 527
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    .line 529
    .local v1, "stackId":I
    if-ltz v1, :cond_1

    iget v3, p0, Lcom/codeaurora/telephony/msim/ModemStackController;->mNumPhones:I

    if-ge v1, v3, :cond_1

    .line 530
    iget-object v3, p0, Lcom/codeaurora/telephony/msim/ModemStackController;->mCurrentStackId:[I

    aput v1, v3, p2

    .line 535
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    .line 538
    .local v2, "supportedRatBitMask":I
    iget-object v3, p0, Lcom/codeaurora/telephony/msim/ModemStackController;->mModemCapInfo:[Lcom/codeaurora/telephony/msim/ModemStackController$ModemCapabilityInfo;

    iget-object v4, p0, Lcom/codeaurora/telephony/msim/ModemStackController;->mCurrentStackId:[I

    aget v4, v4, p2

    new-instance v5, Lcom/codeaurora/telephony/msim/ModemStackController$ModemCapabilityInfo;

    iget-object v6, p0, Lcom/codeaurora/telephony/msim/ModemStackController;->mCurrentStackId:[I

    aget v6, v6, p2

    invoke-direct {v5, p0, v6, v2}, Lcom/codeaurora/telephony/msim/ModemStackController$ModemCapabilityInfo;-><init>(Lcom/codeaurora/telephony/msim/ModemStackController;II)V

    aput-object v5, v3, v4

    .line 540
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "parseGetModemCapabilityResponse: ModemCaps["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/codeaurora/telephony/msim/ModemStackController;->mModemCapInfo:[Lcom/codeaurora/telephony/msim/ModemStackController$ModemCapabilityInfo;

    iget-object v5, p0, Lcom/codeaurora/telephony/msim/ModemStackController;->mCurrentStackId:[I

    aget v5, v5, p2

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/codeaurora/telephony/msim/ModemStackController;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 532
    .end local v2    # "supportedRatBitMask":I
    :cond_1
    const-string v3, "Invalid Index!!!"

    invoke-direct {p0, v3}, Lcom/codeaurora/telephony/msim/ModemStackController;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private processForceNetworkSelectionModeAuto(Lcom/android/internal/telephony/Phone;)V
    .locals 6
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;

    .prologue
    .line 728
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getSlotId()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/codeaurora/telephony/msim/ModemStackController;->getSavedNetworkSelection(I)Ljava/lang/String;

    move-result-object v2

    .line 729
    .local v2, "networkSelection":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 730
    const-string v3, "ModemStackController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "forceNetworkSelectionModeAuto setNetworkSelectionModeAutomatic slotId:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getSlotId()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 732
    const/16 v3, 0xc8

    invoke-virtual {p0, v3}, Lcom/codeaurora/telephony/msim/ModemStackController;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 733
    .local v1, "msg":Landroid/os/Message;
    invoke-interface {p1, v1}, Lcom/android/internal/telephony/Phone;->setNetworkSelectionModeAutomatic(Landroid/os/Message;)V

    .line 734
    iget-object v4, p0, Lcom/codeaurora/telephony/msim/ModemStackController;->mForceNetworkSelectionModeAutoLock:Ljava/lang/Object;

    monitor-enter v4

    .line 736
    :try_start_0
    iget-object v3, p0, Lcom/codeaurora/telephony/msim/ModemStackController;->mForceNetworkSelectionModeAutoLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 740
    :goto_0
    :try_start_1
    monitor-exit v4

    .line 742
    .end local v1    # "msg":Landroid/os/Message;
    :cond_0
    return-void

    .line 737
    .restart local v1    # "msg":Landroid/os/Message;
    :catch_0
    move-exception v0

    .line 738
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v3, "ModemStackController"

    const-string v5, "interrupted while trying to mForceNetworkSelectionModeAutoLock"

    invoke-static {v3, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 740
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method private processRadioAvailable(Landroid/os/AsyncResult;I)V
    .locals 3
    .param p1, "ar"    # Landroid/os/AsyncResult;
    .param p2, "subId"    # I

    .prologue
    .line 305
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "processRadioAvailable on subId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/codeaurora/telephony/msim/ModemStackController;->logd(Ljava/lang/String;)V

    .line 307
    if-ltz p2, :cond_0

    iget v1, p0, Lcom/codeaurora/telephony/msim/ModemStackController;->mNumPhones:I

    if-ge p2, v1, :cond_0

    .line 308
    const/4 v1, 0x2

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p2}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {p0, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 311
    .local v0, "getModemCapsMsg":Landroid/os/Message;
    iget-object v1, p0, Lcom/codeaurora/telephony/msim/ModemStackController;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v1, v1, p2

    invoke-interface {v1, v0}, Lcom/android/internal/telephony/CommandsInterface;->getModemCapability(Landroid/os/Message;)V

    .line 316
    .end local v0    # "getModemCapsMsg":Landroid/os/Message;
    :goto_0
    return-void

    .line 314
    :cond_0
    const-string v1, "Invalid Index!!!"

    invoke-direct {p0, v1}, Lcom/codeaurora/telephony/msim/ModemStackController;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private recoverToPrevState()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 798
    iget-boolean v1, p0, Lcom/codeaurora/telephony/msim/ModemStackController;->mIsRecoveryInProgress:Z

    if-eqz v1, :cond_2

    .line 801
    iget-object v1, p0, Lcom/codeaurora/telephony/msim/ModemStackController;->mUpdateStackMsg:Landroid/os/Message;

    if-eqz v1, :cond_0

    .line 802
    iget-object v1, p0, Lcom/codeaurora/telephony/msim/ModemStackController;->mUpdateStackMsg:Landroid/os/Message;

    const/4 v2, 0x2

    invoke-direct {p0, v1, v2}, Lcom/codeaurora/telephony/msim/ModemStackController;->sendResponseToTarget(Landroid/os/Message;I)V

    .line 803
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/codeaurora/telephony/msim/ModemStackController;->mUpdateStackMsg:Landroid/os/Message;

    .line 805
    :cond_0
    iput-boolean v3, p0, Lcom/codeaurora/telephony/msim/ModemStackController;->mIsRecoveryInProgress:Z

    .line 806
    const/4 v1, 0x7

    iget-object v2, p0, Lcom/codeaurora/telephony/msim/ModemStackController;->mSubState:[I

    aget v2, v2, v3

    if-ne v1, v2, :cond_1

    .line 809
    invoke-direct {p0}, Lcom/codeaurora/telephony/msim/ModemStackController;->notifyStackReady()V

    .line 820
    :cond_1
    :goto_0
    return-void

    .line 814
    :cond_2
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/codeaurora/telephony/msim/ModemStackController;->mIsRecoveryInProgress:Z

    .line 816
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v1, p0, Lcom/codeaurora/telephony/msim/ModemStackController;->mNumPhones:I

    if-ge v0, v1, :cond_3

    .line 817
    iget-object v1, p0, Lcom/codeaurora/telephony/msim/ModemStackController;->mPreferredStackId:[I

    iget-object v2, p0, Lcom/codeaurora/telephony/msim/ModemStackController;->mCurrentStackId:[I

    aget v2, v2, v0

    aput v2, v1, v0

    .line 816
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 819
    :cond_3
    invoke-direct {p0}, Lcom/codeaurora/telephony/msim/ModemStackController;->triggerUnBindingOnAllSubs()V

    goto :goto_0
.end method

.method private resetSubStates()V
    .locals 3

    .prologue
    .line 499
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/codeaurora/telephony/msim/ModemStackController;->mNumPhones:I

    if-ge v0, v1, :cond_0

    .line 500
    iget-object v1, p0, Lcom/codeaurora/telephony/msim/ModemStackController;->mSubState:[I

    const/4 v2, 0x1

    aput v2, v1, v0

    .line 501
    iget-object v1, p0, Lcom/codeaurora/telephony/msim/ModemStackController;->mCmdFailed:[Z

    const/4 v2, 0x0

    aput-boolean v2, v1, v0

    .line 499
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 503
    :cond_0
    return-void
.end method

.method private sendBroadcastForSimActived()V
    .locals 3

    .prologue
    .line 837
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CROSS_MAPPING_SIM_ACTIVED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 838
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/codeaurora/telephony/msim/ModemStackController;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 839
    const-string v1, "send ACTION_CROSS_MAPPING_SIM_ACTIVED"

    invoke-direct {p0, v1}, Lcom/codeaurora/telephony/msim/ModemStackController;->logd(Ljava/lang/String;)V

    .line 840
    return-void
.end method

.method private sendBroadcastForStartDeactive()V
    .locals 3

    .prologue
    .line 843
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CROSS_MAPPING_START_DEACTIVE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 844
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/codeaurora/telephony/msim/ModemStackController;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 845
    const-string v1, "send ACTION_CROSS_MAPPING_START_DEACTIVE"

    invoke-direct {p0, v1}, Lcom/codeaurora/telephony/msim/ModemStackController;->logd(Ljava/lang/String;)V

    .line 846
    return-void
.end method

.method private sendResponseToTarget(Landroid/os/Message;I)V
    .locals 2
    .param p1, "response"    # Landroid/os/Message;
    .param p2, "responseCode"    # I

    .prologue
    .line 823
    invoke-static {p2}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object v0

    .line 824
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    invoke-static {p1, v1, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 825
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 826
    return-void
.end method

.method private setPrefNwTypeOnAllSubs()V
    .locals 4

    .prologue
    .line 484
    invoke-direct {p0}, Lcom/codeaurora/telephony/msim/ModemStackController;->resetSubStates()V

    .line 485
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v2, p0, Lcom/codeaurora/telephony/msim/ModemStackController;->mNumPhones:I

    if-ge v0, v2, :cond_0

    .line 486
    const/4 v2, 0x7

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, v0}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p0, v2, v3}, Lcom/codeaurora/telephony/msim/ModemStackController;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 487
    .local v1, "resp":Landroid/os/Message;
    iget-object v2, p0, Lcom/codeaurora/telephony/msim/ModemStackController;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v2, v2, v0

    iget-object v3, p0, Lcom/codeaurora/telephony/msim/ModemStackController;->mPrefNwMode:[I

    aget v3, v3, v0

    invoke-interface {v2, v3, v1}, Lcom/android/internal/telephony/CommandsInterface;->setPreferredNetworkType(ILandroid/os/Message;)V

    .line 485
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 489
    .end local v1    # "resp":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method private syncPreferredNwModeFromDB()V
    .locals 5

    .prologue
    .line 545
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v2, p0, Lcom/codeaurora/telephony/msim/ModemStackController;->mNumPhones:I

    if-ge v0, v2, :cond_0

    .line 547
    :try_start_0
    iget-object v2, p0, Lcom/codeaurora/telephony/msim/ModemStackController;->mPrefNwMode:[I

    iget-object v3, p0, Lcom/codeaurora/telephony/msim/ModemStackController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "preferred_network_mode"

    invoke-static {v3, v4, v0}, Lcom/codeaurora/telephony/msim/MSimUtils;->getIntAtIndex(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    aput v3, v2, v0
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 545
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 549
    :catch_0
    move-exception v1

    .line 550
    .local v1, "snfe":Landroid/provider/Settings$SettingNotFoundException;
    const-string v2, "getPreferredNetworkMode: Could not find PREFERRED_NETWORK_MODE!!!"

    invoke-direct {p0, v2}, Lcom/codeaurora/telephony/msim/ModemStackController;->loge(Ljava/lang/String;)V

    .line 551
    iget-object v2, p0, Lcom/codeaurora/telephony/msim/ModemStackController;->mPrefNwMode:[I

    const/4 v3, 0x0

    aput v3, v2, v0

    goto :goto_1

    .line 554
    .end local v1    # "snfe":Landroid/provider/Settings$SettingNotFoundException;
    :cond_0
    return-void
.end method

.method private triggerBindingOnAllSubs()V
    .locals 3

    .prologue
    .line 471
    invoke-direct {p0}, Lcom/codeaurora/telephony/msim/ModemStackController;->resetSubStates()V

    .line 472
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/codeaurora/telephony/msim/ModemStackController;->mNumPhones:I

    if-ge v0, v1, :cond_0

    .line 473
    const/4 v1, 0x5

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v0}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p0, v1, v2}, Lcom/codeaurora/telephony/msim/ModemStackController;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/codeaurora/telephony/msim/ModemStackController;->sendMessage(Landroid/os/Message;)Z

    .line 472
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 475
    :cond_0
    return-void
.end method

.method private triggerDeactivationOnAllSubs()V
    .locals 1

    .prologue
    .line 478
    invoke-direct {p0}, Lcom/codeaurora/telephony/msim/ModemStackController;->resetSubStates()V

    .line 479
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/codeaurora/telephony/msim/ModemStackController;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/codeaurora/telephony/msim/ModemStackController;->sendMessage(Landroid/os/Message;)Z

    .line 480
    return-void
.end method

.method private triggerUnBindingOnAllSubs()V
    .locals 3

    .prologue
    .line 464
    invoke-direct {p0}, Lcom/codeaurora/telephony/msim/ModemStackController;->resetSubStates()V

    .line 465
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/codeaurora/telephony/msim/ModemStackController;->mNumPhones:I

    if-ge v0, v1, :cond_0

    .line 466
    const/4 v1, 0x3

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v0}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p0, v1, v2}, Lcom/codeaurora/telephony/msim/ModemStackController;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/codeaurora/telephony/msim/ModemStackController;->sendMessage(Landroid/os/Message;)Z

    .line 465
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 468
    :cond_0
    return-void
.end method

.method private unbindStackOnSub(I)V
    .locals 4
    .param p1, "subId"    # I

    .prologue
    .line 387
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unbindStack "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/codeaurora/telephony/msim/ModemStackController;->mCurrentStackId:[I

    aget v2, v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " On SubId["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/codeaurora/telephony/msim/ModemStackController;->logd(Ljava/lang/String;)V

    .line 388
    const/4 v1, 0x4

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {p0, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 389
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/codeaurora/telephony/msim/ModemStackController;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v1, v1, p1

    iget-object v2, p0, Lcom/codeaurora/telephony/msim/ModemStackController;->mCurrentStackId:[I

    aget v2, v2, p1

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3, v0}, Lcom/android/internal/telephony/CommandsInterface;->updateStackBinding(IILandroid/os/Message;)V

    .line 390
    return-void
.end method

.method private updateNetworkSelectionMode()V
    .locals 3

    .prologue
    .line 458
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/codeaurora/telephony/msim/ModemStackController;->mNumPhones:I

    if-ge v0, v1, :cond_0

    .line 459
    iget-object v1, p0, Lcom/codeaurora/telephony/msim/ModemStackController;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v1, v1, v0

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->setNetworkSelectionModeAutomatic(Landroid/os/Message;)V

    .line 458
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 461
    :cond_0
    return-void
.end method


# virtual methods
.method public getCurrentStackIdForSub(I)I
    .locals 1
    .param p1, "subId"    # I

    .prologue
    .line 582
    iget-object v0, p0, Lcom/codeaurora/telephony/msim/ModemStackController;->mCurrentStackId:[I

    aget v0, v0, p1

    return v0
.end method

.method public getModemRatCapsForSub(I)Lcom/codeaurora/telephony/msim/ModemStackController$ModemCapabilityInfo;
    .locals 2
    .param p1, "subId"    # I

    .prologue
    .line 586
    iget-object v0, p0, Lcom/codeaurora/telephony/msim/ModemStackController;->mModemCapInfo:[Lcom/codeaurora/telephony/msim/ModemStackController$ModemCapabilityInfo;

    iget-object v1, p0, Lcom/codeaurora/telephony/msim/ModemStackController;->mCurrentStackId:[I

    aget v1, v1, p1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getPrmarySub()I
    .locals 2

    .prologue
    .line 573
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/codeaurora/telephony/msim/ModemStackController;->mNumPhones:I

    if-ge v0, v1, :cond_1

    .line 574
    invoke-virtual {p0, v0}, Lcom/codeaurora/telephony/msim/ModemStackController;->getCurrentStackIdForSub(I)I

    move-result v1

    if-nez v1, :cond_0

    .line 578
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 573
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 578
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 229
    iget v2, p1, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_0

    .line 302
    :goto_0
    return-void

    .line 231
    :sswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 232
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    .line 233
    .local v1, "subId":Ljava/lang/Integer;
    const-string v2, "EVENT_RADIO_AVAILABLE"

    invoke-direct {p0, v2}, Lcom/codeaurora/telephony/msim/ModemStackController;->logd(Ljava/lang/String;)V

    .line 234
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, v0, v2}, Lcom/codeaurora/telephony/msim/ModemStackController;->processRadioAvailable(Landroid/os/AsyncResult;I)V

    goto :goto_0

    .line 238
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v1    # "subId":Ljava/lang/Integer;
    :sswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 239
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    .line 240
    .restart local v1    # "subId":Ljava/lang/Integer;
    const-string v2, "EVENT_GET_MODEM_CAPS_DONE"

    invoke-direct {p0, v2}, Lcom/codeaurora/telephony/msim/ModemStackController;->logd(Ljava/lang/String;)V

    .line 241
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, v0, v2}, Lcom/codeaurora/telephony/msim/ModemStackController;->onGetModemCapabilityDone(Landroid/os/AsyncResult;I)V

    goto :goto_0

    .line 245
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v1    # "subId":Ljava/lang/Integer;
    :sswitch_2
    const-string v2, "CMD_DEACTIVATE_ALL_SUBS"

    invoke-direct {p0, v2}, Lcom/codeaurora/telephony/msim/ModemStackController;->logd(Ljava/lang/String;)V

    .line 246
    invoke-direct {p0}, Lcom/codeaurora/telephony/msim/ModemStackController;->deactivateAllSubscriptions()V

    goto :goto_0

    .line 250
    :sswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 251
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    .line 252
    .restart local v1    # "subId":Ljava/lang/Integer;
    const-string v2, "EVENT_SUB_DEACTIVATED"

    invoke-direct {p0, v2}, Lcom/codeaurora/telephony/msim/ModemStackController;->logd(Ljava/lang/String;)V

    .line 253
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, v0, v2}, Lcom/codeaurora/telephony/msim/ModemStackController;->onSubDeactivated(Landroid/os/AsyncResult;I)V

    goto :goto_0

    .line 257
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v1    # "subId":Ljava/lang/Integer;
    :sswitch_4
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    .line 258
    .restart local v1    # "subId":Ljava/lang/Integer;
    const-string v2, "CMD_TRIGGER_UNBIND"

    invoke-direct {p0, v2}, Lcom/codeaurora/telephony/msim/ModemStackController;->logd(Ljava/lang/String;)V

    .line 259
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/codeaurora/telephony/msim/ModemStackController;->unbindStackOnSub(I)V

    goto :goto_0

    .line 263
    .end local v1    # "subId":Ljava/lang/Integer;
    :sswitch_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 264
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    .line 265
    .restart local v1    # "subId":Ljava/lang/Integer;
    const-string v2, "EVENT_UNBIND_DONE"

    invoke-direct {p0, v2}, Lcom/codeaurora/telephony/msim/ModemStackController;->logd(Ljava/lang/String;)V

    .line 266
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, v0, v2}, Lcom/codeaurora/telephony/msim/ModemStackController;->onUnbindComplete(Landroid/os/AsyncResult;I)V

    goto :goto_0

    .line 270
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v1    # "subId":Ljava/lang/Integer;
    :sswitch_6
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    .line 271
    .restart local v1    # "subId":Ljava/lang/Integer;
    const-string v2, "CMD_TRIGGER_BIND"

    invoke-direct {p0, v2}, Lcom/codeaurora/telephony/msim/ModemStackController;->logd(Ljava/lang/String;)V

    .line 272
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/codeaurora/telephony/msim/ModemStackController;->bindStackOnSub(I)V

    goto :goto_0

    .line 276
    .end local v1    # "subId":Ljava/lang/Integer;
    :sswitch_7
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 277
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    .line 278
    .restart local v1    # "subId":Ljava/lang/Integer;
    const-string v2, "EVENT_BIND_DONE"

    invoke-direct {p0, v2}, Lcom/codeaurora/telephony/msim/ModemStackController;->logd(Ljava/lang/String;)V

    .line 279
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, v0, v2}, Lcom/codeaurora/telephony/msim/ModemStackController;->onBindComplete(Landroid/os/AsyncResult;I)V

    goto/16 :goto_0

    .line 283
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v1    # "subId":Ljava/lang/Integer;
    :sswitch_8
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 284
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    .line 285
    .restart local v1    # "subId":Ljava/lang/Integer;
    const-string v2, "EVENT_SET_PREF_MODE_DONE"

    invoke-direct {p0, v2}, Lcom/codeaurora/telephony/msim/ModemStackController;->logd(Ljava/lang/String;)V

    .line 286
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, v0, v2}, Lcom/codeaurora/telephony/msim/ModemStackController;->onSetPrefNwModeDone(Landroid/os/AsyncResult;I)V

    goto/16 :goto_0

    .line 290
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v1    # "subId":Ljava/lang/Integer;
    :sswitch_9
    invoke-direct {p0}, Lcom/codeaurora/telephony/msim/ModemStackController;->activateAllSubscriptions()V

    goto/16 :goto_0

    .line 294
    :sswitch_a
    iget-object v3, p0, Lcom/codeaurora/telephony/msim/ModemStackController;->mForceNetworkSelectionModeAutoLock:Ljava/lang/Object;

    monitor-enter v3

    .line 295
    :try_start_0
    iget-object v2, p0, Lcom/codeaurora/telephony/msim/ModemStackController;->mForceNetworkSelectionModeAutoLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 296
    monitor-exit v3

    goto/16 :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 229
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_2
        0x2 -> :sswitch_1
        0x3 -> :sswitch_4
        0x4 -> :sswitch_5
        0x5 -> :sswitch_6
        0x6 -> :sswitch_7
        0x7 -> :sswitch_8
        0x8 -> :sswitch_3
        0x9 -> :sswitch_0
        0x64 -> :sswitch_9
        0xc8 -> :sswitch_a
    .end sparse-switch
.end method

.method public isStackReady()Z
    .locals 1

    .prologue
    .line 569
    iget-boolean v0, p0, Lcom/codeaurora/telephony/msim/ModemStackController;->mIsStackReady:Z

    return v0
.end method

.method public registerForModemRatCapsAvailable(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 3
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 787
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 788
    .local v0, "r":Landroid/os/Registrant;
    iget-boolean v1, p0, Lcom/codeaurora/telephony/msim/ModemStackController;->mModemRatCapabilitiesAvailable:Z

    if-eqz v1, :cond_0

    .line 789
    invoke-virtual {v0}, Landroid/os/Registrant;->notifyRegistrant()V

    .line 791
    :cond_0
    iget-object v2, p0, Lcom/codeaurora/telephony/msim/ModemStackController;->mModemRatCapsAvailableRegistrants:Landroid/os/RegistrantList;

    monitor-enter v2

    .line 792
    :try_start_0
    iget-object v1, p0, Lcom/codeaurora/telephony/msim/ModemStackController;->mModemRatCapsAvailableRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 793
    monitor-exit v2

    .line 794
    return-void

    .line 793
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public registerForStackReady(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 3
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 771
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 772
    .local v0, "r":Landroid/os/Registrant;
    iget-boolean v1, p0, Lcom/codeaurora/telephony/msim/ModemStackController;->mIsStackReady:Z

    if-eqz v1, :cond_0

    .line 773
    invoke-virtual {v0}, Landroid/os/Registrant;->notifyRegistrant()V

    .line 775
    :cond_0
    iget-object v2, p0, Lcom/codeaurora/telephony/msim/ModemStackController;->mStackReadyRegistrants:Landroid/os/RegistrantList;

    monitor-enter v2

    .line 776
    :try_start_0
    iget-object v1, p0, Lcom/codeaurora/telephony/msim/ModemStackController;->mStackReadyRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 777
    monitor-exit v2

    .line 778
    return-void

    .line 777
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public updateStackBinding([IZLandroid/os/Message;)I
    .locals 8
    .param p1, "prefStackIds"    # [I
    .param p2, "isBootUp"    # Z
    .param p3, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 590
    const/4 v3, 0x0

    .line 591
    .local v3, "isUpdateRequired":Z
    invoke-direct {p0}, Lcom/codeaurora/telephony/msim/ModemStackController;->isAnyCallsInProgress()Z

    move-result v0

    .line 592
    .local v0, "callInProgress":Z
    const-string v6, "persist.radio.disable_flexmap"

    invoke-static {v6, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v4, :cond_1

    move v2, v4

    .line 595
    .local v2, "isFlexmapDisabled":Z
    :goto_0
    if-nez v0, :cond_0

    iget-boolean v6, p0, Lcom/codeaurora/telephony/msim/ModemStackController;->mIsPhoneInEcbmMode:Z

    if-nez v6, :cond_0

    iget-boolean v6, p0, Lcom/codeaurora/telephony/msim/ModemStackController;->mIsStackReady:Z

    if-nez v6, :cond_2

    if-nez p2, :cond_2

    .line 596
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateStackBinding: Calls is progress = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ", mIsPhoneInEcbmMode = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v6, p0, Lcom/codeaurora/telephony/msim/ModemStackController;->mIsPhoneInEcbmMode:Z

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ", mIsStackReady = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v6, p0, Lcom/codeaurora/telephony/msim/ModemStackController;->mIsStackReady:Z

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ". So EXITING!!!"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/codeaurora/telephony/msim/ModemStackController;->loge(Ljava/lang/String;)V

    move v4, v5

    .line 631
    :goto_1
    return v4

    .end local v2    # "isFlexmapDisabled":Z
    :cond_1
    move v2, v5

    .line 592
    goto :goto_0

    .line 602
    .restart local v2    # "isFlexmapDisabled":Z
    :cond_2
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    iget v6, p0, Lcom/codeaurora/telephony/msim/ModemStackController;->mNumPhones:I

    if-ge v1, v6, :cond_3

    .line 603
    iget-object v6, p0, Lcom/codeaurora/telephony/msim/ModemStackController;->mPreferredStackId:[I

    aget v7, p1, v1

    aput v7, v6, v1

    .line 602
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 606
    :cond_3
    const/4 v1, 0x0

    :goto_3
    iget v6, p0, Lcom/codeaurora/telephony/msim/ModemStackController;->mNumPhones:I

    if-ge v1, v6, :cond_4

    .line 607
    iget-object v6, p0, Lcom/codeaurora/telephony/msim/ModemStackController;->mPreferredStackId:[I

    aget v6, v6, v1

    iget-object v7, p0, Lcom/codeaurora/telephony/msim/ModemStackController;->mCurrentStackId:[I

    aget v7, v7, v1

    if-eq v6, v7, :cond_5

    .line 609
    const/4 v3, 0x1

    .line 614
    :cond_4
    if-nez v2, :cond_7

    if-eqz v3, :cond_7

    .line 615
    iput-boolean v5, p0, Lcom/codeaurora/telephony/msim/ModemStackController;->mIsStackReady:Z

    .line 617
    iput-object p3, p0, Lcom/codeaurora/telephony/msim/ModemStackController;->mUpdateStackMsg:Landroid/os/Message;

    .line 619
    invoke-direct {p0}, Lcom/codeaurora/telephony/msim/ModemStackController;->syncPreferredNwModeFromDB()V

    .line 620
    if-eqz p2, :cond_6

    .line 621
    invoke-direct {p0}, Lcom/codeaurora/telephony/msim/ModemStackController;->triggerUnBindingOnAllSubs()V

    goto :goto_1

    .line 606
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 623
    :cond_6
    invoke-direct {p0}, Lcom/codeaurora/telephony/msim/ModemStackController;->triggerDeactivationOnAllSubs()V

    goto :goto_1

    .line 626
    :cond_7
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateStackBinding: FlexMap Disabled : "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/codeaurora/telephony/msim/ModemStackController;->loge(Ljava/lang/String;)V

    .line 628
    if-eqz p2, :cond_8

    invoke-direct {p0}, Lcom/codeaurora/telephony/msim/ModemStackController;->notifyStackReady()V

    :cond_8
    move v4, v5

    .line 629
    goto :goto_1
.end method
