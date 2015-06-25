.class public Lcom/android/internal/telephony/DefaultPhoneSubInfoProxy;
.super Lcom/android/internal/telephony/IPhoneSubInfo$Stub;
.source "DefaultPhoneSubInfoProxy.java"


# static fields
.field private static final INSTANCE:Lcom/android/internal/telephony/DefaultPhoneSubInfoProxy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    new-instance v0, Lcom/android/internal/telephony/DefaultPhoneSubInfoProxy;

    invoke-direct {v0}, Lcom/android/internal/telephony/DefaultPhoneSubInfoProxy;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/DefaultPhoneSubInfoProxy;->INSTANCE:Lcom/android/internal/telephony/DefaultPhoneSubInfoProxy;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;-><init>()V

    .line 19
    const-string v0, "iphonesubinfo"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_0

    .line 20
    const-string v0, "iphonesubinfo"

    invoke-static {v0, p0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 22
    :cond_0
    return-void
.end method

.method public static getInstance()Lcom/android/internal/telephony/DefaultPhoneSubInfoProxy;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/android/internal/telephony/DefaultPhoneSubInfoProxy;->INSTANCE:Lcom/android/internal/telephony/DefaultPhoneSubInfoProxy;

    return-object v0
.end method

.method public static getPhoneSubInfo()Lcom/android/internal/telephony/PhoneSubInfoProxy;
    .locals 2

    .prologue
    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "iphonesubinfo."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lmiui/telephony/MultiSimManager;->getInstance()Lmiui/telephony/MultiSimManager;

    move-result-object v1

    invoke-virtual {v1}, Lmiui/telephony/MultiSimManager;->getDefaultSlotId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/PhoneSubInfoProxy;

    return-object v0
.end method


# virtual methods
.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 144
    invoke-static {}, Lcom/android/internal/telephony/DefaultPhoneSubInfoProxy;->getPhoneSubInfo()Lcom/android/internal/telephony/PhoneSubInfoProxy;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/PhoneSubInfoProxy;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 145
    return-void
.end method

.method public getCompleteVoiceMailNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    invoke-static {}, Lcom/android/internal/telephony/DefaultPhoneSubInfoProxy;->getPhoneSubInfo()Lcom/android/internal/telephony/PhoneSubInfoProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneSubInfoProxy;->getCompleteVoiceMailNumber()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    invoke-static {}, Lcom/android/internal/telephony/DefaultPhoneSubInfoProxy;->getPhoneSubInfo()Lcom/android/internal/telephony/PhoneSubInfoProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneSubInfoProxy;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceSvn()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    invoke-static {}, Lcom/android/internal/telephony/DefaultPhoneSubInfoProxy;->getPhoneSubInfo()Lcom/android/internal/telephony/PhoneSubInfoProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneSubInfoProxy;->getDeviceSvn()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getGroupIdLevel1()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    invoke-static {}, Lcom/android/internal/telephony/DefaultPhoneSubInfoProxy;->getPhoneSubInfo()Lcom/android/internal/telephony/PhoneSubInfoProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneSubInfoProxy;->getGroupIdLevel1()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIccSerialNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    invoke-static {}, Lcom/android/internal/telephony/DefaultPhoneSubInfoProxy;->getPhoneSubInfo()Lcom/android/internal/telephony/PhoneSubInfoProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneSubInfoProxy;->getIccSerialNumber()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIsimDomain()Ljava/lang/String;
    .locals 1

    .prologue
    .line 129
    invoke-static {}, Lcom/android/internal/telephony/DefaultPhoneSubInfoProxy;->getPhoneSubInfo()Lcom/android/internal/telephony/PhoneSubInfoProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneSubInfoProxy;->getIsimDomain()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIsimImpi()Ljava/lang/String;
    .locals 1

    .prologue
    .line 120
    invoke-static {}, Lcom/android/internal/telephony/DefaultPhoneSubInfoProxy;->getPhoneSubInfo()Lcom/android/internal/telephony/PhoneSubInfoProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneSubInfoProxy;->getIsimImpi()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIsimImpu()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 139
    invoke-static {}, Lcom/android/internal/telephony/DefaultPhoneSubInfoProxy;->getPhoneSubInfo()Lcom/android/internal/telephony/PhoneSubInfoProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneSubInfoProxy;->getIsimImpu()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLine1AlphaTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    invoke-static {}, Lcom/android/internal/telephony/DefaultPhoneSubInfoProxy;->getPhoneSubInfo()Lcom/android/internal/telephony/PhoneSubInfoProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneSubInfoProxy;->getLine1AlphaTag()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLine1Number()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    invoke-static {}, Lcom/android/internal/telephony/DefaultPhoneSubInfoProxy;->getPhoneSubInfo()Lcom/android/internal/telephony/PhoneSubInfoProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneSubInfoProxy;->getLine1Number()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMsisdn()Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    invoke-static {}, Lcom/android/internal/telephony/DefaultPhoneSubInfoProxy;->getPhoneSubInfo()Lcom/android/internal/telephony/PhoneSubInfoProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneSubInfoProxy;->getMsisdn()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSubscriberId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    invoke-static {}, Lcom/android/internal/telephony/DefaultPhoneSubInfoProxy;->getPhoneSubInfo()Lcom/android/internal/telephony/PhoneSubInfoProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneSubInfoProxy;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVoiceMailAlphaTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 111
    invoke-static {}, Lcom/android/internal/telephony/DefaultPhoneSubInfoProxy;->getPhoneSubInfo()Lcom/android/internal/telephony/PhoneSubInfoProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneSubInfoProxy;->getVoiceMailAlphaTag()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVoiceMailNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    invoke-static {}, Lcom/android/internal/telephony/DefaultPhoneSubInfoProxy;->getPhoneSubInfo()Lcom/android/internal/telephony/PhoneSubInfoProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneSubInfoProxy;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
