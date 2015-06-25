.class public final Lcom/codeaurora/telephony/msim/Subscription;
.super Ljava/lang/Object;
.source "Subscription.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codeaurora/telephony/msim/Subscription$SubscriptionStatus;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "Subscription"

.field public static final SUBSCRIPTION_INDEX_INVALID:I = -0x1


# instance fields
.field private DEBUG:Z

.field public appId:Ljava/lang/String;

.field public appLabel:Ljava/lang/String;

.field public appType:Ljava/lang/String;

.field public iccId:Ljava/lang/String;

.field public m3gpp2Index:I

.field public m3gppIndex:I

.field public slotId:I

.field public subId:I

.field public subStatus:Lcom/codeaurora/telephony/msim/Subscription$SubscriptionStatus;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/codeaurora/telephony/msim/Subscription;->DEBUG:Z

    .line 70
    invoke-virtual {p0}, Lcom/codeaurora/telephony/msim/Subscription;->clear()V

    .line 71
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 146
    iput v0, p0, Lcom/codeaurora/telephony/msim/Subscription;->slotId:I

    .line 147
    iput v0, p0, Lcom/codeaurora/telephony/msim/Subscription;->m3gppIndex:I

    .line 148
    iput v0, p0, Lcom/codeaurora/telephony/msim/Subscription;->m3gpp2Index:I

    .line 149
    iput v0, p0, Lcom/codeaurora/telephony/msim/Subscription;->subId:I

    .line 150
    sget-object v0, Lcom/codeaurora/telephony/msim/Subscription$SubscriptionStatus;->SUB_INVALID:Lcom/codeaurora/telephony/msim/Subscription$SubscriptionStatus;

    iput-object v0, p0, Lcom/codeaurora/telephony/msim/Subscription;->subStatus:Lcom/codeaurora/telephony/msim/Subscription$SubscriptionStatus;

    .line 151
    iput-object v1, p0, Lcom/codeaurora/telephony/msim/Subscription;->appId:Ljava/lang/String;

    .line 152
    iput-object v1, p0, Lcom/codeaurora/telephony/msim/Subscription;->appLabel:Ljava/lang/String;

    .line 153
    iput-object v1, p0, Lcom/codeaurora/telephony/msim/Subscription;->appType:Ljava/lang/String;

    .line 154
    iput-object v1, p0, Lcom/codeaurora/telephony/msim/Subscription;->iccId:Ljava/lang/String;

    .line 155
    return-void
.end method

.method public copyFrom(Lcom/codeaurora/telephony/msim/Subscription;)Lcom/codeaurora/telephony/msim/Subscription;
    .locals 2
    .param p1, "from"    # Lcom/codeaurora/telephony/msim/Subscription;

    .prologue
    const/4 v1, 0x0

    .line 163
    if-eqz p1, :cond_3

    .line 164
    iget v0, p1, Lcom/codeaurora/telephony/msim/Subscription;->slotId:I

    iput v0, p0, Lcom/codeaurora/telephony/msim/Subscription;->slotId:I

    .line 165
    iget v0, p1, Lcom/codeaurora/telephony/msim/Subscription;->m3gppIndex:I

    iput v0, p0, Lcom/codeaurora/telephony/msim/Subscription;->m3gppIndex:I

    .line 166
    iget v0, p1, Lcom/codeaurora/telephony/msim/Subscription;->m3gpp2Index:I

    iput v0, p0, Lcom/codeaurora/telephony/msim/Subscription;->m3gpp2Index:I

    .line 167
    iget v0, p1, Lcom/codeaurora/telephony/msim/Subscription;->subId:I

    iput v0, p0, Lcom/codeaurora/telephony/msim/Subscription;->subId:I

    .line 168
    iget-object v0, p1, Lcom/codeaurora/telephony/msim/Subscription;->subStatus:Lcom/codeaurora/telephony/msim/Subscription$SubscriptionStatus;

    iput-object v0, p0, Lcom/codeaurora/telephony/msim/Subscription;->subStatus:Lcom/codeaurora/telephony/msim/Subscription$SubscriptionStatus;

    .line 169
    iput-object v1, p0, Lcom/codeaurora/telephony/msim/Subscription;->appId:Ljava/lang/String;

    .line 170
    iput-object v1, p0, Lcom/codeaurora/telephony/msim/Subscription;->appLabel:Ljava/lang/String;

    .line 171
    iput-object v1, p0, Lcom/codeaurora/telephony/msim/Subscription;->appType:Ljava/lang/String;

    .line 172
    iput-object v1, p0, Lcom/codeaurora/telephony/msim/Subscription;->iccId:Ljava/lang/String;

    .line 173
    iget-object v0, p1, Lcom/codeaurora/telephony/msim/Subscription;->appId:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 174
    new-instance v0, Ljava/lang/String;

    iget-object v1, p1, Lcom/codeaurora/telephony/msim/Subscription;->appId:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/codeaurora/telephony/msim/Subscription;->appId:Ljava/lang/String;

    .line 176
    :cond_0
    iget-object v0, p1, Lcom/codeaurora/telephony/msim/Subscription;->appLabel:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 177
    new-instance v0, Ljava/lang/String;

    iget-object v1, p1, Lcom/codeaurora/telephony/msim/Subscription;->appLabel:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/codeaurora/telephony/msim/Subscription;->appLabel:Ljava/lang/String;

    .line 179
    :cond_1
    iget-object v0, p1, Lcom/codeaurora/telephony/msim/Subscription;->appType:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 180
    new-instance v0, Ljava/lang/String;

    iget-object v1, p1, Lcom/codeaurora/telephony/msim/Subscription;->appType:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/codeaurora/telephony/msim/Subscription;->appType:Ljava/lang/String;

    .line 182
    :cond_2
    iget-object v0, p1, Lcom/codeaurora/telephony/msim/Subscription;->iccId:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 183
    new-instance v0, Ljava/lang/String;

    iget-object v1, p1, Lcom/codeaurora/telephony/msim/Subscription;->iccId:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/codeaurora/telephony/msim/Subscription;->iccId:Ljava/lang/String;

    .line 187
    :cond_3
    return-object p0
