.class public Lcom/android/internal/telephony/lc/LCSimActivator;
.super Ljava/lang/Object;
.source "LCSimActivator.java"

# interfaces
.implements Lcom/android/internal/telephony/uicc/ISimActivator;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mSlotId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "slotId"    # I

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/android/internal/telephony/lc/LCSimActivator;->mContext:Landroid/content/Context;

    .line 23
    iput p2, p0, Lcom/android/internal/telephony/lc/LCSimActivator;->mSlotId:I

    .line 24
    return-void
.end method


# virtual methods
.method public onIccCardAbsent()V
    .locals 0

    .prologue
    .line 40
    return-void
.end method

.method public onIccCardPresent(Z)V
    .locals 3
    .param p1, "isActivate"    # Z

    .prologue
    .line 28
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/lc/LCSimActivator;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "airplane_mode_on"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 35
    :goto_0
    return-void

    .line 34
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/lc/LCSimActivator;->setActivate(Z)Z

    goto :goto_0
.end method

.method public setActivate(Z)Z
    .locals 2
    .param p1, "isActivate"    # Z

    .prologue
    .line 44
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getProxyPhones()[Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/lc/LCSimActivator;->mSlotId:I

    aget-object v0, v0, v1

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->setRadioPower(Z)V

    .line 45
    const/4 v0, 0x1

    return v0
.end method
