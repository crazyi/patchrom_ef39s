.class public Lcom/android/internal/telephony/SkyQualcommUiccRIL;
.super Lcom/android/internal/telephony/QualcommSharedRIL;
.source "SkyQualcommUiccRIL.java"

# interfaces
.implements Lcom/android/internal/telephony/CommandsInterface;


# instance fields
.field protected mPinState:I


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .locals 0
    .parameter "context"
    .parameter "networkMode"
    .parameter "cdmaSubscription"

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/QualcommSharedRIL;-><init>(Landroid/content/Context;II)V

    return-void
.end method


# virtual methods
.method protected processSolicited(Landroid/os/Parcel;)V
    .locals 10
    .parameter "p"

    .prologue
    const/4 v9, 0x0

    const/4 v1, 0x0

    .local v1, found:Z
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .local v4, serial:I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .local v0, error:I
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/SkyQualcommUiccRIL;->findAndRemoveRequestFromList(I)Lcom/android/internal/telephony/RILRequest;

    move-result-object v3

    .local v3, rr:Lcom/android/internal/telephony/RILRequest;
    if-nez v3, :cond_0

    const-string v6, "RILJ"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unexpected solicited response! sn: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " error: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    const/4 v2, 0x0

    .local v2, ret:Ljava/lang/Object;
    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/os/Parcel;->dataAvail()I

    move-result v6

    if-lez v6, :cond_3

    :cond_1
    :try_start_0
    iget v6, v3, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    packed-switch v6, :pswitch_data_0

    new-instance v6, Ljava/lang/RuntimeException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unrecognized solicited response: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v3, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v5

    .local v5, tr:Ljava/lang/Throwable;
    const-string v6, "RILJ"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "< "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v3, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v8}, Lcom/android/internal/telephony/SkyQualcommUiccRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " exception, possible invalid RIL response"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v6, v3, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    if-eqz v6, :cond_2

    iget-object v6, v3, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v6, v9, v5}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    iget-object v6, v3, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v6}, Landroid/os/Message;->sendToTarget()V

    :cond_2
    invoke-virtual {v3}, Lcom/android/internal/telephony/RILRequest;->release()V

    goto :goto_0

    .end local v5           #tr:Ljava/lang/Throwable;
    :pswitch_0
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SkyQualcommUiccRIL;->responseIccCardStatus(Landroid/os/Parcel;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v2

    .end local v2           #ret:Ljava/lang/Object;
    :cond_3
    :goto_1
    if-eqz v0, :cond_4

    invoke-virtual {v3, v0, v2}, Lcom/android/internal/telephony/RILRequest;->onError(ILjava/lang/Object;)V

    invoke-virtual {v3}, Lcom/android/internal/telephony/RILRequest;->release()V

    goto :goto_0

    .restart local v2       #ret:Ljava/lang/Object;
    :pswitch_1
    :try_start_2
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SkyQualcommUiccRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_1

    :pswitch_2
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SkyQualcommUiccRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_1

    :pswitch_3
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SkyQualcommUiccRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_1

    :pswitch_4
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SkyQualcommUiccRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_1

    :pswitch_5
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SkyQualcommUiccRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_1

    :pswitch_6
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SkyQualcommUiccRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_1

    :pswitch_7
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SkyQualcommUiccRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_1

    :pswitch_8
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SkyQualcommUiccRIL;->responseCallList(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_1

    :pswitch_9
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SkyQualcommUiccRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_1

    :pswitch_a
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SkyQualcommUiccRIL;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_1

    :pswitch_b
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SkyQualcommUiccRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_1

    :pswitch_c
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SkyQualcommUiccRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_1

    :pswitch_d
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SkyQualcommUiccRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_1

    :pswitch_e
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SkyQualcommUiccRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_1

    :pswitch_f
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SkyQualcommUiccRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_1

    :pswitch_10
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SkyQualcommUiccRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_1

    :pswitch_11
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SkyQualcommUiccRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_1

    :pswitch_12
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SkyQualcommUiccRIL;->responseSignalStrength(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_1

    :pswitch_13
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SkyQualcommUiccRIL;->responseStrings(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_1

    :pswitch_14
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SkyQualcommUiccRIL;->responseStrings(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_1

    :pswitch_15
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SkyQualcommUiccRIL;->responseStrings(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_1

    :pswitch_16
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SkyQualcommUiccRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_1

    :pswitch_17
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SkyQualcommUiccRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_1

    :pswitch_18
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SkyQualcommUiccRIL;->responseSMS(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_1

    :pswitch_19
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SkyQualcommUiccRIL;->responseSMS(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    :pswitch_1a
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SkyQualcommUiccRIL;->responseSetupDataCall(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    :pswitch_1b
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SkyQualcommUiccRIL;->responseICC_IO(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    :pswitch_1c
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SkyQualcommUiccRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    :pswitch_1d
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SkyQualcommUiccRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    :pswitch_1e
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SkyQualcommUiccRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    :pswitch_1f
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SkyQualcommUiccRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    :pswitch_20
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SkyQualcommUiccRIL;->responseCallForward(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    :pswitch_21
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SkyQualcommUiccRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    :pswitch_22
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SkyQualcommUiccRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    :pswitch_23
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SkyQualcommUiccRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    :pswitch_24
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SkyQualcommUiccRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    :pswitch_25
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SkyQualcommUiccRIL;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    :pswitch_26
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SkyQualcommUiccRIL;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    :pswitch_27
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SkyQualcommUiccRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    :pswitch_28
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SkyQualcommUiccRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    :pswitch_29
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SkyQualcommUiccRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    :pswitch_2a
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SkyQualcommUiccRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    :pswitch_2b
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SkyQualcommUiccRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    :pswitch_2c
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SkyQualcommUiccRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    :pswitch_2d
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SkyQualcommUiccRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    :pswitch_2e
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SkyQualcommUiccRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    :pswitch_2f
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SkyQualcommUiccRIL;->responseOperatorInfos(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    :pswitch_30
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SkyQualcommUiccRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    :pswitch_31
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SkyQualcommUiccRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    :pswitch_32
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SkyQualcommUiccRIL;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    :pswitch_33
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SkyQualcommUiccRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    :pswitch_34
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SkyQualcommUiccRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    :pswitch_35
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SkyQualcommUiccRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    :pswitch_36
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SkyQualcommUiccRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    :pswitch_37
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SkyQualcommUiccRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    :pswitch_38
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SkyQualcommUiccRIL;->responseDataCallList(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    :pswitch_39
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SkyQualcommUiccRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    :pswitch_3a
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SkyQualcommUiccRIL;->responseRaw(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    :pswitch_3b
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SkyQualcommUiccRIL;->responseStrings(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    :pswitch_3c
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SkyQualcommUiccRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    :pswitch_3d
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SkyQualcommUiccRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    :pswitch_3e
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SkyQualcommUiccRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    :pswitch_3f
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SkyQualcommUiccRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    :pswitch_40
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SkyQualcommUiccRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    :pswitch_41
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SkyQualcommUiccRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    :pswitch_42
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SkyQualcommUiccRIL;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    :pswitch_43
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SkyQualcommUiccRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    :pswitch_44
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SkyQualcommUiccRIL;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    :pswitch_45
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SkyQualcommUiccRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    :pswitch_46
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SkyQualcommUiccRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    :pswitch_47
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SkyQualcommUiccRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    :pswitch_48
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SkyQualcommUiccRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    :pswitch_49
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SkyQualcommUiccRIL;->responseGetPreferredNetworkType(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    :pswitch_4a
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SkyQualcommUiccRIL;->responseCellList(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    :pswitch_4b
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SkyQualcommUiccRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    :pswitch_4c
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SkyQualcommUiccRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    :pswitch_4d
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SkyQualcommUiccRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    :pswitch_4e
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SkyQualcommUiccRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    :pswitch_4f
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SkyQualcommUiccRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    :pswitch_50
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SkyQualcommUiccRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    :pswitch_51
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SkyQualcommUiccRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    :pswitch_52
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SkyQualcommUiccRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    :pswitch_53
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SkyQualcommUiccRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    :pswitch_54
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SkyQualcommUiccRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    :pswitch_55
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SkyQualcommUiccRIL;->responseSMS(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    :pswitch_56
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SkyQualcommUiccRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    :pswitch_57
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SkyQualcommUiccRIL;->responseGmsBroadcastConfig(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    :pswitch_58
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SkyQualcommUiccRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    :pswitch_59
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SkyQualcommUiccRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    :pswitch_5a
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SkyQualcommUiccRIL;->responseCdmaBroadcastConfig(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    :pswitch_5b
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SkyQualcommUiccRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    :pswitch_5c
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SkyQualcommUiccRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    :pswitch_5d
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SkyQualcommUiccRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    :pswitch_5e
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SkyQualcommUiccRIL;->responseStrings(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    :pswitch_5f
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SkyQualcommUiccRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    :pswitch_60
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SkyQualcommUiccRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    :pswitch_61
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SkyQualcommUiccRIL;->responseStrings(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    :pswitch_62
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SkyQualcommUiccRIL;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    :pswitch_63
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SkyQualcommUiccRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    :pswitch_64
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SkyQualcommUiccRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    :pswitch_65
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SkyQualcommUiccRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    :pswitch_66
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SkyQualcommUiccRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    :pswitch_67
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SkyQualcommUiccRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    :pswitch_68
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SkyQualcommUiccRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    :pswitch_69
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SkyQualcommUiccRIL;->responseStrings(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    :pswitch_6a
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SkyQualcommUiccRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    :pswitch_6b
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SkyQualcommUiccRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v2

    goto/16 :goto_1

    .end local v2           #ret:Ljava/lang/Object;
    :cond_4
    iget-boolean v6, p0, Lcom/android/internal/telephony/SkyQualcommUiccRIL;->RILJ_LOGD:Z

    if-eqz v6, :cond_5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "< "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v3, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v7}, Lcom/android/internal/telephony/SkyQualcommUiccRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v3, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-virtual {p0, v7, v2}, Lcom/android/internal/telephony/SkyQualcommUiccRIL;->retToString(ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/SkyQualcommUiccRIL;->riljLog(Ljava/lang/String;)V

    :cond_5
    iget-object v6, v3, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    if-eqz v6, :cond_6

    iget-object v6, v3, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v6, v2, v9}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    iget-object v6, v3, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v6}, Landroid/os/Message;->sendToTarget()V

    :cond_6
    invoke-virtual {v3}, Lcom/android/internal/telephony/RILRequest;->release()V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
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
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
        :pswitch_21
        :pswitch_22
        :pswitch_23
        :pswitch_24
        :pswitch_25
        :pswitch_26
        :pswitch_27
        :pswitch_28
        :pswitch_29
        :pswitch_2a
        :pswitch_2b
        :pswitch_2c
        :pswitch_2d
        :pswitch_2e
        :pswitch_2f
        :pswitch_30
        :pswitch_31
        :pswitch_32
        :pswitch_33
        :pswitch_34
        :pswitch_35
        :pswitch_36
        :pswitch_37
        :pswitch_38
        :pswitch_39
        :pswitch_3a
        :pswitch_3b
        :pswitch_3c
        :pswitch_3d
        :pswitch_3e
        :pswitch_3f
        :pswitch_40
        :pswitch_41
        :pswitch_42
        :pswitch_43
        :pswitch_44
        :pswitch_45
        :pswitch_46
        :pswitch_47
        :pswitch_48
        :pswitch_49
        :pswitch_4a
        :pswitch_4b
        :pswitch_4c
        :pswitch_4d
        :pswitch_4e
        :pswitch_4f
        :pswitch_50
        :pswitch_51
        :pswitch_52
        :pswitch_53
        :pswitch_54
        :pswitch_5d
        :pswitch_55
        :pswitch_56
        :pswitch_57
        :pswitch_58
        :pswitch_59
        :pswitch_5a
        :pswitch_5b
        :pswitch_5c
        :pswitch_5e
        :pswitch_5f
        :pswitch_60
        :pswitch_61
        :pswitch_64
        :pswitch_62
        :pswitch_63
        :pswitch_65
        :pswitch_66
        :pswitch_67
        :pswitch_68
        :pswitch_69
        :pswitch_6a
        :pswitch_6b
    .end packed-switch
.end method

.method public sendSMS(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 2
    .parameter "smscPDU"
    .parameter "pdu"
    .parameter "result"

    .prologue
    const/4 v0, 0x0

    .local v0, test1:Ljava/lang/String;
    const/4 v1, 0x1

    invoke-virtual {p0, v0, p2, p3, v1}, Lcom/android/internal/telephony/SkyQualcommUiccRIL;->sendSMS(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;I)V

    return-void
.end method

.method public sendSMS(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;I)V
    .locals 3
    .parameter "paramString1"
    .parameter "paramString2"
    .parameter "paramMessage"
    .parameter "paramInt"

    .prologue
    const/16 v1, 0x1a

    invoke-static {v1, p3}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .local v0, localRILRequest:Lcom/android/internal/telephony/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-static {p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/SkyQualcommUiccRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "msgCount : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/SkyQualcommUiccRIL;->riljLog(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/SkyQualcommUiccRIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    return-void
.end method
