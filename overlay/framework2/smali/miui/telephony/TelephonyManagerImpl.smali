.class public Lmiui/telephony/TelephonyManagerImpl;
.super Ljava/lang/Object;
.source "TelephonyManagerImpl.java"

# interfaces
.implements Lmiui/telephony/TelephonyManager;


# static fields
.field private static final TAG:Ljava/lang/String; = "MiuiTelephonyManager"


# instance fields
.field private mSlotId:I

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "slotId"    # I

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput p1, p0, Lmiui/telephony/TelephonyManagerImpl;->mSlotId:I

    .line 31
    invoke-static {p1}, Landroid/telephony/TelephonyManager;->getDefault(I)Landroid/telephony/TelephonyManager;

    move-result-object v0

    iput-object v0, p0, Lmiui/telephony/TelephonyManagerImpl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 32
    return-void
.end method


# virtual methods
.method public answerRingingCall()V
    .locals 1

    .prologue
    .line 713
    iget-object v0, p0, Lmiui/telephony/TelephonyManagerImpl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->answerRingingCall()V

    .line 714
    return-void
.end method

.method public call(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "number"    # Ljava/lang/String;

    .prologue
    .line 697
    iget-object v0, p0, Lmiui/telephony/TelephonyManagerImpl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, p1, p2}, Landroid/telephony/TelephonyManager;->call(Ljava/lang/String;Ljava/lang/String;)V

    .line 698
    return-void
.end method

.method public cancelMissedCallsNotification()V
    .locals 1

    .prologue
    .line 741
    iget-object v0, p0, Lmiui/telephony/TelephonyManagerImpl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->cancelMissedCallsNotification()V

    .line 742
    return-void
.end method

.method public dial(Ljava/lang/String;)V
    .locals 1
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 693
    iget-object v0, p0, Lmiui/telephony/TelephonyManagerImpl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, p1}, Landroid/telephony/TelephonyManager;->dial(Ljava/lang/String;)V

    .line 694
    return-void
.end method

.method public disableDataConnectivity()Z
    .locals 1

    .prologue
    .line 785
    iget-object v0, p0, Lmiui/telephony/TelephonyManagerImpl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->disableDataConnectivity()Z

    move-result v0

    return v0
.end method

.method public disableLocationUpdates()V
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lmiui/telephony/TelephonyManagerImpl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->disableLocationUpdates()V

    .line 104
    return-void
.end method

.method public enableDataConnectivity()Z
    .locals 1

    .prologue
    .line 781
    iget-object v0, p0, Lmiui/telephony/TelephonyManagerImpl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->enableDataConnectivity()Z

    move-result v0

    return v0
.end method

.method public enableLocationUpdates()V
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lmiui/telephony/TelephonyManagerImpl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->enableLocationUpdates()V

    .line 92
    return-void
.end method

.method public endCall()Z
    .locals 1

    .prologue
    .line 709
    iget-object v0, p0, Lmiui/telephony/TelephonyManagerImpl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->endCall()Z

    move-result v0

    return v0
.end method

.method public getAllCellInfo()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/CellInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 660
    iget-object v0, p0, Lmiui/telephony/TelephonyManagerImpl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getAllCellInfo()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getCallState()I
    .locals 1

    .prologue
    .line 514
    iget-object v0, p0, Lmiui/telephony/TelephonyManagerImpl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v0

    return v0
.end method

.method public getCdmaEriIconIndex()I
    .locals 1

    .prologue
    .line 582
    iget-object v0, p0, Lmiui/telephony/TelephonyManagerImpl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCdmaEriIconIndex()I

    move-result v0

    return v0
.end method

.method public getCdmaEriIconMode()I
    .locals 1

    .prologue
    .line 592
    iget-object v0, p0, Lmiui/telephony/TelephonyManagerImpl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCdmaEriIconMode()I

    move-result v0

    return v0
.end method

.method public getCdmaEriText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 600
    iget-object v0, p0, Lmiui/telephony/TelephonyManagerImpl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCdmaEriText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCellLocation()Landroid/telephony/CellLocation;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lmiui/telephony/TelephonyManagerImpl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v0

    return-object v0
.end method

.method public getCompleteVoiceMailNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 461
    iget-object v0, p0, Lmiui/telephony/TelephonyManagerImpl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCompleteVoiceMailNumber()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentPhoneType()I
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lmiui/telephony/TelephonyManagerImpl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType()I

    move-result v0

    return v0
.end method

.method public getDataActivity()I
    .locals 1

    .prologue
    .line 528
    iget-object v0, p0, Lmiui/telephony/TelephonyManagerImpl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDataActivity()I

    move-result v0

    return v0
.end method