.end method

.method public equals(Lcom/codeaurora/telephony/msim/Subscription;)Z
    .locals 2
    .param p1, "sub"    # Lcom/codeaurora/telephony/msim/Subscription;

    .prologue
    .line 87
    if-eqz p1, :cond_8

    .line 88
    iget v0, p0, Lcom/codeaurora/telephony/msim/Subscription;->slotId:I

    iget v1, p1, Lcom/codeaurora/telephony/msim/Subscription;->slotId:I

    if-ne v0, v1, :cond_9

    iget v0, p0, Lcom/codeaurora/telephony/msim/Subscription;->m3gppIndex:I

    iget v1, p1, Lcom/codeaurora/telephony/msim/Subscription;->m3gppIndex:I

    if-ne v0, v1, :cond_9

    iget v0, p0, Lcom/codeaurora/telephony/msim/Subscription;->m3gpp2Index:I

    iget v1, p1, Lcom/codeaurora/telephony/msim/Subscription;->m3gpp2Index:I

    if-ne v0, v1, :cond_9

    iget v0, p0, Lcom/codeaurora/telephony/msim/Subscription;->subId:I

    iget v1, p1, Lcom/codeaurora/telephony/msim/Subscription;->subId:I

    if-ne v0, v1, :cond_9

    iget-object v0, p0, Lcom/codeaurora/telephony/msim/Subscription;->subStatus:Lcom/codeaurora/telephony/msim/Subscription$SubscriptionStatus;

    iget-object v1, p1, Lcom/codeaurora/telephony/msim/Subscription;->subStatus:Lcom/codeaurora/telephony/msim/Subscription$SubscriptionStatus;

    if-ne v0, v1, :cond_9

    iget-object v0, p0, Lcom/codeaurora/telephony/msim/Subscription;->appId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/codeaurora/telephony/msim/Subscription;->appId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/codeaurora/telephony/msim/Subscription;->appId:Ljava/lang/String;

    iget-object v1, p1, Lcom/codeaurora/telephony/msim/Subscription;->appId:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    :cond_1
    iget-object v0, p0, Lcom/codeaurora/telephony/msim/Subscription;->appLabel:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/codeaurora/telephony/msim/Subscription;->appLabel:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/codeaurora/telephony/msim/Subscription;->appLabel:Ljava/lang/String;

    iget-object v1, p1, Lcom/codeaurora/telephony/msim/Subscription;->appLabel:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    :cond_3
    iget-object v0, p0, Lcom/codeaurora/telephony/msim/Subscription;->appType:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p1, Lcom/codeaurora/telephony/msim/Subscription;->appType:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    :cond_4
    iget-object v0, p0, Lcom/codeaurora/telephony/msim/Subscription;->appType:Ljava/lang/String;

    iget-object v1, p1, Lcom/codeaurora/telephony/msim/Subscription;->appType:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    :cond_5
    iget-object v0, p0, Lcom/codeaurora/telephony/msim/Subscription;->iccId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p1, Lcom/codeaurora/telephony/msim/Subscription;->iccId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    :cond_6
    iget-object v0, p0, Lcom/codeaurora/telephony/msim/Subscription;->iccId:Ljava/lang/String;

    iget-object v1, p1, Lcom/codeaurora/telephony/msim/Subscription;->iccId:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 99
    :cond_7
    const/4 v0, 0x1

    .line 104
    :goto_0
    return v0

    .line 102
    :cond_8
    const-string v0, "Subscription"

    const-string v1, "Subscription.equals: sub == null"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    :cond_9
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAppIndex()I
    .locals 2

    .prologue
    .line 195
    iget v0, p0, Lcom/codeaurora/telephony/msim/Subscription;->m3gppIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 196
    iget v0, p0, Lcom/codeaurora/telephony/msim/Subscription;->m3gppIndex:I

    .line 198
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/codeaurora/telephony/msim/Subscription;->m3gpp2Index:I

    goto :goto_0
