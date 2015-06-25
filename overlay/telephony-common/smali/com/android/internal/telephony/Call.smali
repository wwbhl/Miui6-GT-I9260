.class public abstract Lcom/android/internal/telephony/Call;
.super Ljava/lang/Object;
.source "Call.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/Call$State;
    }
.end annotation


# instance fields
.field protected final LOG_TAG:Ljava/lang/String;

.field public isMpty:Z

.field private mConfUriList:[Ljava/lang/String;

.field public mConnections:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/Connection;",
            ">;"
        }
    .end annotation
.end field

.field protected mIsGeneric:Z

.field public mState:Lcom/android/internal/telephony/Call$State;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const-string v0, "Call"

    iput-object v0, p0, Lcom/android/internal/telephony/Call;->LOG_TAG:Ljava/lang/String;

    .line 49
    iput-boolean v1, p0, Lcom/android/internal/telephony/Call;->isMpty:Z

    .line 54
    sget-object v0, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    iput-object v0, p0, Lcom/android/internal/telephony/Call;->mState:Lcom/android/internal/telephony/Call$State;

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/Call;->mConnections:Ljava/util/ArrayList;

    .line 64
    iput-boolean v1, p0, Lcom/android/internal/telephony/Call;->mIsGeneric:Z

    return-void
.end method


# virtual methods
.method public getConfUriList()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/android/internal/telephony/Call;->mConfUriList:[Ljava/lang/String;

    return-object v0
.end method

.method public abstract getConnections()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/Connection;",
            ">;"
        }
    .end annotation
.end method