.method public getDataNetworkType()I
    .locals 1

    .prologue
    .line 262
    iget-object v0, p0, Lmiui/telephony/TelephonyManagerImpl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDataNetworkType()I

    move-result v0

    return v0
.end method

.method public getDataState()I
    .locals 1

    .prologue
    .line 541
    iget-object v0, p0, Lmiui/telephony/TelephonyManagerImpl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDataState()I

    move-result v0

    return v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lmiui/telephony/TelephonyManagerImpl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceSoftwareVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lmiui/telephony/TelephonyManagerImpl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceSoftwareVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getGroupIdLevel1()Ljava/lang/String;
    .locals 1

    .prologue
    .line 405
    iget-object v0, p0, Lmiui/telephony/TelephonyManagerImpl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getGroupIdLevel1()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIsimDomain()Ljava/lang/String;
    .locals 1

    .prologue
    .line 498
    iget-object v0, p0, Lmiui/telephony/TelephonyManagerImpl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getIsimDomain()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIsimImpi()Ljava/lang/String;
    .locals 1

    .prologue
    .line 490
    iget-object v0, p0, Lmiui/telephony/TelephonyManagerImpl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getIsimImpi()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIsimImpu()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 507
    iget-object v0, p0, Lmiui/telephony/TelephonyManagerImpl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getIsimImpu()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLine1AlphaTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 428
    iget-object v0, p0, Lmiui/telephony/TelephonyManagerImpl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getLine1AlphaTag()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLine1Number()Ljava/lang/String;
    .locals 1

    .prologue
    .line 416
    iget-object v0, p0, Lmiui/telephony/TelephonyManagerImpl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLteOnCdmaMode()I
    .locals 1

    .prologue
    .line 377
    iget-object v0, p0, Lmiui/telephony/TelephonyManagerImpl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getLteOnCdmaMode()I

    move-result v0

    return v0
.end method

.method public getLteOnCdmaModeStatic()I
    .locals 1

    .prologue
    .line 169
    invoke-static {}, Landroid/telephony/TelephonyManager;->getLteOnCdmaModeStatic()I

    move-result v0

    return v0
.end method

.method public getMmsUAProfUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 689
    iget-object v0, p0, Lmiui/telephony/TelephonyManagerImpl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getMmsUAProfUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMmsUserAgent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 682
    iget-object v0, p0, Lmiui/telephony/TelephonyManagerImpl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getMmsUserAgent()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMsisdn()Ljava/lang/String;
    .locals 1

    .prologue
    .line 440
    iget-object v0, p0, Lmiui/telephony/TelephonyManagerImpl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getMsisdn()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNeighboringCellInfo()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/NeighboringCellInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 118
    iget-object v0, p0, Lmiui/telephony/TelephonyManagerImpl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNeighboringCellInfo()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkClass(I)I
    .locals 1
    .param p1, "networkType"    # I

    .prologue
    .line 279
    invoke-static {p1}, Landroid/telephony/TelephonyManager;->getNetworkClass(I)I

    move-result v0

    return v0
.end method

.method public getNetworkCountryIso()Ljava/lang/String;
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Lmiui/telephony/TelephonyManagerImpl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkOperator()Ljava/lang/String;
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lmiui/telephony/TelephonyManagerImpl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkOperatorName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lmiui/telephony/TelephonyManagerImpl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkType()I
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lmiui/telephony/TelephonyManagerImpl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v0

    return v0
.end method

.method public getNetworkTypeName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 290
    invoke-virtual {p0}, Lmiui/telephony/TelephonyManagerImpl;->getNetworkType()I

    move-result v0

    invoke-virtual {p0, v0}, Lmiui/telephony/TelephonyManagerImpl;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkTypeName(I)Ljava/lang/String;
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 294
    invoke-static {p1}, Landroid/telephony/TelephonyManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPhoneType()I
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lmiui/telephony/TelephonyManagerImpl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v0

    return v0
.end method

.method public getPhoneType(I)I
    .locals 1
    .param p1, "networkMode"    # I

    .prologue
    .line 156
    invoke-static {p1}, Landroid/telephony/TelephonyManager;->getPhoneType(I)I

    move-result v0

    return v0
.end method

.method public getSimCountryIso()Ljava/lang/String;
    .locals 1

    .prologue
    .line 353
    iget-object v0, p0, Lmiui/telephony/TelephonyManagerImpl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSimOperator()Ljava/lang/String;
    .locals 1

    .prologue
    .line 335
    iget-object v0, p0, Lmiui/telephony/TelephonyManagerImpl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSimOperatorName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 346
    iget-object v0, p0, Lmiui/telephony/TelephonyManagerImpl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimOperatorName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSimSerialNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 364
    iget-object v0, p0, Lmiui/telephony/TelephonyManagerImpl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimSerialNumber()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSimState()I
    .locals 1

    .prologue
    .line 323
    iget-object v0, p0, Lmiui/telephony/TelephonyManagerImpl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v0

    return v0
