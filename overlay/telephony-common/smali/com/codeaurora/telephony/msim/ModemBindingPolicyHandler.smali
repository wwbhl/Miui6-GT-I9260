.class public Lcom/codeaurora/telephony/msim/ModemBindingPolicyHandler;
.super Landroid/os/Handler;
.source "ModemBindingPolicyHandler.java"


# static fields
.field private static final EVENT_MODEM_RAT_CAPS_AVAILABLE:I = 0x1

.field private static final EVENT_UPDATE_BINDING_DONE:I = 0x2

.field private static final FAILURE:I = 0x0

.field static final LOG_TAG:Ljava/lang/String; = "ModemBindingPolicyHandler"

.field private static final NETWORK_MASK_CDMA:I = 0x31f0

.field private static final NETWORK_MASK_CDMA_NO_EVDO:I = 0x70

.field private static final NETWORK_MASK_EVDO_NO_CDMA:I = 0x3180

.field private static final NETWORK_MASK_GLOBAL:I = 0x1bffe

.field private static final NETWORK_MASK_GSM_ONLY:I = 0x10006

.field private static final NETWORK_MASK_GSM_UMTS:I = 0x18e0e

.field private static final NETWORK_MASK_LTE_CDMA_EVDO:I = 0x71f0

.field private static final NETWORK_MASK_LTE_CMDA_EVDO_GSM_WCDMA:I = 0x1fffe

.field private static final NETWORK_MASK_LTE_GSM_WCDMA:I = 0x1ce0e

.field private static final NETWORK_MASK_LTE_ONLY:I = 0x4000

.field private static final NETWORK_MASK_LTE_WCDMA:I = 0xce08

.field private static final NETWORK_MASK_TD_SCDMA_CDMA_EVDO_GSM_WCDMA:I = 0x3bffe

.field private static final NETWORK_MASK_TD_SCDMA_GSM:I = 0x30006

.field private static final NETWORK_MASK_TD_SCDMA_GSM_LTE:I = 0x34006

.field private static final NETWORK_MASK_TD_SCDMA_GSM_WCDMA:I = 0x38e0e

.field private static final NETWORK_MASK_TD_SCDMA_GSM_WCDMA_LTE:I = 0x3ce0e

.field private static final NETWORK_MASK_TD_SCDMA_LTE:I = 0x24000

.field private static final NETWORK_MASK_TD_SCDMA_LTE_CDMA_EVDO_GSM_WCDMA:I = 0x3fffe

.field private static final NETWORK_MASK_TD_SCDMA_ONLY:I = 0x20000

.field private static final NETWORK_MASK_TD_SCDMA_WCDMA:I = 0x28e08

.field private static final NETWORK_MASK_TD_SCDMA_WCDMA_LTE:I = 0x2ce08

.field private static final NETWORK_MASK_WCDMA_ONLY:I = 0x8e08

.field private static final NETWORK_MASK_WCDMA_PREF:I = 0x18e0e

.field private static final SUCCESS:I = 0x1

.field private static mModemStackController:Lcom/codeaurora/telephony/msim/ModemStackController;

.field private static sModemBindingPolicyHandler:Lcom/codeaurora/telephony/msim/ModemBindingPolicyHandler;


