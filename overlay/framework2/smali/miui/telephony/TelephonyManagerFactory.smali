.class public Lmiui/telephony/TelephonyManagerFactory;
.super Ljava/lang/Object;
.source "TelephonyManagerFactory.java"


# static fields
.field private static mInstances:[Lmiui/telephony/TelephonyManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 10
    const/4 v1, 0x4

    new-array v1, v1, [Lmiui/telephony/TelephonyManagerImpl;

    sput-object v1, Lmiui/telephony/TelephonyManagerFactory;->mInstances:[Lmiui/telephony/TelephonyManager;

    .line 12
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lmiui/telephony/TelephonyManagerFactory;->mInstances:[Lmiui/telephony/TelephonyManager;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 13
    sget-object v1, Lmiui/telephony/TelephonyManagerFactory;->mInstances:[Lmiui/telephony/TelephonyManager;

    new-instance v2, Lmiui/telephony/TelephonyManagerImpl;

    invoke-direct {v2, v0}, Lmiui/telephony/TelephonyManagerImpl;-><init>(I)V

    aput-object v2, v1, v0

    .line 12
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 15
    :cond_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkSlotId(I)V
    .locals 3
    .param p0, "slotId"    # I

    .prologue
    .line 52
    if-ltz p0, :cond_0

    sget-object v0, Lmiui/telephony/TelephonyManagerFactory;->mInstances:[Lmiui/telephony/TelephonyManager;

    array-length v0, v0

    if-le p0, v0, :cond_1

    .line 53
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "slot id out of range [0-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lmiui/telephony/TelephonyManagerFactory;->mInstances:[Lmiui/telephony/TelephonyManager;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 56
    :cond_1
    return-void
.end method

.method public static from(Landroid/content/Context;)Lmiui/telephony/TelephonyManager;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x3

    .line 36
    if-eqz p0, :cond_0

    .line 37
    sget-object v0, Lmiui/telephony/TelephonyManagerFactory;->mInstances:[Lmiui/telephony/TelephonyManager;

    aget-object v0, v0, v1

    invoke-interface {v0, p0}, Lmiui/telephony/TelephonyManager;->setContext(Landroid/content/Context;)V

    .line 38
    :cond_0
    sget-object v0, Lmiui/telephony/TelephonyManagerFactory;->mInstances:[Lmiui/telephony/TelephonyManager;

    aget-object v0, v0, v1

    return-object v0
.end method

.method public static from(Landroid/content/Context;I)Lmiui/telephony/TelephonyManager;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "slotId"    # I

    .prologue
    .line 45
    invoke-static {p1}, Lmiui/telephony/TelephonyManagerFactory;->checkSlotId(I)V

    .line 46
    if-eqz p0, :cond_0

    .line 47
    sget-object v0, Lmiui/telephony/TelephonyManagerFactory;->mInstances:[Lmiui/telephony/TelephonyManager;

    aget-object v0, v0, p1

    invoke-interface {v0, p0}, Lmiui/telephony/TelephonyManager;->setContext(Landroid/content/Context;)V

    .line 48
    :cond_0
    sget-object v0, Lmiui/telephony/TelephonyManagerFactory;->mInstances:[Lmiui/telephony/TelephonyManager;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public static getDefault()Lmiui/telephony/TelephonyManager;
    .locals 2

    .prologue
    .line 21
    sget-object v0, Lmiui/telephony/TelephonyManagerFactory;->mInstances:[Lmiui/telephony/TelephonyManager;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    return-object v0
.end method

.method public static getDefault(I)Lmiui/telephony/TelephonyManager;
    .locals 1
    .param p0, "slotId"    # I

    .prologue
    .line 28
    invoke-static {p0}, Lmiui/telephony/TelephonyManagerFactory;->checkSlotId(I)V

    .line 29
    sget-object v0, Lmiui/telephony/TelephonyManagerFactory;->mInstances:[Lmiui/telephony/TelephonyManager;

    aget-object v0, v0, p0

    return-object v0
.end method