.end method

.method public getSlotId()I
    .locals 1

    .prologue
    .line 805
    iget v0, p0, Lmiui/telephony/TelephonyManagerImpl;->mSlotId:I

    return v0
.end method

.method public getSubscriberId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 394
    iget-object v0, p0, Lmiui/telephony/TelephonyManagerImpl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "index"    # I
    .param p3, "defaultVal"    # Ljava/lang/String;

    .prologue
    .line 227
    invoke-static {p1, p2, p3}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVoiceMailAlphaTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 482
    iget-object v0, p0, Lmiui/telephony/TelephonyManagerImpl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getVoiceMailAlphaTag()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVoiceMailNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 450
    iget-object v0, p0, Lmiui/telephony/TelephonyManagerImpl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVoiceMessageCount()I
    .locals 1

    .prologue
    .line 471
    iget-object v0, p0, Lmiui/telephony/TelephonyManagerImpl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getVoiceMessageCount()I

    move-result v0

    return v0
.end method

.method public getVoiceNetworkType()I
    .locals 1

    .prologue
    .line 270
    iget-object v0, p0, Lmiui/telephony/TelephonyManagerImpl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getVoiceNetworkType()I

    move-result v0

    return v0
.end method

.method public handlePinMmi(Ljava/lang/String;)Z
    .locals 1
    .param p1, "dialString"    # Ljava/lang/String;

    .prologue
    .line 761
    iget-object v0, p0, Lmiui/telephony/TelephonyManagerImpl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, p1}, Landroid/telephony/TelephonyManager;->handlePinMmi(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public hasIccCard()Z
    .locals 1

    .prologue
    .line 307
    iget-object v0, p0, Lmiui/telephony/TelephonyManagerImpl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->hasIccCard()Z

    move-result v0

    return v0
.end method

.method public isDataConnectivityPossible()Z
    .locals 1

    .prologue
    .line 789
    iget-object v0, p0, Lmiui/telephony/TelephonyManagerImpl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isDataConnectivityPossible()Z

    move-result v0

    return v0
.end method

.method public isIdle()Z
    .locals 1

    .prologue
    .line 729
    iget-object v0, p0, Lmiui/telephony/TelephonyManagerImpl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isIdle()Z

    move-result v0

    return v0
.end method

.method public isNetworkRoaming()Z
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lmiui/telephony/TelephonyManagerImpl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v0

    return v0
.end method

.method public isOffhook()Z
    .locals 1

    .prologue
    .line 721
    iget-object v0, p0, Lmiui/telephony/TelephonyManagerImpl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isOffhook()Z

    move-result v0

    return v0
.end method

.method public isRadioOn()Z
    .locals 1

    .prologue
    .line 733
    iget-object v0, p0, Lmiui/telephony/TelephonyManagerImpl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isRadioOn()Z

    move-result v0

    return v0
.end method

.method public isRinging()Z
    .locals 1

    .prologue
    .line 725
    iget-object v0, p0, Lmiui/telephony/TelephonyManagerImpl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isRinging()Z

    move-result v0

    return v0
.end method

.method public isSimPinEnabled()Z
    .locals 1

    .prologue
    .line 737
    iget-object v0, p0, Lmiui/telephony/TelephonyManagerImpl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isSimPinEnabled()Z

    move-result v0

    return v0
.end method

.method public isSmsCapable()Z
    .locals 1

    .prologue
    .line 635
    iget-object v0, p0, Lmiui/telephony/TelephonyManagerImpl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isSmsCapable()Z

    move-result v0

    return v0
.end method

.method public isVoiceCapable()Z
    .locals 1

    .prologue
    .line 620
    iget-object v0, p0, Lmiui/telephony/TelephonyManagerImpl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v0

    return v0
.end method

.method public listen(Landroid/telephony/PhoneStateListener;I)V
    .locals 1
    .param p1, "listener"    # Landroid/telephony/PhoneStateListener;
    .param p2, "events"    # I

    .prologue
    .line 574
    iget-object v0, p0, Lmiui/telephony/TelephonyManagerImpl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, p1, p2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 575
    return-void
.end method

.method public needsOtaServiceProvisioning()Z
    .locals 1

    .prologue
    .line 793
    iget-object v0, p0, Lmiui/telephony/TelephonyManagerImpl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->needsOtaServiceProvisioning()Z

    move-result v0

    return v0
.end method

.method public setCellInfoListRate(I)V
    .locals 1
    .param p1, "rateInMillis"    # I

    .prologue
    .line 675
    iget-object v0, p0, Lmiui/telephony/TelephonyManagerImpl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, p1}, Landroid/telephony/TelephonyManager;->setCellInfoListRate(I)V

    .line 676
    return-void
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 809
    iget-object v0, p0, Lmiui/telephony/TelephonyManagerImpl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, p1}, Landroid/telephony/TelephonyManager;->setContext(Landroid/content/Context;)V

    .line 810
    return-void
