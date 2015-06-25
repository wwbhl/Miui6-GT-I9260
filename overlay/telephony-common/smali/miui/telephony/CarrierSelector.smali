.class public final Lmiui/telephony/CarrierSelector;
.super Ljava/lang/Object;
.source "CarrierSelector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/telephony/CarrierSelector$STATE;,
        Lmiui/telephony/CarrierSelector$CARRIER;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final mCarrier2MccMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lmiui/telephony/CarrierSelector$CARRIER;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final mMccHandled:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final mState2MccMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lmiui/telephony/CarrierSelector$STATE;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mCarrierMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lmiui/telephony/CarrierSelector$CARRIER;",
            "TT;>;"
        }
    .end annotation
.end field

.field private mDefaultCarrier:Lmiui/telephony/CarrierSelector$CARRIER;

.field private final mStateMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lmiui/telephony/CarrierSelector$STATE;",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 19
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    sput-object v0, Lmiui/telephony/CarrierSelector;->mCarrier2MccMap:Ljava/util/Map;

    .line 22
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    sput-object v0, Lmiui/telephony/CarrierSelector;->mState2MccMap:Ljava/util/Map;

    .line 24
    invoke-static {}, Lcom/google/android/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v0

    sput-object v0, Lmiui/telephony/CarrierSelector;->mMccHandled:Ljava/util/Set;

    .line 27
    sget-object v0, Lmiui/telephony/CarrierSelector;->mCarrier2MccMap:Ljava/util/Map;

    sget-object v1, Lmiui/telephony/CarrierSelector$CARRIER;->DEFAULT:Lmiui/telephony/CarrierSelector$CARRIER;

    const-string v2, "000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    sget-object v0, Lmiui/telephony/CarrierSelector;->mCarrier2MccMap:Ljava/util/Map;

    sget-object v1, Lmiui/telephony/CarrierSelector$CARRIER;->CHINA_MOBILE:Lmiui/telephony/CarrierSelector$CARRIER;

    const-string v2, "460"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    sget-object v0, Lmiui/telephony/CarrierSelector;->mCarrier2MccMap:Ljava/util/Map;

    sget-object v1, Lmiui/telephony/CarrierSelector$CARRIER;->CHINA_UNICOM:Lmiui/telephony/CarrierSelector$CARRIER;

    const-string v2, "460"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    sget-object v0, Lmiui/telephony/CarrierSelector;->mCarrier2MccMap:Ljava/util/Map;

    sget-object v1, Lmiui/telephony/CarrierSelector$CARRIER;->CHINA_TELECOM:Lmiui/telephony/CarrierSelector$CARRIER;

    const-string v2, "460"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    sget-object v0, Lmiui/telephony/CarrierSelector;->mState2MccMap:Ljava/util/Map;

    sget-object v1, Lmiui/telephony/CarrierSelector$STATE;->TAIWAN:Lmiui/telephony/CarrierSelector$STATE;

    const-string v2, "466"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 46
    .local p0, "this":Lmiui/telephony/CarrierSelector;, "Lmiui/telephony/CarrierSelector<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    sget-object v0, Lmiui/telephony/CarrierSelector$CARRIER;->DEFAULT:Lmiui/telephony/CarrierSelector$CARRIER;

    iput-object v0, p0, Lmiui/telephony/CarrierSelector;->mDefaultCarrier:Lmiui/telephony/CarrierSelector$CARRIER;

    .line 15
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lmiui/telephony/CarrierSelector;->mCarrierMap:Ljava/util/Map;

    .line 17
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lmiui/telephony/CarrierSelector;->mStateMap:Ljava/util/Map;

    .line 47
    return-void
.end method

.method public constructor <init>(Lmiui/telephony/CarrierSelector$CARRIER;)V
    .locals 1
    .param p1, "defaultCarrier"    # Lmiui/telephony/CarrierSelector$CARRIER;

    .prologue
    .line 49
    .local p0, "this":Lmiui/telephony/CarrierSelector;, "Lmiui/telephony/CarrierSelector<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    sget-object v0, Lmiui/telephony/CarrierSelector$CARRIER;->DEFAULT:Lmiui/telephony/CarrierSelector$CARRIER;

    iput-object v0, p0, Lmiui/telephony/CarrierSelector;->mDefaultCarrier:Lmiui/telephony/CarrierSelector$CARRIER;

    .line 15
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lmiui/telephony/CarrierSelector;->mCarrierMap:Ljava/util/Map;

    .line 17
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lmiui/telephony/CarrierSelector;->mStateMap:Ljava/util/Map;

    .line 50
    iput-object p1, p0, Lmiui/telephony/CarrierSelector;->mDefaultCarrier:Lmiui/telephony/CarrierSelector$CARRIER;

    .line 51
    return-void
.end method