# instance fields
.field private mCi:[Lcom/android/internal/telephony/CommandsInterface;

.field private mContext:Landroid/content/Context;

.field private mCurrentStackId:[I

.field private mIsSetPrefNwModeInProgress:Z

.field private mModemCapInfo:[Lcom/codeaurora/telephony/msim/ModemStackController$ModemCapabilityInfo;

.field private mModemRatCapabilitiesAvailable:Z

.field private mNumPhones:I

.field private mPrefNwMode:[I

.field private mPreferredStackId:[I

.field private mStoredResponse:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/os/Message;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/codeaurora/telephony/msim/MSimUiccController;[Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uiccManager"    # Lcom/codeaurora/telephony/msim/MSimUiccController;
    .param p3, "ci"    # [Lcom/android/internal/telephony/CommandsInterface;

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 196
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 163
    invoke-static {}, Lmiui/telephony/MultiSimManager;->getInstance()Lmiui/telephony/MultiSimManager;

    move-result-object v1

    invoke-virtual {v1}, Lmiui/telephony/MultiSimManager;->getMultiSimCount()I

    move-result v1

    iput v1, p0, Lcom/codeaurora/telephony/msim/ModemBindingPolicyHandler;->mNumPhones:I

    .line 164
    iput-boolean v2, p0, Lcom/codeaurora/telephony/msim/ModemBindingPolicyHandler;->mModemRatCapabilitiesAvailable:Z

    .line 165
    iput-boolean v2, p0, Lcom/codeaurora/telephony/msim/ModemBindingPolicyHandler;->mIsSetPrefNwModeInProgress:Z

    .line 167
    iget v1, p0, Lcom/codeaurora/telephony/msim/ModemBindingPolicyHandler;->mNumPhones:I

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/codeaurora/telephony/msim/ModemBindingPolicyHandler;->mPreferredStackId:[I

    .line 168
    iget v1, p0, Lcom/codeaurora/telephony/msim/ModemBindingPolicyHandler;->mNumPhones:I

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/codeaurora/telephony/msim/ModemBindingPolicyHandler;->mCurrentStackId:[I

    .line 169
    iget v1, p0, Lcom/codeaurora/telephony/msim/ModemBindingPolicyHandler;->mNumPhones:I

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/codeaurora/telephony/msim/ModemBindingPolicyHandler;->mPrefNwMode:[I

    .line 170
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/codeaurora/telephony/msim/ModemBindingPolicyHandler;->mStoredResponse:Ljava/util/HashMap;

    .line 173
    iput-object v3, p0, Lcom/codeaurora/telephony/msim/ModemBindingPolicyHandler;->mModemCapInfo:[Lcom/codeaurora/telephony/msim/ModemStackController$ModemCapabilityInfo;

    .line 197
    const-string v1, "Constructor - Enter"

    invoke-direct {p0, v1}, Lcom/codeaurora/telephony/msim/ModemBindingPolicyHandler;->logd(Ljava/lang/String;)V

    .line 199
    iput-object p3, p0, Lcom/codeaurora/telephony/msim/ModemBindingPolicyHandler;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    .line 200
    iput-object p1, p0, Lcom/codeaurora/telephony/msim/ModemBindingPolicyHandler;->mContext:Landroid/content/Context;

    .line 201
    invoke-static {}, Lcom/codeaurora/telephony/msim/ModemStackController;->getInstance()Lcom/codeaurora/telephony/msim/ModemStackController;

    move-result-object v1

    sput-object v1, Lcom/codeaurora/telephony/msim/ModemBindingPolicyHandler;->mModemStackController:Lcom/codeaurora/telephony/msim/ModemStackController;

    .line 202
    iget v1, p0, Lcom/codeaurora/telephony/msim/ModemBindingPolicyHandler;->mNumPhones:I

    new-array v1, v1, [Lcom/codeaurora/telephony/msim/ModemStackController$ModemCapabilityInfo;

    iput-object v1, p0, Lcom/codeaurora/telephony/msim/ModemBindingPolicyHandler;->mModemCapInfo:[Lcom/codeaurora/telephony/msim/ModemStackController$ModemCapabilityInfo;

    .line 204
    sget-object v1, Lcom/codeaurora/telephony/msim/ModemBindingPolicyHandler;->mModemStackController:Lcom/codeaurora/telephony/msim/ModemStackController;

    const/4 v2, 0x1

    invoke-virtual {v1, p0, v2, v3}, Lcom/codeaurora/telephony/msim/ModemStackController;->registerForModemRatCapsAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 207
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/codeaurora/telephony/msim/ModemBindingPolicyHandler;->mNumPhones:I

    if-ge v0, v1, :cond_0

    .line 208
    iget-object v1, p0, Lcom/codeaurora/telephony/msim/ModemBindingPolicyHandler;->mPreferredStackId:[I

    aput v0, v1, v0

    .line 209
    iget-object v1, p0, Lcom/codeaurora/telephony/msim/ModemBindingPolicyHandler;->mCurrentStackId:[I

    aput v0, v1, v0

    .line 210
    iget-object v1, p0, Lcom/codeaurora/telephony/msim/ModemBindingPolicyHandler;->mStoredResponse:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 213
    :cond_0
    const-string v1, "Constructor - Exit"

    invoke-direct {p0, v1}, Lcom/codeaurora/telephony/msim/ModemBindingPolicyHandler;->logd(Ljava/lang/String;)V

    .line 214
    return-void
.end method

.method public static getInstance()Lcom/codeaurora/telephony/msim/ModemBindingPolicyHandler;
    .locals 2

    .prologue
    .line 188
    sget-object v0, Lcom/codeaurora/telephony/msim/ModemBindingPolicyHandler;->sModemBindingPolicyHandler:Lcom/codeaurora/telephony/msim/ModemBindingPolicyHandler;

    if-nez v0, :cond_0

    .line 189
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "ModemBindingPolicyHdlr.getInstance called before make()"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 191
    :cond_0
    sget-object v0, Lcom/codeaurora/telephony/msim/ModemBindingPolicyHandler;->sModemBindingPolicyHandler:Lcom/codeaurora/telephony/msim/ModemBindingPolicyHandler;

    return-object v0
.end method

.method private getNumOfRatSupportedForNwMode(ILcom/codeaurora/telephony/msim/ModemStackController$ModemCapabilityInfo;)I
    .locals 4
    .param p1, "nwMode"    # I
    .param p2, "modemCaps"    # Lcom/codeaurora/telephony/msim/ModemStackController$ModemCapabilityInfo;

    .prologue
    const v3, 0x18e0e

    .line 428
    const/4 v0, 0x0

    .line 430
    .local v0, "supportedRatMaskForNwMode":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getNumOfRATsSupportedForNwMode: nwMode["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] modemCaps = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/codeaurora/telephony/msim/ModemBindingPolicyHandler;->logd(Ljava/lang/String;)V

    .line 433
    packed-switch p1, :pswitch_data_0

    .line 553
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getNumOfRATsSupportedForNwMode: supportedRatMaskForNwMode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/codeaurora/telephony/msim/ModemBindingPolicyHandler;->logd(Ljava/lang/String;)V

    .line 556
    invoke-direct {p0, v0}, Lcom/codeaurora/telephony/msim/ModemBindingPolicyHandler;->getNumRatSupportedInMask(I)I

    move-result v1

    return v1

    .line 435
    :pswitch_0
    invoke-virtual {p2}, Lcom/codeaurora/telephony/msim/ModemStackController$ModemCapabilityInfo;->getSupportedRatBitMask()I

    move-result v1

    and-int v0, v1, v3

    .line 437
    goto :goto_0

    .line 440
    :pswitch_1
    invoke-virtual {p2}, Lcom/codeaurora/telephony/msim/ModemStackController$ModemCapabilityInfo;->getSupportedRatBitMask()I

    move-result v1

    const v2, 0x10006

    and-int v0, v1, v2

    .line 442
    goto :goto_0

    .line 445
    :pswitch_2
    invoke-virtual {p2}, Lcom/codeaurora/telephony/msim/ModemStackController$ModemCapabilityInfo;->getSupportedRatBitMask()I

    move-result v1

    const v2, 0x8e08

    and-int v0, v1, v2

    .line 447
    goto :goto_0

    .line 450
    :pswitch_3
    invoke-virtual {p2}, Lcom/codeaurora/telephony/msim/ModemStackController$ModemCapabilityInfo;->getSupportedRatBitMask()I

    move-result v1

    and-int v0, v1, v3

    .line 452
    goto :goto_0

    .line 455
    :pswitch_4
    invoke-virtual {p2}, Lcom/codeaurora/telephony/msim/ModemStackController$ModemCapabilityInfo;->getSupportedRatBitMask()I

    move-result v1

    and-int/lit16 v0, v1, 0x31f0

    .line 457
    goto :goto_0

    .line 460
    :pswitch_5
    invoke-virtual {p2}, Lcom/codeaurora/telephony/msim/ModemStackController$ModemCapabilityInfo;->getSupportedRatBitMask()I

    move-result v1

    and-int/lit8 v0, v1, 0x70

    .line 462
    goto :goto_0

    .line 465
    :pswitch_6
    invoke-virtual {p2}, Lcom/codeaurora/telephony/msim/ModemStackController$ModemCapabilityInfo;->getSupportedRatBitMask()I

    move-result v1

    and-int/lit16 v0, v1, 0x3180

    .line 467
    goto :goto_0

    .line 470
    :pswitch_7
    invoke-virtual {p2}, Lcom/codeaurora/telephony/msim/ModemStackController$ModemCapabilityInfo;->getSupportedRatBitMask()I

    move-result v1

    const v2, 0x1bffe

    and-int v0, v1, v2

    .line 472
    goto :goto_0

    .line 475
    :pswitch_8
    invoke-virtual {p2}, Lcom/codeaurora/telephony/msim/ModemStackController$ModemCapabilityInfo;->getSupportedRatBitMask()I

    move-result v1

    and-int/lit16 v0, v1, 0x71f0

    .line 477
    goto :goto_0

    .line 480
    :pswitch_9
    invoke-virtual {p2}, Lcom/codeaurora/telephony/msim/ModemStackController$ModemCapabilityInfo;->getSupportedRatBitMask()I

    move-result v1

    const v2, 0x1ce0e

    and-int v0, v1, v2

    .line 482
    goto :goto_0

    .line 485
    :pswitch_a
    invoke-virtual {p2}, Lcom/codeaurora/telephony/msim/ModemStackController$ModemCapabilityInfo;->getSupportedRatBitMask()I

    move-result v1

    const v2, 0x1fffe

    and-int v0, v1, v2

    .line 487
    goto :goto_0

    .line 490
    :pswitch_b
    invoke-virtual {p2}, Lcom/codeaurora/telephony/msim/ModemStackController$ModemCapabilityInfo;->getSupportedRatBitMask()I

    move-result v1

    and-int/lit16 v0, v1, 0x4000

    .line 492
    goto :goto_0

    .line 495
    :pswitch_c
    invoke-virtual {p2}, Lcom/codeaurora/telephony/msim/ModemStackController$ModemCapabilityInfo;->getSupportedRatBitMask()I

    move-result v1

    const v2, 0xce08

    and-int v0, v1, v2

    .line 497
    goto/16 :goto_0

    .line 500
    :pswitch_d
    invoke-virtual {p2}, Lcom/codeaurora/telephony/msim/ModemStackController$ModemCapabilityInfo;->getSupportedRatBitMask()I

    move-result v1

    const/high16 v2, 0x20000

    and-int v0, v1, v2

    .line 502
    goto/16 :goto_0

    .line 505
    :pswitch_e
    invoke-virtual {p2}, Lcom/codeaurora/telephony/msim/ModemStackController$ModemCapabilityInfo;->getSupportedRatBitMask()I

    move-result v1

    const v2, 0x28e08

    and-int v0, v1, v2

    .line 507
    goto/16 :goto_0

    .line 510
    :pswitch_f
    invoke-virtual {p2}, Lcom/codeaurora/telephony/msim/ModemStackController$ModemCapabilityInfo;->getSupportedRatBitMask()I

    move-result v1

    const v2, 0x24000

    and-int v0, v1, v2

    .line 512
    goto/16 :goto_0

    .line 515
    :pswitch_10
    invoke-virtual {p2}, Lcom/codeaurora/telephony/msim/ModemStackController$ModemCapabilityInfo;->getSupportedRatBitMask()I

    move-result v1

    const v2, 0x30006

    and-int v0, v1, v2

    .line 517
    goto/16 :goto_0

    .line 520
    :pswitch_11
    invoke-virtual {p2}, Lcom/codeaurora/telephony/msim/ModemStackController$ModemCapabilityInfo;->getSupportedRatBitMask()I

    move-result v1

    const v2, 0x34006

    and-int v0, v1, v2

    .line 522
    goto/16 :goto_0

    .line 525
    :pswitch_12
    invoke-virtual {p2}, Lcom/codeaurora/telephony/msim/ModemStackController$ModemCapabilityInfo;->getSupportedRatBitMask()I

    move-result v1

    const v2, 0x38e0e

    and-int v0, v1, v2

    .line 527
    goto/16 :goto_0

    .line 530
    :pswitch_13
    invoke-virtual {p2}, Lcom/codeaurora/telephony/msim/ModemStackController$ModemCapabilityInfo;->getSupportedRatBitMask()I

    move-result v1

    const v2, 0x2ce08

    and-int v0, v1, v2

    .line 532
    goto/16 :goto_0

    .line 535
    :pswitch_14
    invoke-virtual {p2}, Lcom/codeaurora/telephony/msim/ModemStackController$ModemCapabilityInfo;->getSupportedRatBitMask()I

    move-result v1

    const v2, 0x3ce0e

    and-int v0, v1, v2

    .line 537
    goto/16 :goto_0

    .line 540
    :pswitch_15
    invoke-virtual {p2}, Lcom/codeaurora/telephony/msim/ModemStackController$ModemCapabilityInfo;->getSupportedRatBitMask()I

    move-result v1

    const v2, 0x3bffe

    and-int v0, v1, v2

    .line 542
    goto/16 :goto_0

    .line 545
    :pswitch_16
    invoke-virtual {p2}, Lcom/codeaurora/telephony/msim/ModemStackController$ModemCapabilityInfo;->getSupportedRatBitMask()I

    move-result v1

    const v2, 0x3fffe

    and-int v0, v1, v2

    .line 547
    goto/16 :goto_0

    .line 433
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
    .end packed-switch
.end method

.method private getNumRatSupportedInMask(I)I
    .locals 2
    .param p1, "mask"    # I

    .prologue
    .line 561
    const/4 v0, 0x0

    .line 568
    .local v0, "noOfOnes":I
    :goto_0
    if-eqz p1, :cond_0

    .line 569
    add-int/lit8 v1, p1, -0x1

    and-int/2addr p1, v1

    .line 570
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 572
    :cond_0
    return v0
.end method

.method private handleModemRatCapsAvailable()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 251
    iput-boolean v1, p0, Lcom/codeaurora/telephony/msim/ModemBindingPolicyHandler;->mModemRatCapabilitiesAvailable:Z

    .line 253
    invoke-direct {p0, v1}, Lcom/codeaurora/telephony/msim/ModemBindingPolicyHandler;->updateStackBindingIfRequired(Z)I

    move-result v0

    if-ne v1, v0, :cond_0

    iput-boolean v1, p0, Lcom/codeaurora/telephony/msim/ModemBindingPolicyHandler;->mIsSetPrefNwModeInProgress:Z

    .line 254
    :cond_0
    return-void
.end method

.method private handleUpdateBindingDone(Landroid/os/AsyncResult;)V
    .locals 6
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    .line 236
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/codeaurora/telephony/msim/ModemBindingPolicyHandler;->mIsSetPrefNwModeInProgress:Z

    .line 238
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v3, p0, Lcom/codeaurora/telephony/msim/ModemBindingPolicyHandler;->mNumPhones:I

    if-ge v1, v3, :cond_2

    .line 239
    const/4 v0, 0x0

    .line 240
    .local v0, "errorCode":I
    iget-object v3, p0, Lcom/codeaurora/telephony/msim/ModemBindingPolicyHandler;->mStoredResponse:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Message;

    .line 241
    .local v2, "resp":Landroid/os/Message;
    if-eqz v2, :cond_1

    .line 242
    iget-object v3, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_0

    .line 243
    const/4 v0, 0x2

    .line 245
    :cond_0
    invoke-direct {p0, v2, v0}, Lcom/codeaurora/telephony/msim/ModemBindingPolicyHandler;->sendResponseToTarget(Landroid/os/Message;I)V

    .line 246
    iget-object v3, p0, Lcom/codeaurora/telephony/msim/ModemBindingPolicyHandler;->mStoredResponse:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 249
    .end local v0    # "errorCode":I
    .end local v2    # "resp":Landroid/os/Message;
    :cond_2
    return-void
.end method

.method private isNwModeSupportedOnStack(II)Z
    .locals 6
    .param p1, "nwMode"    # I
    .param p2, "stackId"    # I

    .prologue
    .line 358
    iget v4, p0, Lcom/codeaurora/telephony/msim/ModemBindingPolicyHandler;->mNumPhones:I

    new-array v3, v4, [I

    .line 359
    .local v3, "numRatSupported":[I
    const/4 v2, 0x0

    .line 360
    .local v2, "maxNumRatSupported":I
    const/4 v1, 0x0

    .line 363
    .local v1, "isSupported":Z
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v4, p0, Lcom/codeaurora/telephony/msim/ModemBindingPolicyHandler;->mNumPhones:I

    if-ge v0, v4, :cond_1

    .line 364
    iget-object v4, p0, Lcom/codeaurora/telephony/msim/ModemBindingPolicyHandler;->mModemCapInfo:[Lcom/codeaurora/telephony/msim/ModemStackController$ModemCapabilityInfo;

    aget-object v4, v4, v0

    invoke-direct {p0, p1, v4}, Lcom/codeaurora/telephony/msim/ModemBindingPolicyHandler;->getNumOfRatSupportedForNwMode(ILcom/codeaurora/telephony/msim/ModemStackController$ModemCapabilityInfo;)I

    move-result v4

    aput v4, v3, v0

    .line 365
    aget v4, v3, v0

    if-ge v2, v4, :cond_0

    aget v2, v3, v0

    .line 363
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 369
    :cond_1
    aget v4, v3, p2

    if-ne v4, v2, :cond_2

    const/4 v1, 0x1

    .line 371
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "nwMode:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", on stack:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz v1, :cond_3

    const-string v4, "Supported"

    :goto_1
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/codeaurora/telephony/msim/ModemBindingPolicyHandler;->logd(Ljava/lang/String;)V

    .line 374
    return v1

    .line 371
    :cond_3
    const-string v4, "Not Supported"

    goto :goto_1
.end method

.method private logd(Ljava/lang/String;)V
    .locals 1
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    .line 575
    const-string v0, "ModemBindingPolicyHandler"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 576
    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 1
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    .line 579
    const-string v0, "ModemBindingPolicyHandler"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 580
    return-void
.end method

.method public static make(Landroid/content/Context;Lcom/codeaurora/telephony/msim/MSimUiccController;[Lcom/android/internal/telephony/CommandsInterface;)Lcom/codeaurora/telephony/msim/ModemBindingPolicyHandler;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uiccMgr"    # Lcom/codeaurora/telephony/msim/MSimUiccController;
    .param p2, "ci"    # [Lcom/android/internal/telephony/CommandsInterface;

    .prologue
    .line 178
    const-string v0, "ModemBindingPolicyHandler"

    const-string v1, "getInstance"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    sget-object v0, Lcom/codeaurora/telephony/msim/ModemBindingPolicyHandler;->sModemBindingPolicyHandler:Lcom/codeaurora/telephony/msim/ModemBindingPolicyHandler;

    if-nez v0, :cond_0

    .line 180
    new-instance v0, Lcom/codeaurora/telephony/msim/ModemBindingPolicyHandler;

    invoke-direct {v0, p0, p1, p2}, Lcom/codeaurora/telephony/msim/ModemBindingPolicyHandler;-><init>(Landroid/content/Context;Lcom/codeaurora/telephony/msim/MSimUiccController;[Lcom/android/internal/telephony/CommandsInterface;)V

    sput-object v0, Lcom/codeaurora/telephony/msim/ModemBindingPolicyHandler;->sModemBindingPolicyHandler:Lcom/codeaurora/telephony/msim/ModemBindingPolicyHandler;

    .line 184
    sget-object v0, Lcom/codeaurora/telephony/msim/ModemBindingPolicyHandler;->sModemBindingPolicyHandler:Lcom/codeaurora/telephony/msim/ModemBindingPolicyHandler;

    return-object v0

    .line 182
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "ModemBindingPolicyHandler.make() should be called once"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private sendResponseToTarget(Landroid/os/Message;I)V
    .locals 2
    .param p1, "response"    # Landroid/os/Message;
    .param p2, "responseCode"    # I

    .prologue
    .line 419
    if-eqz p1, :cond_0

    .line 420
    invoke-static {p2}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object v0

    .line 421
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    invoke-static {p1, v1, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 422
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 424
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    return-void
.end method

.method private syncCurrentStackInfo()V
    .locals 4

    .prologue
    .line 258
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/codeaurora/telephony/msim/ModemBindingPolicyHandler;->mNumPhones:I

    if-ge v0, v1, :cond_1

    .line 259
    iget-object v1, p0, Lcom/codeaurora/telephony/msim/ModemBindingPolicyHandler;->mCurrentStackId:[I

    sget-object v2, Lcom/codeaurora/telephony/msim/ModemBindingPolicyHandler;->mModemStackController:Lcom/codeaurora/telephony/msim/ModemStackController;

    invoke-virtual {v2, v0}, Lcom/codeaurora/telephony/msim/ModemStackController;->getCurrentStackIdForSub(I)I

    move-result v2

    aput v2, v1, v0

    .line 260
    iget-object v1, p0, Lcom/codeaurora/telephony/msim/ModemBindingPolicyHandler;->mModemCapInfo:[Lcom/codeaurora/telephony/msim/ModemStackController$ModemCapabilityInfo;

    iget-object v2, p0, Lcom/codeaurora/telephony/msim/ModemBindingPolicyHandler;->mCurrentStackId:[I

    aget v2, v2, v0

    sget-object v3, Lcom/codeaurora/telephony/msim/ModemBindingPolicyHandler;->mModemStackController:Lcom/codeaurora/telephony/msim/ModemStackController;

    invoke-virtual {v3, v0}, Lcom/codeaurora/telephony/msim/ModemStackController;->getModemRatCapsForSub(I)Lcom/codeaurora/telephony/msim/ModemStackController$ModemCapabilityInfo;

    move-result-object v3

    aput-object v3, v1, v2

    .line 262
    iget-object v2, p0, Lcom/codeaurora/telephony/msim/ModemBindingPolicyHandler;->mPreferredStackId:[I

    iget-object v1, p0, Lcom/codeaurora/telephony/msim/ModemBindingPolicyHandler;->mCurrentStackId:[I

    aget v1, v1, v0

    if-ltz v1, :cond_0

    iget-object v1, p0, Lcom/codeaurora/telephony/msim/ModemBindingPolicyHandler;->mCurrentStackId:[I

    aget v1, v1, v0

    :goto_1
    aput v1, v2, v0

    .line 258
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    .line 262
    goto :goto_1

    .line 264
    :cond_1
    return-void
.end method

.method private syncPreferredNwModeFromDB()V
    .locals 5

    .prologue
    .line 378
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v2, p0, Lcom/codeaurora/telephony/msim/ModemBindingPolicyHandler;->mNumPhones:I

    if-ge v0, v2, :cond_0

    .line 380
    :try_start_0
    iget-object v2, p0, Lcom/codeaurora/telephony/msim/ModemBindingPolicyHandler;->mPrefNwMode:[I

    iget-object v3, p0, Lcom/codeaurora/telephony/msim/ModemBindingPolicyHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "preferred_network_mode"

    invoke-static {v3, v4, v0}, Lcom/codeaurora/telephony/msim/MSimUtils;->getIntAtIndex(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    aput v3, v2, v0
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 378
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 382
    :catch_0
    move-exception v1

    .line 383
    .local v1, "snfe":Landroid/provider/Settings$SettingNotFoundException;
    const-string v2, "getPreferredNetworkMode: Could not find PREFERRED_NETWORK_MODE!!!"

    invoke-direct {p0, v2}, Lcom/codeaurora/telephony/msim/ModemBindingPolicyHandler;->loge(Ljava/lang/String;)V

    .line 384
    iget-object v2, p0, Lcom/codeaurora/telephony/msim/ModemBindingPolicyHandler;->mPrefNwMode:[I

    const/4 v3, 0x0

    aput v3, v2, v0

    goto :goto_1

    .line 387
    .end local v1    # "snfe":Landroid/provider/Settings$SettingNotFoundException;
    :cond_0
    return-void
.end method

.method private updatePreferredStackIds()V
    .locals 4

    .prologue
    .line 318
    iget-boolean v2, p0, Lcom/codeaurora/telephony/msim/ModemBindingPolicyHandler;->mModemRatCapabilitiesAvailable:Z

    if-nez v2, :cond_1

    .line 319
    const-string v2, "updatePreferredStackIds: Modem Capabilites are not Available. Return!!"

    invoke-direct {p0, v2}, Lcom/codeaurora/telephony/msim/ModemBindingPolicyHandler;->loge(Ljava/lang/String;)V

    .line 355
    :cond_0
    return-void

    .line 324
    :cond_1
    invoke-direct {p0}, Lcom/codeaurora/telephony/msim/ModemBindingPolicyHandler;->syncPreferredNwModeFromDB()V

    .line 325
    invoke-direct {p0}, Lcom/codeaurora/telephony/msim/ModemBindingPolicyHandler;->syncCurrentStackInfo()V

    .line 327
    const/4 v0, 0x0

    .local v0, "curSub":I
    :goto_0
    iget v2, p0, Lcom/codeaurora/telephony/msim/ModemBindingPolicyHandler;->mNumPhones:I

    if-ge v0, v2, :cond_0

    .line 329
    iget-object v2, p0, Lcom/codeaurora/telephony/msim/ModemBindingPolicyHandler;->mPrefNwMode:[I

    aget v2, v2, v0

    iget-object v3, p0, Lcom/codeaurora/telephony/msim/ModemBindingPolicyHandler;->mCurrentStackId:[I

    aget v3, v3, v0

    invoke-direct {p0, v2, v3}, Lcom/codeaurora/telephony/msim/ModemBindingPolicyHandler;->isNwModeSupportedOnStack(II)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 330
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updatePreferredStackIds: current stack["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/codeaurora/telephony/msim/ModemBindingPolicyHandler;->mCurrentStackId:[I

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]supports NwMode["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/codeaurora/telephony/msim/ModemBindingPolicyHandler;->mPrefNwMode:[I

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] on subId["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/codeaurora/telephony/msim/ModemBindingPolicyHandler;->logd(Ljava/lang/String;)V

    .line 327
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 337
    :cond_3
    const/4 v1, 0x0

    .local v1, "otherSub":I
    :goto_1
    iget v2, p0, Lcom/codeaurora/telephony/msim/ModemBindingPolicyHandler;->mNumPhones:I

    if-ge v1, v2, :cond_2

    .line 339
    if-ne v1, v0, :cond_5

    .line 337
    :cond_4
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 341
    :cond_5
    iget-object v2, p0, Lcom/codeaurora/telephony/msim/ModemBindingPolicyHandler;->mPrefNwMode:[I

    aget v2, v2, v0

    iget-object v3, p0, Lcom/codeaurora/telephony/msim/ModemBindingPolicyHandler;->mCurrentStackId:[I

    aget v3, v3, v1

    invoke-direct {p0, v2, v3}, Lcom/codeaurora/telephony/msim/ModemBindingPolicyHandler;->isNwModeSupportedOnStack(II)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 344
    iget-object v2, p0, Lcom/codeaurora/telephony/msim/ModemBindingPolicyHandler;->mPrefNwMode:[I

    aget v2, v2, v1

    iget-object v3, p0, Lcom/codeaurora/telephony/msim/ModemBindingPolicyHandler;->mCurrentStackId:[I

    aget v3, v3, v0

    invoke-direct {p0, v2, v3}, Lcom/codeaurora/telephony/msim/ModemBindingPolicyHandler;->isNwModeSupportedOnStack(II)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 345
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updatePreferredStackIds: Cross Binding is possible between SubId["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] and SubId["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/codeaurora/telephony/msim/ModemBindingPolicyHandler;->logd(Ljava/lang/String;)V

    .line 349
    iget-object v2, p0, Lcom/codeaurora/telephony/msim/ModemBindingPolicyHandler;->mPreferredStackId:[I

    iget-object v3, p0, Lcom/codeaurora/telephony/msim/ModemBindingPolicyHandler;->mCurrentStackId:[I

    aget v3, v3, v1

    aput v3, v2, v0

    .line 350
    iget-object v2, p0, Lcom/codeaurora/telephony/msim/ModemBindingPolicyHandler;->mPreferredStackId:[I

    iget-object v3, p0, Lcom/codeaurora/telephony/msim/ModemBindingPolicyHandler;->mCurrentStackId:[I

    aget v3, v3, v0

    aput v3, v2, v1

    goto :goto_2
.end method

.method private updateStackBindingIfRequired(Z)I
    .locals 6
    .param p1, "isBootUp"    # Z

    .prologue
    .line 275
    const/4 v1, 0x0

    .line 276
    .local v1, "isUpdateStackBindingRequired":Z
    const/4 v3, 0x0

    .line 278
    .local v3, "response":I
    invoke-direct {p0}, Lcom/codeaurora/telephony/msim/ModemBindingPolicyHandler;->updatePreferredStackIds()V

    .line 280
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v4, p0, Lcom/codeaurora/telephony/msim/ModemBindingPolicyHandler;->mNumPhones:I

    if-ge v0, v4, :cond_0

    .line 281
    iget-object v4, p0, Lcom/codeaurora/telephony/msim/ModemBindingPolicyHandler;->mPreferredStackId:[I

    aget v4, v4, v0

    iget-object v5, p0, Lcom/codeaurora/telephony/msim/ModemBindingPolicyHandler;->mCurrentStackId:[I

    aget v5, v5, v0

    if-eq v4, v5, :cond_3

    .line 283
    const/4 v1, 0x1

    .line 287
    :cond_0
    if-nez p1, :cond_1

    if-eqz v1, :cond_2

    .line 288
    :cond_1
    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static {p0, v4, v5}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 289
    .local v2, "msg":Landroid/os/Message;
    sget-object v4, Lcom/codeaurora/telephony/msim/ModemBindingPolicyHandler;->mModemStackController:Lcom/codeaurora/telephony/msim/ModemStackController;

    iget-object v5, p0, Lcom/codeaurora/telephony/msim/ModemBindingPolicyHandler;->mPreferredStackId:[I

    invoke-virtual {v4, v5, p1, v2}, Lcom/codeaurora/telephony/msim/ModemStackController;->updateStackBinding([IZLandroid/os/Message;)I

    move-result v3

    .line 292
    .end local v2    # "msg":Landroid/os/Message;
    :cond_2
    return v3

    .line 280
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 220
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 233
    :goto_0
    return-void

    .line 222
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 223
    .local v0, "ar":Landroid/os/AsyncResult;
    invoke-direct {p0, v0}, Lcom/codeaurora/telephony/msim/ModemBindingPolicyHandler;->handleUpdateBindingDone(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 227
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_1
    invoke-direct {p0}, Lcom/codeaurora/telephony/msim/ModemBindingPolicyHandler;->handleModemRatCapsAvailable()V

    goto :goto_0

    .line 220
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setPreferredNetworkType(IILandroid/os/Message;)V
    .locals 5
    .param p1, "networkType"    # I
    .param p2, "subscription"    # I
    .param p3, "response"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 392
    iget-boolean v0, p0, Lcom/codeaurora/telephony/msim/ModemBindingPolicyHandler;->mIsSetPrefNwModeInProgress:Z

    if-eqz v0, :cond_0

    .line 393
    const-string v0, "setPreferredNetworkType: In Progress:"

    invoke-direct {p0, v0}, Lcom/codeaurora/telephony/msim/ModemBindingPolicyHandler;->loge(Ljava/lang/String;)V

    .line 394
    const/4 v0, 0x2

    invoke-direct {p0, p3, v0}, Lcom/codeaurora/telephony/msim/ModemBindingPolicyHandler;->sendResponseToTarget(Landroid/os/Message;I)V

    .line 416
    :goto_0
    return-void

    .line 398
    :cond_0
    const-string v0, "0"

    const-string v1, "persist.radio.disable_flexmap"

    const-string v2, "1"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 400
    iget-object v0, p0, Lcom/codeaurora/telephony/msim/ModemBindingPolicyHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "preferred_network_mode"

    invoke-static {v0, v1, p2, p1}, Lcom/codeaurora/telephony/msim/MSimUtils;->putIntAtIndex(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 404
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setPreferredNetworkType: nwMode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", on subId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/codeaurora/telephony/msim/ModemBindingPolicyHandler;->logd(Ljava/lang/String;)V

    .line 406
    iput-boolean v4, p0, Lcom/codeaurora/telephony/msim/ModemBindingPolicyHandler;->mIsSetPrefNwModeInProgress:Z

    .line 410
    invoke-direct {p0, v3}, Lcom/codeaurora/telephony/msim/ModemBindingPolicyHandler;->updateStackBindingIfRequired(Z)I

    move-result v0

    if-ne v0, v4, :cond_2

    .line 411
    iget-object v0, p0, Lcom/codeaurora/telephony/msim/ModemBindingPolicyHandler;->mStoredResponse:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 413
    :cond_2
    iget-object v0, p0, Lcom/codeaurora/telephony/msim/ModemBindingPolicyHandler;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v0, v0, p2

    invoke-interface {v0, p1, p3}, Lcom/android/internal/telephony/CommandsInterface;->setPreferredNetworkType(ILandroid/os/Message;)V

    .line 414
    iput-boolean v3, p0, Lcom/codeaurora/telephony/msim/ModemBindingPolicyHandler;->mIsSetPrefNwModeInProgress:Z

    goto :goto_0
.end method