.method public getDigitsPressed()Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 284
    iget-object v7, p0, Lcom/android/internal/telephony/Call;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    packed-switch v7, :pswitch_data_0

    .line 292
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 293
    .local v0, "builder":Ljava/lang/StringBuilder;
    iget-object v7, p0, Lcom/android/internal/telephony/Call;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 295
    .local v2, "connections":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/Connection;>;"
    :goto_0
    const/4 v5, 0x1

    .line 296
    .local v5, "index":I
    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/telephony/Connection;

    invoke-virtual {v7}, Lcom/android/internal/telephony/Connection;->getDigitsPressed()Ljava/lang/String;

    move-result-object v3

    .line 297
    .local v3, "digits":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v7, v5, :cond_1

    .line 314
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 317
    .end local v0    # "builder":Ljava/lang/StringBuilder;
    .end local v2    # "connections":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/Connection;>;"
    .end local v3    # "digits":Ljava/lang/String;
    .end local v5    # "index":I
    .local v6, "pressed":Ljava/lang/String;
    :goto_1
    return-object v6

    .line 286
    .end local v6    # "pressed":Ljava/lang/String;
    :pswitch_0
    const-string v6, ""

    .line 287
    .restart local v6    # "pressed":Ljava/lang/String;
    goto :goto_1

    .line 289
    .end local v6    # "pressed":Ljava/lang/String;
    :pswitch_1
    iget-object v7, p0, Lcom/android/internal/telephony/Call;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/telephony/Connection;

    invoke-virtual {v7}, Lcom/android/internal/telephony/Connection;->getDigitsPressed()Ljava/lang/String;

    move-result-object v6

    .line 290
    .restart local v6    # "pressed":Ljava/lang/String;
    goto :goto_1

    .line 300
    .end local v6    # "pressed":Ljava/lang/String;
    .restart local v0    # "builder":Ljava/lang/StringBuilder;
    .restart local v2    # "connections":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/Connection;>;"
    .restart local v3    # "digits":Ljava/lang/String;
    .restart local v5    # "index":I
    :cond_1
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    sub-int/2addr v7, v5

    invoke-virtual {v3, v7}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 301
    .local v1, "ch":C
    const/4 v4, 0x1

    .local v4, "i":I
    :goto_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    if-ge v4, v7, :cond_3

    .line 302
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/telephony/Connection;

    invoke-virtual {v7}, Lcom/android/internal/telephony/Connection;->getDigitsPressed()Ljava/lang/String;

    move-result-object v3

    .line 303
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    if-lt v7, v5, :cond_2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    sub-int/2addr v7, v5

    invoke-virtual {v3, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-eq v7, v1, :cond_4

    .line 304
    :cond_2
    const/4 v1, 0x0

    .line 308
    :cond_3
    if-eqz v1, :cond_0

    .line 312
    invoke-virtual {v0, v8, v1}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 301
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 284
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getEarliestConnectTime()J
    .locals 10

    .prologue
    .line 185
    const-wide v6, 0x7fffffffffffffffL

    .line 186
    .local v6, "time":J
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v2

    .line 188
    .local v2, "l":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/Connection;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v8

    if-nez v8, :cond_0

    .line 189
    const-wide/16 v8, 0x0

    .line 201
    :goto_0
    return-wide v8

    .line 192
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    .local v3, "s":I
    :goto_1
    if-ge v1, v3, :cond_2

    .line 193
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Connection;

    .line 196
    .local v0, "c":Lcom/android/internal/telephony/Connection;
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getConnectTime()J

    move-result-wide v4

    .line 198
    .local v4, "t":J
    cmp-long v8, v4, v6

    if-gez v8, :cond_1

    move-wide v6, v4

    .line 192
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v0    # "c":Lcom/android/internal/telephony/Connection;
    .end local v4    # "t":J
    :cond_2
    move-wide v8, v6

    .line 201
    goto :goto_0
.end method

.method public getEarliestConnection()Lcom/android/internal/telephony/Connection;
    .locals 10

    .prologue
    .line 127
    const-wide v7, 0x7fffffffffffffffL

    .line 129
    .local v7, "time":J
    const/4 v1, 0x0

    .line 131
    .local v1, "earliest":Lcom/android/internal/telephony/Connection;
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v3

    .line 133
    .local v3, "l":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/Connection;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v9

    if-nez v9, :cond_0

    .line 134
    const/4 v9, 0x0

    .line 149
    :goto_0
    return-object v9

    .line 137
    :cond_0
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    .local v4, "s":I
    :goto_1
    if-ge v2, v4, :cond_2

    .line 138
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Connection;

    .line 141
    .local v0, "c":Lcom/android/internal/telephony/Connection;
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getCreateTime()J

    move-result-wide v5

    .line 143
    .local v5, "t":J
    cmp-long v9, v5, v7

    if-gez v9, :cond_1

    .line 144
    move-object v1, v0

    .line 145
    move-wide v7, v5

    .line 137
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v0    # "c":Lcom/android/internal/telephony/Connection;
    .end local v5    # "t":J
    :cond_2
    move-object v9, v1

    .line 149
    goto :goto_0
.end method

.method public getEarliestCreateTime()J
    .locals 10

    .prologue
    .line 163
    const-wide v6, 0x7fffffffffffffffL

    .line 165
    .local v6, "time":J
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v2

    .line 167
    .local v2, "l":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/Connection;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v8

    if-nez v8, :cond_0

    .line 168
    const-wide/16 v8, 0x0

    .line 180
    :goto_0
    return-wide v8

    .line 171
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    .local v3, "s":I
    :goto_1
    if-ge v1, v3, :cond_2

    .line 172
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Connection;

    .line 175
    .local v0, "c":Lcom/android/internal/telephony/Connection;
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getCreateTime()J

    move-result-wide v4

    .line 177
    .local v4, "t":J
    cmp-long v8, v4, v6

    if-gez v8, :cond_1

    move-wide v6, v4

    .line 171
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v0    # "c":Lcom/android/internal/telephony/Connection;
    .end local v4    # "t":J
    :cond_2
    move-wide v8, v6

    .line 180
    goto :goto_0
.end method

.method public getLatestConnection()Lcom/android/internal/telephony/Connection;
    .locals 10

    .prologue
    .line 221
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v2

    .line 222
    .local v2, "l":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/Connection;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v9

    if-nez v9, :cond_1

    .line 223
    const/4 v3, 0x0

    .line 238
    :cond_0
    return-object v3

    .line 226
    :cond_1
    const-wide/16 v7, 0x0

    .line 227
    .local v7, "time":J
    const/4 v3, 0x0

    .line 228
    .local v3, "latest":Lcom/android/internal/telephony/Connection;
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    .local v4, "s":I
    :goto_0
    if-ge v1, v4, :cond_0

    .line 229
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Connection;

    .line 230
    .local v0, "c":Lcom/android/internal/telephony/Connection;
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getCreateTime()J

    move-result-wide v5

    .line 232
    .local v5, "t":J
    cmp-long v9, v5, v7

    if-lez v9, :cond_2

    .line 233
    move-object v3, v0

    .line 234
    move-wide v7, v5

    .line 228
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public abstract getPhone()Lcom/android/internal/telephony/Phone;
.end method

.method public getState()Lcom/android/internal/telephony/Call$State;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/internal/telephony/Call;->mState:Lcom/android/internal/telephony/Call$State;

    return-object v0
.end method

.method public abstract hangup()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation
.end method

.method public hangupIfAlive()V
    .locals 4

    .prologue
    .line 260
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 262
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->hangup()V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 267
    :cond_0
    :goto_0
    return-void

    .line 263
    :catch_0
    move-exception v0

    .line 264
    .local v0, "ex":Lcom/android/internal/telephony/CallStateException;
    const-string v1, "Call"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " hangupIfActive: caught "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public hasConnection(Lcom/android/internal/telephony/Connection;)Z
    .locals 1
    .param p1, "c"    # Lcom/android/internal/telephony/Connection;

    .prologue
    .line 85
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    if-ne v0, p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasConnections()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 93
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v0

    .line 95
    .local v0, "connections":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/Connection;>;"
    if-nez v0, :cond_1

    .line 99
    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isDialingOrAlerting()Z
    .locals 1

    .prologue
    .line 207
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call$State;->isDialing()Z

    move-result v0

    return v0
.end method

.method public isGeneric()Z
    .locals 1

    .prologue
    .line 246
    iget-boolean v0, p0, Lcom/android/internal/telephony/Call;->mIsGeneric:Z

    return v0
.end method

.method public isIdle()Z
    .locals 1

    .prologue
    .line 117
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public abstract isMultiparty()Z
.end method

.method public isRinging()Z
    .locals 1

    .prologue
    .line 212
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call$State;->isRinging()Z

    move-result v0

    return v0
.end method

.method public onDigitPressed(C)V
    .locals 3
    .param p1, "ch"    # C

    .prologue
    .line 274
    iget-object v2, p0, Lcom/android/internal/telephony/Call;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Connection;

    .line 275
    .local v0, "c":Lcom/android/internal/telephony/Connection;
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/Connection;->onDigitPressed(C)V

    goto :goto_0

    .line 277
    .end local v0    # "c":Lcom/android/internal/telephony/Connection;
    :cond_0
    return-void
.end method

.method public setConfUriList([Ljava/lang/String;)V
    .locals 0
    .param p1, "urilist"    # [Ljava/lang/String;

    .prologue
    .line 157
    iput-object p1, p0, Lcom/android/internal/telephony/Call;->mConfUriList:[Ljava/lang/String;

    .line 158
    return-void
.end method

.method public setGeneric(Z)V
    .locals 0
    .param p1, "generic"    # Z

    .prologue
    .line 253
    iput-boolean p1, p0, Lcom/android/internal/telephony/Call;->mIsGeneric:Z

    .line 254
    return-void
.end method