.method private internalSelectCarrier(Ljava/lang/String;Lmiui/telephony/CarrierSelector$CARRIER;)Lmiui/telephony/CarrierSelector$CARRIER;
    .locals 4
    .param p1, "mccMnc"    # Ljava/lang/String;
    .param p2, "defaultCarrier"    # Lmiui/telephony/CarrierSelector$CARRIER;

    .prologue
    .line 182
    .local p0, "this":Lmiui/telephony/CarrierSelector;, "Lmiui/telephony/CarrierSelector<TT;>;"
    move-object v0, p2

    .line 183
    .local v0, "carrier":Lmiui/telephony/CarrierSelector$CARRIER;
    invoke-static {}, Lcom/android/internal/telephony/uicc/SpnOverride;->getInstance()Lcom/android/internal/telephony/uicc/SpnOverride;

    move-result-object v2

    .line 184
    .local v2, "spn":Lcom/android/internal/telephony/uicc/SpnOverride;
    invoke-virtual {v2, p1}, Lcom/android/internal/telephony/uicc/SpnOverride;->getEquivalentOperatorNumeric(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 185
    .local v1, "eqOperator":Ljava/lang/String;
    const-string v3, "46000"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 186
    sget-object v0, Lmiui/telephony/CarrierSelector$CARRIER;->CHINA_MOBILE:Lmiui/telephony/CarrierSelector$CARRIER;

    .line 192
    :cond_0
    :goto_0
    return-object v0

    .line 187
    :cond_1
    const-string v3, "46001"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 188
    sget-object v0, Lmiui/telephony/CarrierSelector$CARRIER;->CHINA_UNICOM:Lmiui/telephony/CarrierSelector$CARRIER;

    goto :goto_0

    .line 189
    :cond_2
    const-string v3, "46003"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 190
    sget-object v0, Lmiui/telephony/CarrierSelector$CARRIER;->CHINA_TELECOM:Lmiui/telephony/CarrierSelector$CARRIER;

    goto :goto_0
.end method

.method private internalSelectState(Ljava/lang/String;)Lmiui/telephony/CarrierSelector$STATE;
    .locals 1
    .param p1, "mcc"    # Ljava/lang/String;

    .prologue
    .line 174
    .local p0, "this":Lmiui/telephony/CarrierSelector;, "Lmiui/telephony/CarrierSelector<TT;>;"
    const-string v0, "466"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 175
    sget-object v0, Lmiui/telephony/CarrierSelector$STATE;->TAIWAN:Lmiui/telephony/CarrierSelector$STATE;

    .line 177
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public register(Lmiui/telephony/CarrierSelector$CARRIER;Ljava/lang/Object;)V
    .locals 4
    .param p1, "carrier"    # Lmiui/telephony/CarrierSelector$CARRIER;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmiui/telephony/CarrierSelector$CARRIER;",
            "TT;)V"
        }
    .end annotation

    .prologue
    .line 54
    .local p0, "this":Lmiui/telephony/CarrierSelector;, "Lmiui/telephony/CarrierSelector<TT;>;"
    .local p2, "value":Ljava/lang/Object;, "TT;"
    if-nez p1, :cond_0

    .line 55
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "carrier not nullable"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 57
    :cond_0
    sget-object v1, Lmiui/telephony/CarrierSelector;->mCarrier2MccMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 58
    .local v0, "mcc":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 59
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mcc for the carrier is unknown, carrier: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 62
    :cond_1
    sget-object v1, Lmiui/telephony/CarrierSelector;->mMccHandled:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 63
    iget-object v1, p0, Lmiui/telephony/CarrierSelector;->mCarrierMap:Ljava/util/Map;

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    return-void
.end method

.method public register(Lmiui/telephony/CarrierSelector$STATE;Ljava/lang/Object;)V
    .locals 4
    .param p1, "state"    # Lmiui/telephony/CarrierSelector$STATE;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmiui/telephony/CarrierSelector$STATE;",
            "TT;)V"
        }
    .end annotation

    .prologue
    .line 67
    .local p0, "this":Lmiui/telephony/CarrierSelector;, "Lmiui/telephony/CarrierSelector<TT;>;"
    .local p2, "value":Ljava/lang/Object;, "TT;"
    if-nez p1, :cond_0

    .line 68
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "state not nullable"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 70
    :cond_0
    sget-object v1, Lmiui/telephony/CarrierSelector;->mState2MccMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 71
    .local v0, "mcc":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 72
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mcc for the state is unknown, state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 75
    :cond_1
    sget-object v1, Lmiui/telephony/CarrierSelector;->mMccHandled:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 76
    iget-object v1, p0, Lmiui/telephony/CarrierSelector;->mStateMap:Ljava/util/Map;

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    return-void
.end method

.method public selectCarrier(Ljava/lang/String;)Lmiui/telephony/CarrierSelector$CARRIER;
    .locals 1
    .param p1, "mccMnc"    # Ljava/lang/String;

    .prologue
    .line 87
    .local p0, "this":Lmiui/telephony/CarrierSelector;, "Lmiui/telephony/CarrierSelector<TT;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmiui/telephony/CarrierSelector;->internalSelectCarrier(Ljava/lang/String;Lmiui/telephony/CarrierSelector$CARRIER;)Lmiui/telephony/CarrierSelector$CARRIER;

    move-result-object v0

    return-object v0