.end method

.method public setDefaultDataSlotId()Z
    .locals 1

    .prologue
    .line 801
    iget-object v0, p0, Lmiui/telephony/TelephonyManagerImpl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->setDefaultDataSlotId()Z

    move-result v0

    return v0
.end method

.method public setDefaultVoiceSlotId()V
    .locals 1

    .prologue
    .line 797
    iget-object v0, p0, Lmiui/telephony/TelephonyManagerImpl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->setDefaultVoiceSlotId()V

    .line 798
    return-void
.end method

.method public setRadio(Z)Z
    .locals 1
    .param p1, "turnOn"    # Z

    .prologue
    .line 769
    iget-object v0, p0, Lmiui/telephony/TelephonyManagerImpl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, p1}, Landroid/telephony/TelephonyManager;->setRadio(Z)Z

    move-result v0

    return v0
.end method

.method public setRadioPower(Z)Z
    .locals 1
    .param p1, "turnOn"    # Z

    .prologue
    .line 773
    iget-object v0, p0, Lmiui/telephony/TelephonyManagerImpl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, p1}, Landroid/telephony/TelephonyManager;->setRadioPower(Z)Z

    move-result v0

    return v0
.end method

.method public showCallScreen()Z
    .locals 1

    .prologue
    .line 701
    iget-object v0, p0, Lmiui/telephony/TelephonyManagerImpl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->showCallScreen()Z

    move-result v0

    return v0
.end method

.method public showCallScreenWithDialpad(Z)Z
    .locals 1
    .param p1, "showDialpad"    # Z

    .prologue
    .line 705
    iget-object v0, p0, Lmiui/telephony/TelephonyManagerImpl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, p1}, Landroid/telephony/TelephonyManager;->showCallScreenWithDialpad(Z)Z

    move-result v0

    return v0
.end method

.method public silenceRinger()V
    .locals 1

    .prologue
    .line 717
    iget-object v0, p0, Lmiui/telephony/TelephonyManagerImpl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->silenceRinger()V

    .line 718
    return-void
.end method

.method public supplyPin(Ljava/lang/String;)Z
    .locals 1
    .param p1, "pin"    # Ljava/lang/String;

    .prologue
    .line 745
    iget-object v0, p0, Lmiui/telephony/TelephonyManagerImpl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, p1}, Landroid/telephony/TelephonyManager;->supplyPin(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public supplyPinReportResult(Ljava/lang/String;)[I
    .locals 1
    .param p1, "pin"    # Ljava/lang/String;

    .prologue
    .line 753
    iget-object v0, p0, Lmiui/telephony/TelephonyManagerImpl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, p1}, Landroid/telephony/TelephonyManager;->supplyPinReportResult(Ljava/lang/String;)[I

    move-result-object v0

    return-object v0
.end method

.method public supplyPuk(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "puk"    # Ljava/lang/String;
    .param p2, "pin"    # Ljava/lang/String;

    .prologue
    .line 749
    iget-object v0, p0, Lmiui/telephony/TelephonyManagerImpl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, p1, p2}, Landroid/telephony/TelephonyManager;->supplyPuk(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public supplyPukReportResult(Ljava/lang/String;Ljava/lang/String;)[I
    .locals 1
    .param p1, "puk"    # Ljava/lang/String;
    .param p2, "pin"    # Ljava/lang/String;

    .prologue
    .line 757
    iget-object v0, p0, Lmiui/telephony/TelephonyManagerImpl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, p1, p2}, Landroid/telephony/TelephonyManager;->supplyPukReportResult(Ljava/lang/String;Ljava/lang/String;)[I

    move-result-object v0

    return-object v0
.end method

.method public toggleRadioOnOff()V
    .locals 1

    .prologue
    .line 765
    iget-object v0, p0, Lmiui/telephony/TelephonyManagerImpl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->toggleRadioOnOff()V

    .line 766
    return-void
.end method

.method public updateServiceLocation()V
    .locals 1

    .prologue
    .line 777
    iget-object v0, p0, Lmiui/telephony/TelephonyManagerImpl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->updateServiceLocation()V

    .line 778
    return-void
.end method
