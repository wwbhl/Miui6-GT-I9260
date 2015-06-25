.class public Lmiui/telephony/MultiSimManager;
.super Ljava/lang/Object;
.source "MultiSimManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/telephony/MultiSimManager$1;,
        Lmiui/telephony/MultiSimManager$MultiSimVariants;,
        Lmiui/telephony/MultiSimManager$Holder;
    }
.end annotation


# static fields
.field public static final DEFAULT_DATA_SLOT_PROPERTY:Ljava/lang/String; = "persist.radio.default.data"

.field public static final DEFAULT_SLOT_ID:I = 0x3

.field public static final DEFAULT_SLOT_PROPERTY:Ljava/lang/String; = "persist.radio.default.sim"

.field public static final DEFAULT_SMS_SLOT_PROPERTY:Ljava/lang/String; = "persist.radio.default.sms"

.field public static final DEFAULT_VOICE_SLOT_PROPERTY:Ljava/lang/String; = "persist.radio.default.voice"

.field public static final MAX_SLOT_COUNT:I = 0x3

.field private static final MULTI_SIM_VARIANTS:Lmiui/telephony/MultiSimManager$MultiSimVariants;

.field public static final PROPERTY_MULTI_SIM_CONFIG:Ljava/lang/String; = "persist.radio.multisim.config"

.field public static final SLOT_ID:Ljava/lang/String; = "slot_id"

.field public static final SLOT_ID_1:I = 0x0

.field public static final SLOT_ID_2:I = 0x1

.field public static final SLOT_ID_3:I = 0x2

.field public static final SLOT_ID_INVALID:I = -0x1

.field public static final SLOT_STATUS_NORMAL:I = 0x2

.field public static final SLOT_STATUS_RADIO_OFF:I = 0x0

.field public static final SLOT_STATUS_SIM_ABSENT:I = 0x1