.end method

.method public selectValue(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .param p1, "mccMnc"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 101
    .local p0, "this":Lmiui/telephony/CarrierSelector;, "Lmiui/telephony/CarrierSelector<TT;>;"
    iget-object v1, p0, Lmiui/telephony/CarrierSelector;->mDefaultCarrier:Lmiui/telephony/CarrierSelector$CARRIER;

    invoke-direct {p0, p1, v1}, Lmiui/telephony/CarrierSelector;->internalSelectCarrier(Ljava/lang/String;Lmiui/telephony/CarrierSelector$CARRIER;)Lmiui/telephony/CarrierSelector$CARRIER;

    move-result-object v0

    .line 102
    .local v0, "carrier":Lmiui/telephony/CarrierSelector$CARRIER;
    iget-object v1, p0, Lmiui/telephony/CarrierSelector;->mCarrierMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public selectValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "mcc"    # Ljava/lang/String;
    .param p2, "mnc"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 133
    .local p0, "this":Lmiui/telephony/CarrierSelector;, "Lmiui/telephony/CarrierSelector<TT;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lmiui/telephony/CarrierSelector;->selectValue(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public selectValue(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/Object;
    .locals 5
    .param p1, "mcc"    # Ljava/lang/String;
    .param p2, "mnc"    # Ljava/lang/String;
    .param p3, "useDefault"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)TT;"
        }
    .end annotation

    .prologue
    .line 150
    .local p0, "this":Lmiui/telephony/CarrierSelector;, "Lmiui/telephony/CarrierSelector<TT;>;"
    if-nez p1, :cond_0

    .line 151
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "mcc not nullable"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 153
    :cond_0
    const/4 v0, 0x0

    .line 154
    .local v0, "carrier":Lmiui/telephony/CarrierSelector$CARRIER;
    if-eqz p2, :cond_1

    .line 155
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {p0, v3, v4}, Lmiui/telephony/CarrierSelector;->internalSelectCarrier(Ljava/lang/String;Lmiui/telephony/CarrierSelector$CARRIER;)Lmiui/telephony/CarrierSelector$CARRIER;

    move-result-object v0

    .line 158
    :cond_1
    if-nez v0, :cond_3

    .line 159
    invoke-direct {p0, p1}, Lmiui/telephony/CarrierSelector;->internalSelectState(Ljava/lang/String;)Lmiui/telephony/CarrierSelector$STATE;

    move-result-object v1

    .line 160
    .local v1, "state":Lmiui/telephony/CarrierSelector$STATE;
    iget-object v3, p0, Lmiui/telephony/CarrierSelector;->mStateMap:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 164
    .end local v1    # "state":Lmiui/telephony/CarrierSelector$STATE;
    .local v2, "value":Ljava/lang/Object;, "TT;"
    :goto_0
    if-nez v2, :cond_2

    if-eqz p3, :cond_2

    .line 166
    sget-object v3, Lmiui/telephony/CarrierSelector;->mMccHandled:Ljava/util/Set;

    invoke-interface {v3, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 167
    iget-object v3, p0, Lmiui/telephony/CarrierSelector;->mCarrierMap:Ljava/util/Map;

    iget-object v4, p0, Lmiui/telephony/CarrierSelector;->mDefaultCarrier:Lmiui/telephony/CarrierSelector$CARRIER;

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 170
    :cond_2
    return-object v2

    .line 162
    .end local v2    # "value":Ljava/lang/Object;, "TT;"
    :cond_3
    iget-object v3, p0, Lmiui/telephony/CarrierSelector;->mCarrierMap:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .restart local v2    # "value":Ljava/lang/Object;, "TT;"
    goto :goto_0
.end method

.method public selectValue(Ljava/lang/String;Z)Ljava/lang/Object;
    .locals 2
    .param p1, "mccMnc"    # Ljava/lang/String;
    .param p2, "useDefault"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)TT;"
        }
    .end annotation

    .prologue
    .line 118
    .local p0, "this":Lmiui/telephony/CarrierSelector;, "Lmiui/telephony/CarrierSelector<TT;>;"
    if-eqz p2, :cond_0

    iget-object v1, p0, Lmiui/telephony/CarrierSelector;->mDefaultCarrier:Lmiui/telephony/CarrierSelector$CARRIER;

    :goto_0
    invoke-direct {p0, p1, v1}, Lmiui/telephony/CarrierSelector;->internalSelectCarrier(Ljava/lang/String;Lmiui/telephony/CarrierSelector$CARRIER;)Lmiui/telephony/CarrierSelector$CARRIER;

    move-result-object v0

    .line 120
    .local v0, "carrier":Lmiui/telephony/CarrierSelector$CARRIER;
    iget-object v1, p0, Lmiui/telephony/CarrierSelector;->mCarrierMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 118
    .end local v0    # "carrier":Lmiui/telephony/CarrierSelector$CARRIER;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
