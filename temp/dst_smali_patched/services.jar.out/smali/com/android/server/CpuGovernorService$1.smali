.class Lcom/android/server/CpuGovernorService$1;
.super Landroid/content/BroadcastReceiver;
.source "CpuGovernorService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/CpuGovernorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/CpuGovernorService;


# direct methods
.method constructor <init>(Lcom/android/server/CpuGovernorService;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/server/CpuGovernorService$1;->this$0:Lcom/android/server/CpuGovernorService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v0, 0x0

    .local v0, changeAdded:Z
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.intent.action.SCREEN_ON"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "dev.pm.dyn_samplingrate"

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_1

    :goto_0
    if-nez v0, :cond_0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/CpuGovernorService$1;->this$0:Lcom/android/server/CpuGovernorService;

    #getter for: Lcom/android/server/CpuGovernorService;->mSamplingRateChangeProcessor:Lcom/android/server/SamplingRateChangeProcessor;
    invoke-static {v2}, Lcom/android/server/CpuGovernorService;->access$000(Lcom/android/server/CpuGovernorService;)Lcom/android/server/SamplingRateChangeProcessor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/SamplingRateChangeProcessor;->getSamplingRateChangeRequests()Ljava/util/Vector;

    move-result-object v2

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/util/ConcurrentModificationException; {:try_start_0 .. :try_end_0} :catch_3

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/android/server/CpuGovernorService$1;->this$0:Lcom/android/server/CpuGovernorService;

    #getter for: Lcom/android/server/CpuGovernorService;->mSamplingRateChangeProcessor:Lcom/android/server/SamplingRateChangeProcessor;
    invoke-static {v2}, Lcom/android/server/CpuGovernorService;->access$000(Lcom/android/server/CpuGovernorService;)Lcom/android/server/SamplingRateChangeProcessor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/SamplingRateChangeProcessor;->getSynchObject()Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    :try_start_1
    iget-object v2, p0, Lcom/android/server/CpuGovernorService$1;->this$0:Lcom/android/server/CpuGovernorService;

    #getter for: Lcom/android/server/CpuGovernorService;->mSamplingRateChangeProcessor:Lcom/android/server/SamplingRateChangeProcessor;
    invoke-static {v2}, Lcom/android/server/CpuGovernorService;->access$000(Lcom/android/server/CpuGovernorService;)Lcom/android/server/SamplingRateChangeProcessor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/SamplingRateChangeProcessor;->getSynchObject()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->notify()V

    iget-object v2, p0, Lcom/android/server/CpuGovernorService$1;->this$0:Lcom/android/server/CpuGovernorService;

    #getter for: Lcom/android/server/CpuGovernorService;->mSamplingRateChangeProcessor:Lcom/android/server/SamplingRateChangeProcessor;
    invoke-static {v2}, Lcom/android/server/CpuGovernorService;->access$000(Lcom/android/server/CpuGovernorService;)Lcom/android/server/SamplingRateChangeProcessor;

    move-result-object v2

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lcom/android/server/SamplingRateChangeProcessor;->setNotificationPending(Z)V

    monitor-exit v3

    :cond_1
    :goto_1
    return-void

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "dev.pm.dyn_samplingrate"

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_1

    :goto_2
    if-nez v0, :cond_3

    :try_start_2
    iget-object v2, p0, Lcom/android/server/CpuGovernorService$1;->this$0:Lcom/android/server/CpuGovernorService;

    #getter for: Lcom/android/server/CpuGovernorService;->mSamplingRateChangeProcessor:Lcom/android/server/SamplingRateChangeProcessor;
    invoke-static {v2}, Lcom/android/server/CpuGovernorService;->access$000(Lcom/android/server/CpuGovernorService;)Lcom/android/server/SamplingRateChangeProcessor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/SamplingRateChangeProcessor;->getSamplingRateChangeRequests()Ljava/util/Vector;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/util/ConcurrentModificationException; {:try_start_2 .. :try_end_2} :catch_2

    const/4 v0, 0x1

    goto :goto_2

    :cond_3
    iget-object v2, p0, Lcom/android/server/CpuGovernorService$1;->this$0:Lcom/android/server/CpuGovernorService;

    #getter for: Lcom/android/server/CpuGovernorService;->mSamplingRateChangeProcessor:Lcom/android/server/SamplingRateChangeProcessor;
    invoke-static {v2}, Lcom/android/server/CpuGovernorService;->access$000(Lcom/android/server/CpuGovernorService;)Lcom/android/server/SamplingRateChangeProcessor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/SamplingRateChangeProcessor;->getSynchObject()Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    :try_start_3
    iget-object v2, p0, Lcom/android/server/CpuGovernorService$1;->this$0:Lcom/android/server/CpuGovernorService;

    #getter for: Lcom/android/server/CpuGovernorService;->mSamplingRateChangeProcessor:Lcom/android/server/SamplingRateChangeProcessor;
    invoke-static {v2}, Lcom/android/server/CpuGovernorService;->access$000(Lcom/android/server/CpuGovernorService;)Lcom/android/server/SamplingRateChangeProcessor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/SamplingRateChangeProcessor;->getSynchObject()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->notify()V

    iget-object v2, p0, Lcom/android/server/CpuGovernorService$1;->this$0:Lcom/android/server/CpuGovernorService;

    #getter for: Lcom/android/server/CpuGovernorService;->mSamplingRateChangeProcessor:Lcom/android/server/SamplingRateChangeProcessor;
    invoke-static {v2}, Lcom/android/server/CpuGovernorService;->access$000(Lcom/android/server/CpuGovernorService;)Lcom/android/server/SamplingRateChangeProcessor;

    move-result-object v2

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lcom/android/server/SamplingRateChangeProcessor;->setNotificationPending(Z)V

    monitor-exit v3

    goto :goto_1

    :catchall_1
    move-exception v2

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v2

    :cond_4
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.android.server.CpuGovernorService.action.IOBUSY_VOTE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "com.android.server.CpuGovernorService.voteType"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .local v1, voteType:I
    const-string v2, "CpuGovernorService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IOBUSY vote: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    if-nez v0, :cond_6

    if-ne v1, v5, :cond_5

    :try_start_4
    iget-object v2, p0, Lcom/android/server/CpuGovernorService$1;->this$0:Lcom/android/server/CpuGovernorService;

    #getter for: Lcom/android/server/CpuGovernorService;->mIOBusyVoteChangeProcessor:Lcom/android/server/IOBusyVoteProcessor;
    invoke-static {v2}, Lcom/android/server/CpuGovernorService;->access$100(Lcom/android/server/CpuGovernorService;)Lcom/android/server/IOBusyVoteProcessor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/IOBusyVoteProcessor;->getIOBusyChangeRequests()Ljava/util/Vector;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    :goto_4
    const/4 v0, 0x1

    goto :goto_3

    :cond_5
    iget-object v2, p0, Lcom/android/server/CpuGovernorService$1;->this$0:Lcom/android/server/CpuGovernorService;

    #getter for: Lcom/android/server/CpuGovernorService;->mIOBusyVoteChangeProcessor:Lcom/android/server/IOBusyVoteProcessor;
    invoke-static {v2}, Lcom/android/server/CpuGovernorService;->access$100(Lcom/android/server/CpuGovernorService;)Lcom/android/server/IOBusyVoteProcessor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/IOBusyVoteProcessor;->getIOBusyChangeRequests()Ljava/util/Vector;

    move-result-object v2

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljava/util/ConcurrentModificationException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_4

    :catch_0
    move-exception v2

    goto :goto_3

    :cond_6
    iget-object v2, p0, Lcom/android/server/CpuGovernorService$1;->this$0:Lcom/android/server/CpuGovernorService;

    #getter for: Lcom/android/server/CpuGovernorService;->mIOBusyVoteChangeProcessor:Lcom/android/server/IOBusyVoteProcessor;
    invoke-static {v2}, Lcom/android/server/CpuGovernorService;->access$100(Lcom/android/server/CpuGovernorService;)Lcom/android/server/IOBusyVoteProcessor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/IOBusyVoteProcessor;->getSynchObject()Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    :try_start_5
    iget-object v2, p0, Lcom/android/server/CpuGovernorService$1;->this$0:Lcom/android/server/CpuGovernorService;

    #getter for: Lcom/android/server/CpuGovernorService;->mIOBusyVoteChangeProcessor:Lcom/android/server/IOBusyVoteProcessor;
    invoke-static {v2}, Lcom/android/server/CpuGovernorService;->access$100(Lcom/android/server/CpuGovernorService;)Lcom/android/server/IOBusyVoteProcessor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/IOBusyVoteProcessor;->getSynchObject()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->notify()V

    iget-object v2, p0, Lcom/android/server/CpuGovernorService$1;->this$0:Lcom/android/server/CpuGovernorService;

    #getter for: Lcom/android/server/CpuGovernorService;->mIOBusyVoteChangeProcessor:Lcom/android/server/IOBusyVoteProcessor;
    invoke-static {v2}, Lcom/android/server/CpuGovernorService;->access$100(Lcom/android/server/CpuGovernorService;)Lcom/android/server/IOBusyVoteProcessor;

    move-result-object v2

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lcom/android/server/IOBusyVoteProcessor;->setNotificationPending(Z)V

    monitor-exit v3

    goto/16 :goto_1

    :catchall_2
    move-exception v2

    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v2

    .end local v1           #voteType:I
    :cond_7
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.android.server.CpuGovernorService.action.IOBUSY_UNVOTE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "com.android.server.CpuGovernorService.voteType"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .restart local v1       #voteType:I
    const-string v2, "CpuGovernorService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IOBUSY unvote: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_5
    if-nez v0, :cond_9

    if-ne v1, v5, :cond_8

    :try_start_6
    iget-object v2, p0, Lcom/android/server/CpuGovernorService$1;->this$0:Lcom/android/server/CpuGovernorService;

    #getter for: Lcom/android/server/CpuGovernorService;->mIOBusyVoteChangeProcessor:Lcom/android/server/IOBusyVoteProcessor;
    invoke-static {v2}, Lcom/android/server/CpuGovernorService;->access$100(Lcom/android/server/CpuGovernorService;)Lcom/android/server/IOBusyVoteProcessor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/IOBusyVoteProcessor;->getIOBusyChangeRequests()Ljava/util/Vector;

    move-result-object v2

    const/4 v3, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    :goto_6
    const/4 v0, 0x1

    goto :goto_5

    :cond_8
    iget-object v2, p0, Lcom/android/server/CpuGovernorService$1;->this$0:Lcom/android/server/CpuGovernorService;

    #getter for: Lcom/android/server/CpuGovernorService;->mIOBusyVoteChangeProcessor:Lcom/android/server/IOBusyVoteProcessor;
    invoke-static {v2}, Lcom/android/server/CpuGovernorService;->access$100(Lcom/android/server/CpuGovernorService;)Lcom/android/server/IOBusyVoteProcessor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/IOBusyVoteProcessor;->getIOBusyChangeRequests()Ljava/util/Vector;

    move-result-object v2

    const/4 v3, 0x4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catch Ljava/util/ConcurrentModificationException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_6

    :catch_1
    move-exception v2

    goto :goto_5

    :cond_9
    iget-object v2, p0, Lcom/android/server/CpuGovernorService$1;->this$0:Lcom/android/server/CpuGovernorService;

    #getter for: Lcom/android/server/CpuGovernorService;->mIOBusyVoteChangeProcessor:Lcom/android/server/IOBusyVoteProcessor;
    invoke-static {v2}, Lcom/android/server/CpuGovernorService;->access$100(Lcom/android/server/CpuGovernorService;)Lcom/android/server/IOBusyVoteProcessor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/IOBusyVoteProcessor;->getSynchObject()Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    :try_start_7
    iget-object v2, p0, Lcom/android/server/CpuGovernorService$1;->this$0:Lcom/android/server/CpuGovernorService;

    #getter for: Lcom/android/server/CpuGovernorService;->mIOBusyVoteChangeProcessor:Lcom/android/server/IOBusyVoteProcessor;
    invoke-static {v2}, Lcom/android/server/CpuGovernorService;->access$100(Lcom/android/server/CpuGovernorService;)Lcom/android/server/IOBusyVoteProcessor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/IOBusyVoteProcessor;->getSynchObject()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->notify()V

    iget-object v2, p0, Lcom/android/server/CpuGovernorService$1;->this$0:Lcom/android/server/CpuGovernorService;

    #getter for: Lcom/android/server/CpuGovernorService;->mIOBusyVoteChangeProcessor:Lcom/android/server/IOBusyVoteProcessor;
    invoke-static {v2}, Lcom/android/server/CpuGovernorService;->access$100(Lcom/android/server/CpuGovernorService;)Lcom/android/server/IOBusyVoteProcessor;

    move-result-object v2

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lcom/android/server/IOBusyVoteProcessor;->setNotificationPending(Z)V

    monitor-exit v3

    goto/16 :goto_1

    :catchall_3
    move-exception v2

    monitor-exit v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    throw v2

    .end local v1           #voteType:I
    :catch_2
    move-exception v2

    goto/16 :goto_2

    :catch_3
    move-exception v2

    goto/16 :goto_0
.end method
