.class Lcom/android/server/DynamicMemoryManagerService$1;
.super Landroid/content/BroadcastReceiver;
.source "DynamicMemoryManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/DynamicMemoryManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/DynamicMemoryManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/DynamicMemoryManagerService;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/server/DynamicMemoryManagerService$1;->this$0:Lcom/android/server/DynamicMemoryManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .local v0, action:Ljava/lang/String;
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/DynamicMemoryManagerService$1;->this$0:Lcom/android/server/DynamicMemoryManagerService;

    #calls: Lcom/android/server/DynamicMemoryManagerService;->manageAlarms()Z
    invoke-static {v1}, Lcom/android/server/DynamicMemoryManagerService;->access$000(Lcom/android/server/DynamicMemoryManagerService;)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/DynamicMemoryManagerService$1;->this$0:Lcom/android/server/DynamicMemoryManagerService;

    #calls: Lcom/android/server/DynamicMemoryManagerService;->enableUnstableMemory(Z)I
    invoke-static {v1, v3}, Lcom/android/server/DynamicMemoryManagerService;->access$100(Lcom/android/server/DynamicMemoryManagerService;Z)I

    iget-object v1, p0, Lcom/android/server/DynamicMemoryManagerService$1;->this$0:Lcom/android/server/DynamicMemoryManagerService;

    #setter for: Lcom/android/server/DynamicMemoryManagerService;->SCREEN_ON:Z
    invoke-static {v1, v3}, Lcom/android/server/DynamicMemoryManagerService;->access$202(Lcom/android/server/DynamicMemoryManagerService;Z)Z

    goto :goto_0

    :cond_2
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/server/DynamicMemoryManagerService$1;->this$0:Lcom/android/server/DynamicMemoryManagerService;

    #setter for: Lcom/android/server/DynamicMemoryManagerService;->SCREEN_ON:Z
    invoke-static {v1, v2}, Lcom/android/server/DynamicMemoryManagerService;->access$202(Lcom/android/server/DynamicMemoryManagerService;Z)Z

    iget-object v1, p0, Lcom/android/server/DynamicMemoryManagerService$1;->this$0:Lcom/android/server/DynamicMemoryManagerService;

    #calls: Lcom/android/server/DynamicMemoryManagerService;->manageAlarms()Z
    invoke-static {v1}, Lcom/android/server/DynamicMemoryManagerService;->access$000(Lcom/android/server/DynamicMemoryManagerService;)Z

    iget-object v1, p0, Lcom/android/server/DynamicMemoryManagerService$1;->this$0:Lcom/android/server/DynamicMemoryManagerService;

    #calls: Lcom/android/server/DynamicMemoryManagerService;->checkCurrentStatus()V
    invoke-static {v1}, Lcom/android/server/DynamicMemoryManagerService;->access$300(Lcom/android/server/DynamicMemoryManagerService;)V

    iget-object v1, p0, Lcom/android/server/DynamicMemoryManagerService$1;->this$0:Lcom/android/server/DynamicMemoryManagerService;

    #getter for: Lcom/android/server/DynamicMemoryManagerService;->DPD_START:Z
    invoke-static {v1}, Lcom/android/server/DynamicMemoryManagerService;->access$400(Lcom/android/server/DynamicMemoryManagerService;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/DynamicMemoryManagerService$1;->this$0:Lcom/android/server/DynamicMemoryManagerService;

    #calls: Lcom/android/server/DynamicMemoryManagerService;->enableUnstableMemory(Z)I
    invoke-static {v1, v2}, Lcom/android/server/DynamicMemoryManagerService;->access$100(Lcom/android/server/DynamicMemoryManagerService;Z)I

    goto :goto_0

    :cond_3
    const-string v1, "com.android.server.DMMService.action.DPD_START"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/server/DynamicMemoryManagerService$1;->this$0:Lcom/android/server/DynamicMemoryManagerService;

    #setter for: Lcom/android/server/DynamicMemoryManagerService;->DPD_START:Z
    invoke-static {v1, v3}, Lcom/android/server/DynamicMemoryManagerService;->access$402(Lcom/android/server/DynamicMemoryManagerService;Z)Z

    iget-object v1, p0, Lcom/android/server/DynamicMemoryManagerService$1;->this$0:Lcom/android/server/DynamicMemoryManagerService;

    #setter for: Lcom/android/server/DynamicMemoryManagerService;->START_ALARM_SET:Z
    invoke-static {v1, v2}, Lcom/android/server/DynamicMemoryManagerService;->access$502(Lcom/android/server/DynamicMemoryManagerService;Z)Z

    iget-object v1, p0, Lcom/android/server/DynamicMemoryManagerService$1;->this$0:Lcom/android/server/DynamicMemoryManagerService;

    #getter for: Lcom/android/server/DynamicMemoryManagerService;->SCREEN_ON:Z
    invoke-static {v1}, Lcom/android/server/DynamicMemoryManagerService;->access$200(Lcom/android/server/DynamicMemoryManagerService;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/DynamicMemoryManagerService$1;->this$0:Lcom/android/server/DynamicMemoryManagerService;

    #calls: Lcom/android/server/DynamicMemoryManagerService;->enableUnstableMemory(Z)I
    invoke-static {v1, v2}, Lcom/android/server/DynamicMemoryManagerService;->access$100(Lcom/android/server/DynamicMemoryManagerService;Z)I

    goto :goto_0

    :cond_4
    const-string v1, "com.android.server.DMMService.action.DPD_STOP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/DynamicMemoryManagerService$1;->this$0:Lcom/android/server/DynamicMemoryManagerService;

    #setter for: Lcom/android/server/DynamicMemoryManagerService;->DPD_START:Z
    invoke-static {v1, v2}, Lcom/android/server/DynamicMemoryManagerService;->access$402(Lcom/android/server/DynamicMemoryManagerService;Z)Z

    iget-object v1, p0, Lcom/android/server/DynamicMemoryManagerService$1;->this$0:Lcom/android/server/DynamicMemoryManagerService;

    #setter for: Lcom/android/server/DynamicMemoryManagerService;->STOP_ALARM_SET:Z
    invoke-static {v1, v2}, Lcom/android/server/DynamicMemoryManagerService;->access$602(Lcom/android/server/DynamicMemoryManagerService;Z)Z

    goto :goto_0
.end method