# instance fields
.field private final mProperties:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mSlotStatus:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    invoke-static {}, Lmiui/telephony/MultiSimManager;->getMultiSimConfiguration()Lmiui/telephony/MultiSimManager$MultiSimVariants;

    move-result-object v0

    sput-object v0, Lmiui/telephony/MultiSimManager;->MULTI_SIM_VARIANTS:Lmiui/telephony/MultiSimManager$MultiSimVariants;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    invoke-virtual {p0}, Lmiui/telephony/MultiSimManager;->getMultiSimCount()I

    move-result v0

    .line 63
    .local v0, "count":I
    new-array v1, v0, [I

    iput-object v1, p0, Lmiui/telephony/MultiSimManager;->mSlotStatus:[I

    .line 64
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lmiui/telephony/MultiSimManager;->mProperties:Ljava/util/HashSet;

    .line 65
    return-void
.end method

.method synthetic constructor <init>(Lmiui/telephony/MultiSimManager$1;)V
    .locals 0
    .param p1, "x0"    # Lmiui/telephony/MultiSimManager$1;

    .prologue
    .line 14
    invoke-direct {p0}, Lmiui/telephony/MultiSimManager;-><init>()V

    return-void
.end method

.method private copyTelephonyProperties(I)V
    .locals 4
    .param p1, "slotId"    # I

    .prologue
    .line 184
    iget-object v2, p0, Lmiui/telephony/MultiSimManager;->mProperties:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 185
    .local v1, "key":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 187
    .end local v1    # "key":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public static getInstance()Lmiui/telephony/MultiSimManager;
    .locals 1

    .prologue
    .line 68
    sget-object v0, Lmiui/telephony/MultiSimManager$Holder;->INSTANCE:Lmiui/telephony/MultiSimManager;

    return-object v0
.end method

.method private static getMultiSimConfiguration()Lmiui/telephony/MultiSimManager$MultiSimVariants;
    .locals 2

    .prologue
    .line 72
    sget-boolean v1, Lmiui/os/Build;->IS_HONGMI_THREE:Z

    if-nez v1, :cond_0

    sget-boolean v1, Lmiui/os/Build;->IS_HONGMI_TWO:Z

    if-eqz v1, :cond_1

    .line 73
    :cond_0
    sget-object v1, Lmiui/telephony/MultiSimManager$MultiSimVariants;->DSDA:Lmiui/telephony/MultiSimManager$MultiSimVariants;

    .line 83
    .local v0, "config":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 75
    .end local v0    # "config":Ljava/lang/String;
    :cond_1
    const-string v1, "persist.radio.multisim.config"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 76
    .restart local v0    # "config":Ljava/lang/String;
    const-string v1, "dsds"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 77
    sget-object v1, Lmiui/telephony/MultiSimManager$MultiSimVariants;->DSDS:Lmiui/telephony/MultiSimManager$MultiSimVariants;

    goto :goto_0

    .line 78
    :cond_2
    const-string v1, "dsda"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 79
    sget-object v1, Lmiui/telephony/MultiSimManager$MultiSimVariants;->DSDA:Lmiui/telephony/MultiSimManager$MultiSimVariants;

    goto :goto_0

    .line 80
    :cond_3
    const-string v1, "tsts"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 81
    sget-object v1, Lmiui/telephony/MultiSimManager$MultiSimVariants;->TSTS:Lmiui/telephony/MultiSimManager$MultiSimVariants;

    goto :goto_0

    .line 83
    :cond_4
    sget-object v1, Lmiui/telephony/MultiSimManager$MultiSimVariants;->UNKNOWN:Lmiui/telephony/MultiSimManager$MultiSimVariants;

    goto :goto_0
.end method

.method private setDefaultSlotId(I)V
    .locals 2
    .param p1, "slotId"    # I

    .prologue
    .line 117
    const-string v0, "persist.radio.default.sim"

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    return-void
.end method


# virtual methods
.method public getAvailableSimCount()I
    .locals 3

    .prologue
    .line 103
    const/4 v0, 0x0

    .line 104
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Lmiui/telephony/MultiSimManager;->getMultiSimCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 105
    invoke-static {v1}, Lmiui/telephony/TelephonyManagerFactory;->getDefault(I)Lmiui/telephony/TelephonyManager;

    move-result-object v2

    invoke-interface {v2}, Lmiui/telephony/TelephonyManager;->hasIccCard()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 106
    add-int/lit8 v0, v0, 0x1

    .line 104
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 109
    :cond_1
    return v0
.end method

.method public getDefaultSlotId()I
    .locals 2

    .prologue
    .line 113
    const-string v0, "persist.radio.default.sim"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getMultiSimCount()I
    .locals 2

    .prologue
    .line 92
    sget-object v0, Lmiui/telephony/MultiSimManager$1;->$SwitchMap$miui$telephony$MultiSimManager$MultiSimVariants:[I

    sget-object v1, Lmiui/telephony/MultiSimManager;->MULTI_SIM_VARIANTS:Lmiui/telephony/MultiSimManager$MultiSimVariants;

    invoke-virtual {v1}, Lmiui/telephony/MultiSimManager$MultiSimVariants;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 99
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 95
    :pswitch_0
    const/4 v0, 0x2

    goto :goto_0

    .line 97
    :pswitch_1
    const/4 v0, 0x3

    goto :goto_0

    .line 92
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getPreferredDataSlotId()I
    .locals 2

    .prologue
    .line 121
    const-string v0, "persist.radio.default.data"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getPreferredSmsSlotId()I
    .locals 1

    .prologue
    .line 137
    invoke-virtual {p0}, Lmiui/telephony/MultiSimManager;->getDefaultSlotId()I

    move-result v0

    return v0
.end method

.method public getPreferredVoiceSlotId()I
    .locals 2

    .prologue
    .line 129
    const-string v0, "persist.radio.default.voice"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getTelephonyManager(Landroid/content/Context;)Lmiui/telephony/TelephonyManager;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 145
    invoke-static {p1}, Lmiui/telephony/TelephonyManagerFactory;->from(Landroid/content/Context;)Lmiui/telephony/TelephonyManager;

    move-result-object v0

    return-object v0
.end method

.method public getTelephonyManager(Landroid/content/Context;I)Lmiui/telephony/TelephonyManager;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "slotId"    # I

    .prologue
    .line 149
    invoke-static {p1, p2}, Lmiui/telephony/TelephonyManagerFactory;->from(Landroid/content/Context;I)Lmiui/telephony/TelephonyManager;

    move-result-object v0

    return-object v0
.end method

.method public getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "slot"    # I
    .param p3, "defaultValue"    # Ljava/lang/String;

    .prologue
    .line 153
    iget-object v0, p0, Lmiui/telephony/MultiSimManager;->mProperties:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 154
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isMultiSimSupported()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 88
    iget-object v1, p0, Lmiui/telephony/MultiSimManager;->mSlotStatus:[I

    array-length v1, v1

    if-le v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onIccStatusChanged(II)V
    .locals 4
    .param p1, "slotId"    # I
    .param p2, "status"    # I

    .prologue
    const/4 v3, 0x2

    .line 167
    if-ltz p1, :cond_2

    iget-object v2, p0, Lmiui/telephony/MultiSimManager;->mSlotStatus:[I

    array-length v2, v2

    if-ge p1, v2, :cond_2

    .line 168
    iget-object v2, p0, Lmiui/telephony/MultiSimManager;->mSlotStatus:[I

    aput p2, v2, p1

    .line 169
    const/4 v1, 0x0

    .line 170
    .local v1, "newDefaultSlotId":I
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lmiui/telephony/MultiSimManager;->mSlotStatus:[I

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 171
    iget-object v2, p0, Lmiui/telephony/MultiSimManager;->mSlotStatus:[I

    aget v2, v2, v0

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lmiui/telephony/MultiSimManager;->mSlotStatus:[I

    aget v2, v2, v1

    if-eq v2, v3, :cond_0

    .line 172
    move v1, v0

    .line 170
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 176
    :cond_1
    invoke-virtual {p0}, Lmiui/telephony/MultiSimManager;->getDefaultSlotId()I

    move-result v2

    if-eq v1, v2, :cond_2

    .line 177
    invoke-direct {p0, v1}, Lmiui/telephony/MultiSimManager;->setDefaultSlotId(I)V

    .line 178
    invoke-direct {p0, v1}, Lmiui/telephony/MultiSimManager;->copyTelephonyProperties(I)V

    .line 181
    .end local v0    # "i":I
    .end local v1    # "newDefaultSlotId":I
    :cond_2
    return-void
.end method

.method public setDefaultDataSlotId(I)V
    .locals 1
    .param p1, "slotId"    # I

    .prologue
    .line 125
    invoke-static {p1}, Lmiui/telephony/TelephonyManagerFactory;->getDefault(I)Lmiui/telephony/TelephonyManager;

    move-result-object v0

    invoke-interface {v0}, Lmiui/telephony/TelephonyManager;->setDefaultDataSlotId()Z

    .line 126
    return-void
.end method

.method public setDefaultSmsSlotId(I)V
    .locals 2
    .param p1, "slotId"    # I

    .prologue
    .line 141
    const-string v0, "persist.radio.default.sms"

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    return-void
.end method

.method public setDefaultVoiceSlotId(I)V
    .locals 1
    .param p1, "slotId"    # I

    .prologue
    .line 133
    invoke-static {p1}, Lmiui/telephony/TelephonyManagerFactory;->getDefault(I)Lmiui/telephony/TelephonyManager;

    move-result-object v0

    invoke-interface {v0}, Lmiui/telephony/TelephonyManager;->setDefaultVoiceSlotId()V

    .line 134
    return-void
.end method

.method public setTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)V
    .locals 2
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "slot"    # I
    .param p3, "val"    # Ljava/lang/String;

    .prologue
    .line 158
    iget-object v0, p0, Lmiui/telephony/MultiSimManager;->mProperties:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 159
    invoke-virtual {p0}, Lmiui/telephony/MultiSimManager;->getDefaultSlotId()I

    move-result v0

    if-ne p2, v0, :cond_0

    .line 160
    invoke-static {p1, p3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    return-void
.end method