.end method

.method public isSame(Lcom/codeaurora/telephony/msim/Subscription;)Z
    .locals 3
    .param p1, "sub"    # Lcom/codeaurora/telephony/msim/Subscription;

    .prologue
    .line 115
    if-eqz p1, :cond_7

    .line 116
    iget-boolean v0, p0, Lcom/codeaurora/telephony/msim/Subscription;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 117
    const-string v0, "Subscription"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isSame(): this = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/codeaurora/telephony/msim/Subscription;->m3gppIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/codeaurora/telephony/msim/Subscription;->m3gpp2Index:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/codeaurora/telephony/msim/Subscription;->appId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/codeaurora/telephony/msim/Subscription;->appType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/codeaurora/telephony/msim/Subscription;->iccId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    const-string v0, "Subscription"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "compare with = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/codeaurora/telephony/msim/Subscription;->m3gppIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/codeaurora/telephony/msim/Subscription;->m3gpp2Index:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/codeaurora/telephony/msim/Subscription;->appId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/codeaurora/telephony/msim/Subscription;->appType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/codeaurora/telephony/msim/Subscription;->iccId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    :cond_0
    iget v0, p0, Lcom/codeaurora/telephony/msim/Subscription;->m3gppIndex:I

    iget v1, p1, Lcom/codeaurora/telephony/msim/Subscription;->m3gppIndex:I

    if-ne v0, v1, :cond_7

    iget v0, p0, Lcom/codeaurora/telephony/msim/Subscription;->m3gpp2Index:I

    iget v1, p1, Lcom/codeaurora/telephony/msim/Subscription;->m3gpp2Index:I

    if-ne v0, v1, :cond_7

    iget-object v0, p0, Lcom/codeaurora/telephony/msim/Subscription;->appId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/codeaurora/telephony/msim/Subscription;->appId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/codeaurora/telephony/msim/Subscription;->appId:Ljava/lang/String;

    iget-object v1, p1, Lcom/codeaurora/telephony/msim/Subscription;->appId:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_2
    iget-object v0, p0, Lcom/codeaurora/telephony/msim/Subscription;->appType:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p1, Lcom/codeaurora/telephony/msim/Subscription;->appType:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    :cond_3
    iget-object v0, p0, Lcom/codeaurora/telephony/msim/Subscription;->appType:Ljava/lang/String;

    iget-object v1, p1, Lcom/codeaurora/telephony/msim/Subscription;->appType:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_4
    iget-object v0, p0, Lcom/codeaurora/telephony/msim/Subscription;->iccId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p1, Lcom/codeaurora/telephony/msim/Subscription;->iccId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    :cond_5
    iget-object v0, p0, Lcom/codeaurora/telephony/msim/Subscription;->iccId:Ljava/lang/String;

    iget-object v1, p1, Lcom/codeaurora/telephony/msim/Subscription;->iccId:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 136
    :cond_6
    const/4 v0, 0x1

    .line 139
    :goto_0
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Subscription = { slotId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/codeaurora/telephony/msim/Subscription;->slotId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", 3gppIndex = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/codeaurora/telephony/msim/Subscription;->m3gppIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", 3gpp2Index = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/codeaurora/telephony/msim/Subscription;->m3gpp2Index:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", subId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/codeaurora/telephony/msim/Subscription;->subId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", subStatus = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/codeaurora/telephony/msim/Subscription;->subStatus:Lcom/codeaurora/telephony/msim/Subscription$SubscriptionStatus;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", appId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/codeaurora/telephony/msim/Subscription;->appId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", appLabel = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/codeaurora/telephony/msim/Subscription;->appLabel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", appType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/codeaurora/telephony/msim/Subscription;->appType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", iccId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/codeaurora/telephony/msim/Subscription;->iccId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
