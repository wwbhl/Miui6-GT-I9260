.class public Landroid/telephony/MSimTelephonyManager;
.super Ljava/lang/Object;
.source "MSimTelephonyManager.java"


# static fields
.field private static final INSTANCE:Landroid/telephony/MSimTelephonyManager;

.field private static final mTelephonyManagers:[Landroid/telephony/TelephonyManager;

.field private static sContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    const/4 v0, 0x3

    new-array v0, v0, [Landroid/telephony/TelephonyManager;

    sput-object v0, Landroid/telephony/MSimTelephonyManager;->mTelephonyManagers:[Landroid/telephony/TelephonyManager;

    .line 69
    new-instance v0, Landroid/telephony/MSimTelephonyManager;

    invoke-direct {v0}, Landroid/telephony/MSimTelephonyManager;-><init>()V

    sput-object v0, Landroid/telephony/MSimTelephonyManager;->INSTANCE:Landroid/telephony/MSimTelephonyManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    sget-object v1, Landroid/telephony/MSimTelephonyManager;->sContext:Landroid/content/Context;

    if-nez v1, :cond_0

    .line 56
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 57
    .local v0, "appContext":Landroid/content/Context;
    if-eqz v0, :cond_1

    .line 58
    sput-object v0, Landroid/telephony/MSimTelephonyManager;->sContext:Landroid/content/Context;

    .line 63
    .end local v0    # "appContext":Landroid/content/Context;
    :cond_0
    :goto_0
    return-void

    .line 60
    .restart local v0    # "appContext":Landroid/content/Context;
    :cond_1
    sput-object p1, Landroid/telephony/MSimTelephonyManager;->sContext:Landroid/content/Context;

    goto :goto_0
.end method

.method public static from(Landroid/content/Context;)Landroid/telephony/MSimTelephonyManager;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 79
    new-instance v0, Landroid/telephony/MSimTelephonyManager;

    invoke-direct {v0, p0}, Landroid/telephony/MSimTelephonyManager;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static getDefault()Landroid/telephony/MSimTelephonyManager;
    .locals 1

    .prologue
    .line 74
    sget-object v0, Landroid/telephony/MSimTelephonyManager;->INSTANCE:Landroid/telephony/MSimTelephonyManager;

    return-object v0
.end method

.method private static getTelephonyManager(I)Landroid/telephony/TelephonyManager;
    .locals 3
    .param p0, "slotId"    # I

    .prologue
    .line 96
    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    .line 97
    invoke-static {}, Lmiui/telephony/MultiSimManager;->getInstance()Lmiui/telephony/MultiSimManager;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/telephony/MultiSimManager;->getDefaultSlotId()I

    move-result p0

    .line 100
    :cond_0
    sget-object v0, Landroid/telephony/MSimTelephonyManager;->mTelephonyManagers:[Landroid/telephony/TelephonyManager;

    aget-object v0, v0, p0

    if-nez v0, :cond_2

    .line 101
    sget-object v1, Landroid/telephony/MSimTelephonyManager;->mTelephonyManagers:[Landroid/telephony/TelephonyManager;

    monitor-enter v1

    .line 102
    :try_start_0
    sget-object v0, Landroid/telephony/MSimTelephonyManager;->mTelephonyManagers:[Landroid/telephony/TelephonyManager;

    aget-object v0, v0, p0

    if-nez v0, :cond_1

    .line 103
    sget-object v0, Landroid/telephony/MSimTelephonyManager;->sContext:Landroid/content/Context;

    if-eqz v0, :cond_3

    .line 104
    sget-object v0, Landroid/telephony/MSimTelephonyManager;->mTelephonyManagers:[Landroid/telephony/TelephonyManager;

    sget-object v2, Landroid/telephony/MSimTelephonyManager;->sContext:Landroid/content/Context;

    invoke-static {v2, p0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;I)Landroid/telephony/TelephonyManager;

    move-result-object v2

    aput-object v2, v0, p0

    .line 109
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 111
    :cond_2
    sget-object v0, Landroid/telephony/MSimTelephonyManager;->mTelephonyManagers:[Landroid/telephony/TelephonyManager;

    aget-object v0, v0, p0

    :goto_0
    return-object v0

    .line 106
    :cond_3
    :try_start_1
    invoke-static {p0}, Landroid/telephony/TelephonyManager;->getDefault(I)Landroid/telephony/TelephonyManager;

    move-result-object v0

    monitor-exit v1

    goto :goto_0

    .line 109
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
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
    .line 625
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getAllCellInfo()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getAllCellInfo(I)Ljava/util/List;
    .locals 1
    .param p1, "subscription"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/CellInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 634
    invoke-static {p1}, Landroid/telephony/MSimTelephonyManager;->getTelephonyManager(I)Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getAllCellInfo()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getCallState(I)I
    .locals 1
    .param p1, "subscription"    # I

    .prologue
    .line 521
    invoke-static {p1}, Landroid/telephony/MSimTelephonyManager;->getTelephonyManager(I)Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v0

    return v0
.end method

.method public getCdmaEriIconIndex(I)I
    .locals 1
    .param p1, "subscription"    # I

    .prologue
    .line 590
    invoke-static {p1}, Landroid/telephony/MSimTelephonyManager;->getTelephonyManager(I)Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCdmaEriIconIndex()I

    move-result v0

    return v0
.end method

.method public getCdmaEriIconMode(I)I
    .locals 1
    .param p1, "subscription"    # I

    .prologue
    .line 601
    invoke-static {p1}, Landroid/telephony/MSimTelephonyManager;->getTelephonyManager(I)Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCdmaEriIconMode()I

    move-result v0

    return v0
.end method

.method public getCdmaEriText(I)Ljava/lang/String;
    .locals 1
    .param p1, "subscription"    # I

    .prologue
    .line 610
    invoke-static {p1}, Landroid/telephony/MSimTelephonyManager;->getTelephonyManager(I)Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCdmaEriText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCellLocation(I)Landroid/telephony/CellLocation;
    .locals 4
    .param p1, "subscription"    # I

    .prologue
    const/4 v2, 0x0

    .line 687
    :try_start_0
    invoke-static {p1}, Landroid/telephony/MSimTelephonyManager;->getTelephonyManager(I)Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v0

    .line 688
    .local v0, "cl":Landroid/telephony/CellLocation;
    invoke-virtual {v0}, Landroid/telephony/CellLocation;->isEmpty()Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_0

    move-object v0, v2

    .line 692
    .end local v0    # "cl":Landroid/telephony/CellLocation;
    :cond_0
    :goto_0
    return-object v0

    .line 691
    :catch_0
    move-exception v1

    .local v1, "ex":Ljava/lang/NullPointerException;
    move-object v0, v2

    .line 692
    goto :goto_0
.end method

.method public getCompleteVoiceMailNumber(I)Ljava/lang/String;
    .locals 1
    .param p1, "subscription"    # I

    .prologue
    .line 485
    invoke-static {p1}, Landroid/telephony/MSimTelephonyManager;->getTelephonyManager(I)Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCompleteVoiceMailNumber()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentPhoneType(I)I
    .locals 1
    .param p1, "subscription"    # I

    .prologue
    .line 150
    invoke-static {p1}, Landroid/telephony/MSimTelephonyManager;->getTelephonyManager(I)Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType()I

    move-result v0

    return v0
.end method

.method public getDataActivity()I
    .locals 1

    .prologue
    .line 535
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDataActivity()I

    move-result v0

    return v0
.end method

.method public getDataNetworkType(I)I
    .locals 1
    .param p1, "subscription"    # I

    .prologue
    .line 283
    invoke-static {p1}, Landroid/telephony/MSimTelephonyManager;->getTelephonyManager(I)Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDataNetworkType()I

    move-result v0

    return v0
.end method

.method public getDataState()I
    .locals 1

    .prologue
    .line 548
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDataState()I

    move-result v0

    return v0
.end method

.method public getDefaultDataSubscription()I
    .locals 1

    .prologue
    .line 667
    invoke-virtual {p0}, Landroid/telephony/MSimTelephonyManager;->getPreferredDataSubscription()I

    move-result v0

    return v0
.end method

.method public getDefaultSubscription()I
    .locals 1

    .prologue
    .line 642
    invoke-static {}, Lmiui/telephony/MultiSimManager;->getInstance()Lmiui/telephony/MultiSimManager;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/telephony/MultiSimManager;->getDefaultSlotId()I

    move-result v0

    return v0
.end method

.method public getDeviceId(I)Ljava/lang/String;
    .locals 1
    .param p1, "subscription"    # I

    .prologue
    .line 136
    invoke-static {p1}, Landroid/telephony/MSimTelephonyManager;->getTelephonyManager(I)Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceSoftwareVersion(I)Ljava/lang/String;
    .locals 1
    .param p1, "subscription"    # I

    .prologue
    .line 123
    invoke-static {p1}, Landroid/telephony/MSimTelephonyManager;->getTelephonyManager(I)Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceSoftwareVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLine1AlphaTag(I)Ljava/lang/String;
    .locals 1
    .param p1, "subscription"    # I

    .prologue
    .line 446
    invoke-static {p1}, Landroid/telephony/MSimTelephonyManager;->getTelephonyManager(I)Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getLine1AlphaTag()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLine1Number(I)Ljava/lang/String;
    .locals 1
    .param p1, "subscription"    # I

    .prologue
    .line 431
    invoke-static {p1}, Landroid/telephony/MSimTelephonyManager;->getTelephonyManager(I)Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLteOnCdmaMode(I)I
    .locals 1
    .param p1, "subscription"    # I

    .prologue
    .line 398
    invoke-static {p1}, Landroid/telephony/MSimTelephonyManager;->getTelephonyManager(I)Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getLteOnCdmaMode()I

    move-result v0

    return v0
.end method

.method public getMsisdn(I)Ljava/lang/String;
    .locals 1
    .param p1, "subscription"    # I

    .prologue
    .line 460
    invoke-static {p1}, Landroid/telephony/MSimTelephonyManager;->getTelephonyManager(I)Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getMsisdn()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkCountryIso(I)Ljava/lang/String;
    .locals 1
    .param p1, "subscription"    # I

    .prologue
    .line 226
    invoke-static {p1}, Landroid/telephony/MSimTelephonyManager;->getTelephonyManager(I)Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkOperator(I)Ljava/lang/String;
    .locals 1
    .param p1, "subscription"    # I

    .prologue
    .line 199
    invoke-static {p1}, Landroid/telephony/MSimTelephonyManager;->getTelephonyManager(I)Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkOperatorName(I)Ljava/lang/String;
    .locals 1
    .param p1, "subscription"    # I

    .prologue
    .line 185
    invoke-static {p1}, Landroid/telephony/MSimTelephonyManager;->getTelephonyManager(I)Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkType(I)I
    .locals 1
    .param p1, "subscription"    # I

    .prologue
    .line 254
    invoke-static {p1}, Landroid/telephony/MSimTelephonyManager;->getTelephonyManager(I)Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v0

    return v0
.end method

.method public getNetworkTypeName(I)Ljava/lang/String;
    .locals 1
    .param p1, "subscription"    # I

    .prologue
    .line 304
    invoke-virtual {p0, p1}, Landroid/telephony/MSimTelephonyManager;->getNetworkType(I)I

    move-result v0

    invoke-static {v0}, Landroid/telephony/TelephonyManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPhoneCount()I
    .locals 1

    .prologue
    .line 92
    invoke-static {}, Lmiui/telephony/MultiSimManager;->getInstance()Lmiui/telephony/MultiSimManager;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/telephony/MultiSimManager;->getMultiSimCount()I

    move-result v0

    return v0
.end method

.method public getPhoneType(I)I
    .locals 1
    .param p1, "subscription"    # I

    .prologue
    .line 166
    invoke-static {p1}, Landroid/telephony/MSimTelephonyManager;->getTelephonyManager(I)Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v0

    return v0
.end method

.method public getPreferredDataSubscription()I
    .locals 1

    .prologue
    .line 649
    invoke-static {}, Lmiui/telephony/MultiSimManager;->getInstance()Lmiui/telephony/MultiSimManager;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/telephony/MultiSimManager;->getPreferredDataSlotId()I

    move-result v0

    return v0
.end method

.method public getPreferredVoiceSubscription()I
    .locals 1

    .prologue
    .line 662
    invoke-static {}, Lmiui/telephony/MultiSimManager;->getInstance()Lmiui/telephony/MultiSimManager;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/telephony/MultiSimManager;->getPreferredVoiceSlotId()I

    move-result v0

    return v0
.end method

.method public getSimCountryIso(I)Ljava/lang/String;
    .locals 1
    .param p1, "subscription"    # I

    .prologue
    .line 373
    invoke-static {p1}, Landroid/telephony/MSimTelephonyManager;->getTelephonyManager(I)Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSimOperator(I)Ljava/lang/String;
    .locals 1
    .param p1, "subscription"    # I

    .prologue
    .line 349
    invoke-static {p1}, Landroid/telephony/MSimTelephonyManager;->getTelephonyManager(I)Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSimOperatorName(I)Ljava/lang/String;
    .locals 1
    .param p1, "subscription"    # I

    .prologue
    .line 363
    invoke-static {p1}, Landroid/telephony/MSimTelephonyManager;->getTelephonyManager(I)Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimOperatorName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSimSerialNumber(I)Ljava/lang/String;
    .locals 1
    .param p1, "subscription"    # I

    .prologue
    .line 384
    invoke-static {p1}, Landroid/telephony/MSimTelephonyManager;->getTelephonyManager(I)Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimSerialNumber()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSimState(I)I
    .locals 1
    .param p1, "slotId"    # I

    .prologue
    .line 336
    invoke-static {p1}, Landroid/telephony/MSimTelephonyManager;->getTelephonyManager(I)Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v0

    return v0
.end method

.method public getSubscriberId(I)Ljava/lang/String;
    .locals 1
    .param p1, "subscription"    # I

    .prologue
    .line 418
    invoke-static {p1}, Landroid/telephony/MSimTelephonyManager;->getTelephonyManager(I)Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVoiceMailAlphaTag(I)Ljava/lang/String;
    .locals 1
    .param p1, "subscription"    # I

    .prologue
    .line 511
    invoke-static {p1}, Landroid/telephony/MSimTelephonyManager;->getTelephonyManager(I)Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getVoiceMailAlphaTag()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVoiceMailNumber(I)Ljava/lang/String;
    .locals 1
    .param p1, "subscription"    # I

    .prologue
    .line 472
    invoke-static {p1}, Landroid/telephony/MSimTelephonyManager;->getTelephonyManager(I)Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVoiceMessageCount(I)I
    .locals 1
    .param p1, "subscription"    # I

    .prologue
    .line 498
    invoke-static {p1}, Landroid/telephony/MSimTelephonyManager;->getTelephonyManager(I)Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getVoiceMessageCount()I

    move-result v0

    return v0
.end method

.method public getVoiceNetworkType(I)I
    .locals 1
    .param p1, "subscription"    # I

    .prologue
    .line 292
    invoke-static {p1}, Landroid/telephony/MSimTelephonyManager;->getTelephonyManager(I)Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getVoiceNetworkType()I

    move-result v0

    return v0
.end method

.method public hasIccCard(I)Z
    .locals 1
    .param p1, "subscription"    # I

    .prologue
    .line 319
    invoke-static {p1}, Landroid/telephony/MSimTelephonyManager;->getTelephonyManager(I)Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->hasIccCard()Z

    move-result v0

    return v0
.end method

.method public isMultiSimEnabled()Z
    .locals 1

    .prologue
    .line 83
    invoke-static {}, Lmiui/telephony/MultiSimManager;->getInstance()Lmiui/telephony/MultiSimManager;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/telephony/MultiSimManager;->isMultiSimSupported()Z

    move-result v0

    return v0
.end method

.method public isNetworkRoaming(I)Z
    .locals 1
    .param p1, "subscription"    # I

    .prologue
    .line 211
    invoke-static {p1}, Landroid/telephony/MSimTelephonyManager;->getTelephonyManager(I)Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v0

    return v0
.end method

.method public listen(Landroid/telephony/PhoneStateListener;I)V
    .locals 1
    .param p1, "listener"    # Landroid/telephony/PhoneStateListener;
    .param p2, "events"    # I

    .prologue
    .line 581
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 582
    return-void
.end method

.method public setPreferredDataSubscription(I)Z
    .locals 1
    .param p1, "sub"    # I

    .prologue
    .line 655
    const/4 v0, 0x0

    return v0
.end method
