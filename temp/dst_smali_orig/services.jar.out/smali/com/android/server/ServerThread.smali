.class Lcom/android/server/ServerThread;
.super Ljava/lang/Thread;
.source "SystemServer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/ServerThread$AdbPortObserver;
    }
.end annotation


# static fields
.field private static final ENCRYPTED_STATE:Ljava/lang/String; = "1"

.field private static final ENCRYPTING_STATE:Ljava/lang/String; = "trigger_restart_min_framework"

.field private static final TAG:Ljava/lang/String; = "SystemServer"


# instance fields
.field mContentResolver:Landroid/content/ContentResolver;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method static final startSystemUi(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .local v0, intent:Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.systemui"

    const-string v3, "com.android.systemui.SystemUIService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v1, "SystemServer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Starting service: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method


# virtual methods
.method reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3
    .parameter "msg"
    .parameter "e"

    .prologue
    const-string v0, "SystemServer"

    const-string v1, "***********************************************"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "SystemServer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BOOT FAILURE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public run()V
    .locals 110

    .prologue
    const/16 v3, 0xbc2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    invoke-static {v3, v9, v10}, Landroid/util/EventLog;->writeEvent(IJ)I

    invoke-static {}, Landroid/os/Looper;->prepare()V

    const/4 v3, -0x2

    invoke-static {v3}, Landroid/os/Process;->setThreadPriority(I)V

    const/4 v3, 0x1

    invoke-static {v3}, Lcom/android/internal/os/BinderInternal;->disableBackgroundScheduling(Z)V

    const/4 v3, 0x0

    invoke-static {v3}, Landroid/os/Process;->setCanSelfBackground(Z)V

    const-string v3, "sys.shutdown.requested"

    const-string v9, ""

    invoke-static {v3, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v91

    .local v91, shutdownAction:Ljava/lang/String;
    if-eqz v91, :cond_0

    invoke-virtual/range {v91 .. v91}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    const/4 v3, 0x0

    move-object/from16 v0, v91

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v9, 0x31

    if-ne v3, v9, :cond_b

    const/16 v86, 0x1

    .local v86, reboot:Z
    :goto_0
    invoke-virtual/range {v91 .. v91}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v9, 0x1

    if-le v3, v9, :cond_c

    const/4 v3, 0x1

    invoke-virtual/range {v91 .. v91}, Ljava/lang/String;->length()I

    move-result v9

    move-object/from16 v0, v91

    invoke-virtual {v0, v3, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v85

    .local v85, reason:Ljava/lang/String;
    :goto_1
    move/from16 v0, v86

    move-object/from16 v1, v85

    invoke-static {v0, v1}, Lcom/android/internal/app/ShutdownThread;->rebootOrShutdown(ZLjava/lang/String;)V

    .end local v85           #reason:Ljava/lang/String;
    .end local v86           #reboot:Z
    :cond_0
    const-string v3, "ro.factorytest"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v63

    .local v63, factoryTestStr:Ljava/lang/String;
    const-string v3, ""

    move-object/from16 v0, v63

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    const/16 v62, 0x0

    .local v62, factoryTest:I
    :goto_2
    const/16 v69, 0x0

    .local v69, lights:Lcom/android/server/LightsService;
    const/16 v82, 0x0

    .local v82, power:Lcom/android/server/PowerManagerService;
    const/16 v57, 0x0

    .local v57, dmm:Lcom/android/server/DynamicMemoryManagerService;
    const/16 v41, 0x0

    .local v41, battery:Lcom/android/server/BatteryService;
    const/16 v38, 0x0

    .local v38, alarm:Lcom/android/server/AlarmManagerService;
    const/4 v13, 0x0

    .local v13, networkManagement:Lcom/android/server/NetworkManagementService;
    const/4 v12, 0x0

    .local v12, networkStats:Lcom/android/server/net/NetworkStatsService;
    const/16 v74, 0x0

    .local v74, networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    const/16 v48, 0x0

    .local v48, connectivity:Lcom/android/server/ConnectivityService;
    const/16 v107, 0x0

    .local v107, wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    const/16 v105, 0x0

    .local v105, wifi:Lcom/android/server/WifiService;
    const/16 v81, 0x0

    .local v81, pm:Landroid/content/pm/IPackageManager;
    const/4 v4, 0x0

    .local v4, context:Landroid/content/Context;
    const/16 v109, 0x0

    .local v109, wm:Lcom/android/server/wm/WindowManagerService;
    const/16 v42, 0x0

    .local v42, bluetooth:Landroid/server/BluetoothService;
    const/16 v44, 0x0

    .local v44, bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    const/16 v59, 0x0

    .local v59, dock:Lcom/android/server/DockObserver;
    const/16 v89, 0x0

    .local v89, rotateSwitch:Lcom/android/server/RotationSwitchObserver;
    const/16 v100, 0x0

    .local v100, usb:Lcom/android/server/usb/UsbService;
    const/16 v98, 0x0

    .local v98, uiMode:Lcom/android/server/UiModeManagerService;
    const/16 v87, 0x0

    .local v87, recognition:Lcom/android/server/RecognitionManagerService;
    const/16 v94, 0x0

    .local v94, throttle:Lcom/android/server/ThrottleService;
    const/16 v76, 0x0

    .local v76, networkTimeUpdater:Lcom/android/server/NetworkTimeUpdateService;
    const/16 v52, 0x0

    .local v52, cpuGovernorManager:Lcom/android/server/CpuGovernorService;
    :try_start_0
    const-string v3, "SystemServer"

    const-string v9, "Entropy Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "entropy"

    new-instance v9, Lcom/android/server/EntropyService;

    invoke-direct {v9}, Lcom/android/server/EntropyService;-><init>()V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    const-string v3, "SystemServer"

    const-string v9, "Power Manager"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v6, Lcom/android/server/PowerManagerService;

    invoke-direct {v6}, Lcom/android/server/PowerManagerService;-><init>()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_40

    .end local v82           #power:Lcom/android/server/PowerManagerService;
    .local v6, power:Lcom/android/server/PowerManagerService;
    :try_start_1
    const-string v3, "power"

    invoke-static {v3, v6}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    const-string v3, "SystemServer"

    const-string v9, "Activity Manager"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static/range {v62 .. v62}, Lcom/android/server/am/ActivityManagerService;->main(I)Landroid/content/Context;

    move-result-object v4

    const-string v3, "SystemServer"

    const-string v9, "Telephony Registry"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "telephony.registry"

    new-instance v9, Lcom/android/server/TelephonyRegistry;

    invoke-direct {v9, v4}, Lcom/android/server/TelephonyRegistry;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    invoke-static {v4}, Lcom/android/server/AttributeCache;->init(Landroid/content/Context;)V

    const-string v3, "SystemServer"

    const-string v9, "Package Manager"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "vold.decrypt"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v54

    .local v54, cryptState:Ljava/lang/String;
    const/16 v80, 0x0

    .local v80, onlyCore:Z
    const-string v3, "trigger_restart_min_framework"

    move-object/from16 v0, v54

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    const-string v3, "SystemServer"

    const-string v9, "Detected encryption in progress - only parsing core apps"

    invoke-static {v3, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v80, 0x1

    :cond_1
    :goto_3
    if-eqz v62, :cond_f

    const/4 v3, 0x1

    :goto_4
    move/from16 v0, v80

    invoke-static {v4, v3, v0}, Lcom/android/server/pm/PackageManagerService;->main(Landroid/content/Context;ZZ)Landroid/content/pm/IPackageManager;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v81

    const/16 v65, 0x0

    .local v65, firstBoot:Z
    :try_start_2
    invoke-interface/range {v81 .. v81}, Landroid/content/pm/IPackageManager;->isFirstBoot()Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2d
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    move-result v65

    :goto_5
    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->setSystemProcess()V

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/server/ServerThread;->mContentResolver:Landroid/content/ContentResolver;
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_1

    :try_start_4
    const-string v3, "SystemServer"

    const-string v9, "Account Manager"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "account"

    new-instance v9, Landroid/accounts/AccountManagerService;

    invoke-direct {v9, v4}, Landroid/accounts/AccountManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_1

    :goto_6
    :try_start_5
    const-string v3, "SystemServer"

    const-string v9, "Content Manager"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x1

    move/from16 v0, v62

    if-ne v0, v3, :cond_10

    const/4 v3, 0x1

    :goto_7
    invoke-static {v4, v3}, Landroid/content/ContentService;->main(Landroid/content/Context;Z)Landroid/content/IContentService;

    const-string v3, "SystemServer"

    const-string v9, "System Content Providers"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->installSystemProviders()V

    const-string v3, "SystemServer"

    const-string v9, "Lights Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v70, Lcom/android/server/LightsService;

    move-object/from16 v0, v70

    invoke-direct {v0, v4}, Lcom/android/server/LightsService;-><init>(Landroid/content/Context;)V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_1

    .end local v69           #lights:Lcom/android/server/LightsService;
    .local v70, lights:Lcom/android/server/LightsService;
    :try_start_6
    const-string v3, "SystemServer"

    const-string v9, "Battery Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v5, Lcom/android/server/BatteryService;

    move-object/from16 v0, v70

    invoke-direct {v5, v4, v0}, Lcom/android/server/BatteryService;-><init>(Landroid/content/Context;Lcom/android/server/LightsService;)V
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_41

    .end local v41           #battery:Lcom/android/server/BatteryService;
    .local v5, battery:Lcom/android/server/BatteryService;
    :try_start_7
    const-string v3, "battery"

    invoke-static {v3, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    const-string v3, "SystemServer"

    const-string v9, "Vibrator Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "vibrator"

    new-instance v9, Lcom/android/server/VibratorService;

    invoke-direct {v9, v4}, Lcom/android/server/VibratorService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v3

    move-object/from16 v0, v70

    invoke-virtual {v6, v4, v0, v3, v5}, Lcom/android/server/PowerManagerService;->init(Landroid/content/Context;Lcom/android/server/LightsService;Landroid/app/IActivityManager;Lcom/android/server/BatteryService;)V

    const-string v3, "SystemServer"

    const-string v9, "Alarm Manager"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v7, Lcom/android/server/AlarmManagerService;

    invoke-direct {v7, v4}, Lcom/android/server/AlarmManagerService;-><init>(Landroid/content/Context;)V
    :try_end_7
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_42

    .end local v38           #alarm:Lcom/android/server/AlarmManagerService;
    .local v7, alarm:Lcom/android/server/AlarmManagerService;
    :try_start_8
    const-string v3, "alarm"

    invoke-static {v3, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    const-string v3, "SystemServer"

    const-string v9, "Init Watchdog"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v3

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v8

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/Watchdog;->init(Landroid/content/Context;Lcom/android/server/BatteryService;Lcom/android/server/PowerManagerService;Lcom/android/server/AlarmManagerService;Lcom/android/server/am/ActivityManagerService;)V

    const-string v3, "SystemServer"

    const-string v9, "Window Manager"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x1

    move/from16 v0, v62

    if-eq v0, v3, :cond_11

    const/4 v3, 0x1

    move v9, v3

    :goto_8
    if-nez v65, :cond_12

    const/4 v3, 0x1

    :goto_9
    invoke-static {v4, v6, v9, v3}, Lcom/android/server/wm/WindowManagerService;->main(Landroid/content/Context;Lcom/android/server/PowerManagerService;ZZ)Lcom/android/server/wm/WindowManagerService;

    move-result-object v109

    const-string v3, "window"

    move-object/from16 v0, v109

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v3

    move-object/from16 v0, v109

    invoke-virtual {v3, v0}, Lcom/android/server/am/ActivityManagerService;->setWindowManager(Lcom/android/server/wm/WindowManagerService;)V

    const-string v3, "ro.kernel.qemu"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v9, "1"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    const-string v3, "SystemServer"

    const-string v9, "No Bluetooh Service (emulator)"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_a
    sget-boolean v3, Landroid/os/SystemProperties;->QCOM_HARDWARE:Z

    if-eqz v3, :cond_2

    const-string v3, "SystemServer"

    const-string v9, "DynamicMemoryManager Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v58, Lcom/android/server/DynamicMemoryManagerService;

    move-object/from16 v0, v58

    invoke-direct {v0, v4}, Lcom/android/server/DynamicMemoryManagerService;-><init>(Landroid/content/Context;)V

    .end local v57           #dmm:Lcom/android/server/DynamicMemoryManagerService;
    .local v58, dmm:Lcom/android/server/DynamicMemoryManagerService;
    move-object/from16 v57, v58

    .end local v58           #dmm:Lcom/android/server/DynamicMemoryManagerService;
    .restart local v57       #dmm:Lcom/android/server/DynamicMemoryManagerService;
    :cond_2
    new-instance v53, Lcom/android/server/CpuGovernorService;

    move-object/from16 v0, v53

    invoke-direct {v0, v4}, Lcom/android/server/CpuGovernorService;-><init>(Landroid/content/Context;)V
    :try_end_8
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_2

    .end local v52           #cpuGovernorManager:Lcom/android/server/CpuGovernorService;
    .local v53, cpuGovernorManager:Lcom/android/server/CpuGovernorService;
    if-nez v53, :cond_3

    :try_start_9
    const-string v3, "SystemServer"

    const-string v9, "CpuGovernorService failed to start"

    invoke-static {v3, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_45

    :cond_3
    move-object/from16 v52, v53

    .end local v53           #cpuGovernorManager:Lcom/android/server/CpuGovernorService;
    .restart local v52       #cpuGovernorManager:Lcom/android/server/CpuGovernorService;
    move-object/from16 v69, v70

    .end local v54           #cryptState:Ljava/lang/String;
    .end local v65           #firstBoot:Z
    .end local v70           #lights:Lcom/android/server/LightsService;
    .end local v80           #onlyCore:Z
    .restart local v69       #lights:Lcom/android/server/LightsService;
    :goto_b
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v9, 0x111003d

    invoke-virtual {v3, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v66

    .local v66, hasRotationLock:Z
    const/16 v55, 0x0

    .local v55, devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    const/16 v92, 0x0

    .local v92, statusBar:Lcom/android/server/StatusBarManagerService;
    const/16 v67, 0x0

    .local v67, imm:Lcom/android/server/InputMethodManagerService;
    const/16 v39, 0x0

    .local v39, appWidget:Lcom/android/server/AppWidgetService;
    const/16 v83, 0x0

    .local v83, profile:Lcom/android/server/ProfileManagerService;
    const/16 v78, 0x0

    .local v78, notification:Lcom/android/server/NotificationManagerService;
    const/16 v103, 0x0

    .local v103, wallpaper:Lcom/android/server/WallpaperManagerService;
    const/16 v71, 0x0

    .local v71, location:Lcom/android/server/LocationManagerService;
    const/16 v50, 0x0

    .local v50, countryDetector:Lcom/android/server/CountryDetectorService;
    const/16 v96, 0x0

    .local v96, tsms:Lcom/android/server/TextServicesManagerService;
    const/4 v3, 0x1

    move/from16 v0, v62

    if-eq v0, v3, :cond_4

    :try_start_a
    const-string v3, "SystemServer"

    const-string v9, "Input Method Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v68, Lcom/android/server/InputMethodManagerService;

    move-object/from16 v0, v68

    invoke-direct {v0, v4}, Lcom/android/server/InputMethodManagerService;-><init>(Landroid/content/Context;)V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_3

    .end local v67           #imm:Lcom/android/server/InputMethodManagerService;
    .local v68, imm:Lcom/android/server/InputMethodManagerService;
    :try_start_b
    const-string v3, "input_method"

    move-object/from16 v0, v68

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_3f

    move-object/from16 v67, v68

    .end local v68           #imm:Lcom/android/server/InputMethodManagerService;
    .restart local v67       #imm:Lcom/android/server/InputMethodManagerService;
    :goto_c
    :try_start_c
    const-string v3, "SystemServer"

    const-string v9, "Accessibility Manager"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "accessibility"

    new-instance v9, Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-direct {v9, v4}, Lcom/android/server/accessibility/AccessibilityManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_4

    :cond_4
    :goto_d
    :try_start_d
    invoke-virtual/range {v109 .. v109}, Lcom/android/server/wm/WindowManagerService;->displayReady()V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_5

    :goto_e
    :try_start_e
    invoke-interface/range {v81 .. v81}, Landroid/content/pm/IPackageManager;->performBootDexOpt()V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_6

    :goto_f
    :try_start_f
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v3

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x10403d9

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    const/4 v10, 0x0

    invoke-interface {v3, v9, v10}, Landroid/app/IActivityManager;->showBootMessage(Ljava/lang/CharSequence;Z)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_f} :catch_3e

    :goto_10
    const/4 v3, 0x1

    move/from16 v0, v62

    if-eq v0, v3, :cond_17

    :try_start_10
    const-string v3, "SystemServer"

    const-string v9, "Device Policy"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v56, Lcom/android/server/DevicePolicyManagerService;

    move-object/from16 v0, v56

    invoke-direct {v0, v4}, Lcom/android/server/DevicePolicyManagerService;-><init>(Landroid/content/Context;)V
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_10} :catch_7

    .end local v55           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .local v56, devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    :try_start_11
    const-string v3, "device_policy"

    move-object/from16 v0, v56

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_11} :catch_3d

    move-object/from16 v55, v56

    .end local v56           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .restart local v55       #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    :goto_11
    :try_start_12
    const-string v3, "SystemServer"

    const-string v9, "Status Bar"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v93, Lcom/android/server/StatusBarManagerService;

    move-object/from16 v0, v93

    move-object/from16 v1, v109

    invoke-direct {v0, v4, v1}, Lcom/android/server/StatusBarManagerService;-><init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_12} :catch_8

    .end local v92           #statusBar:Lcom/android/server/StatusBarManagerService;
    .local v93, statusBar:Lcom/android/server/StatusBarManagerService;
    :try_start_13
    const-string v3, "statusbar"

    move-object/from16 v0, v93

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_13} :catch_3c

    move-object/from16 v92, v93

    .end local v93           #statusBar:Lcom/android/server/StatusBarManagerService;
    .restart local v92       #statusBar:Lcom/android/server/StatusBarManagerService;
    :goto_12
    :try_start_14
    const-string v3, "SystemServer"

    const-string v9, "Clipboard Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "clipboard"

    new-instance v9, Lcom/android/server/ClipboardService;

    invoke-direct {v9, v4}, Lcom/android/server/ClipboardService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_14} :catch_9

    :goto_13
    :try_start_15
    const-string v3, "SystemServer"

    const-string v9, "NetworkManagement Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v4}, Lcom/android/server/NetworkManagementService;->create(Landroid/content/Context;)Lcom/android/server/NetworkManagementService;

    move-result-object v13

    const-string v3, "network_management"

    invoke-static {v3, v13}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_15} :catch_a

    :goto_14
    :try_start_16
    const-string v3, "SystemServer"

    const-string v9, "Text Service Manager Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v97, Lcom/android/server/TextServicesManagerService;

    move-object/from16 v0, v97

    invoke-direct {v0, v4}, Lcom/android/server/TextServicesManagerService;-><init>(Landroid/content/Context;)V
    :try_end_16
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_16} :catch_b

    .end local v96           #tsms:Lcom/android/server/TextServicesManagerService;
    .local v97, tsms:Lcom/android/server/TextServicesManagerService;
    :try_start_17
    const-string v3, "textservices"

    move-object/from16 v0, v97

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_17
    .catch Ljava/lang/Throwable; {:try_start_17 .. :try_end_17} :catch_3b

    move-object/from16 v96, v97

    .end local v97           #tsms:Lcom/android/server/TextServicesManagerService;
    .restart local v96       #tsms:Lcom/android/server/TextServicesManagerService;
    :goto_15
    :try_start_18
    const-string v3, "SystemServer"

    const-string v9, "NetworkStats Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v75, Lcom/android/server/net/NetworkStatsService;

    move-object/from16 v0, v75

    invoke-direct {v0, v4, v13, v7}, Lcom/android/server/net/NetworkStatsService;-><init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/app/IAlarmManager;)V
    :try_end_18
    .catch Ljava/lang/Throwable; {:try_start_18 .. :try_end_18} :catch_c

    .end local v12           #networkStats:Lcom/android/server/net/NetworkStatsService;
    .local v75, networkStats:Lcom/android/server/net/NetworkStatsService;
    :try_start_19
    const-string v3, "netstats"

    move-object/from16 v0, v75

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_19
    .catch Ljava/lang/Throwable; {:try_start_19 .. :try_end_19} :catch_3a

    move-object/from16 v12, v75

    .end local v75           #networkStats:Lcom/android/server/net/NetworkStatsService;
    .restart local v12       #networkStats:Lcom/android/server/net/NetworkStatsService;
    :goto_16
    :try_start_1a
    const-string v3, "SystemServer"

    const-string v9, "NetworkPolicy Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v8, Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v10

    move-object v9, v4

    move-object v11, v6

    invoke-direct/range {v8 .. v13}, Lcom/android/server/net/NetworkPolicyManagerService;-><init>(Landroid/content/Context;Landroid/app/IActivityManager;Landroid/os/IPowerManager;Landroid/net/INetworkStatsService;Landroid/os/INetworkManagementService;)V
    :try_end_1a
    .catch Ljava/lang/Throwable; {:try_start_1a .. :try_end_1a} :catch_d

    .end local v74           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .local v8, networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    :try_start_1b
    const-string v3, "netpolicy"

    invoke-static {v3, v8}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1b
    .catch Ljava/lang/Throwable; {:try_start_1b .. :try_end_1b} :catch_39

    :goto_17
    :try_start_1c
    const-string v3, "SystemServer"

    const-string v9, "Wi-Fi P2pService"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v108, Landroid/net/wifi/p2p/WifiP2pService;

    move-object/from16 v0, v108

    invoke-direct {v0, v4}, Landroid/net/wifi/p2p/WifiP2pService;-><init>(Landroid/content/Context;)V
    :try_end_1c
    .catch Ljava/lang/Throwable; {:try_start_1c .. :try_end_1c} :catch_e

    .end local v107           #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    .local v108, wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    :try_start_1d
    const-string v3, "wifip2p"

    move-object/from16 v0, v108

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1d
    .catch Ljava/lang/Throwable; {:try_start_1d .. :try_end_1d} :catch_38

    move-object/from16 v107, v108

    .end local v108           #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    .restart local v107       #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    :goto_18
    :try_start_1e
    const-string v3, "SystemServer"

    const-string v9, "Wi-Fi Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v106, Lcom/android/server/WifiService;

    move-object/from16 v0, v106

    invoke-direct {v0, v4}, Lcom/android/server/WifiService;-><init>(Landroid/content/Context;)V
    :try_end_1e
    .catch Ljava/lang/Throwable; {:try_start_1e .. :try_end_1e} :catch_f

    .end local v105           #wifi:Lcom/android/server/WifiService;
    .local v106, wifi:Lcom/android/server/WifiService;
    :try_start_1f
    const-string v3, "wifi"

    move-object/from16 v0, v106

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1f
    .catch Ljava/lang/Throwable; {:try_start_1f .. :try_end_1f} :catch_37

    move-object/from16 v105, v106

    .end local v106           #wifi:Lcom/android/server/WifiService;
    .restart local v105       #wifi:Lcom/android/server/WifiService;
    :goto_19
    :try_start_20
    const-string v3, "SystemServer"

    const-string v9, "Connectivity Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v49, Lcom/android/server/ConnectivityService;

    move-object/from16 v0, v49

    invoke-direct {v0, v4, v13, v12, v8}, Lcom/android/server/ConnectivityService;-><init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/net/INetworkStatsService;Landroid/net/INetworkPolicyManager;)V
    :try_end_20
    .catch Ljava/lang/Throwable; {:try_start_20 .. :try_end_20} :catch_10

    .end local v48           #connectivity:Lcom/android/server/ConnectivityService;
    .local v49, connectivity:Lcom/android/server/ConnectivityService;
    :try_start_21
    const-string v3, "connectivity"

    move-object/from16 v0, v49

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    move-object/from16 v0, v49

    invoke-virtual {v12, v0}, Lcom/android/server/net/NetworkStatsService;->bindConnectivityManager(Landroid/net/IConnectivityManager;)V

    move-object/from16 v0, v49

    invoke-virtual {v8, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->bindConnectivityManager(Landroid/net/IConnectivityManager;)V

    invoke-virtual/range {v105 .. v105}, Lcom/android/server/WifiService;->checkAndStartWifi()V

    invoke-virtual/range {v107 .. v107}, Landroid/net/wifi/p2p/WifiP2pService;->connectivityServiceReady()V
    :try_end_21
    .catch Ljava/lang/Throwable; {:try_start_21 .. :try_end_21} :catch_36

    move-object/from16 v48, v49

    .end local v49           #connectivity:Lcom/android/server/ConnectivityService;
    .restart local v48       #connectivity:Lcom/android/server/ConnectivityService;
    :goto_1a
    :try_start_22
    const-string v3, "SystemServer"

    const-string v9, "Throttle Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v95, Lcom/android/server/ThrottleService;

    move-object/from16 v0, v95

    invoke-direct {v0, v4}, Lcom/android/server/ThrottleService;-><init>(Landroid/content/Context;)V
    :try_end_22
    .catch Ljava/lang/Throwable; {:try_start_22 .. :try_end_22} :catch_11

    .end local v94           #throttle:Lcom/android/server/ThrottleService;
    .local v95, throttle:Lcom/android/server/ThrottleService;
    :try_start_23
    const-string v3, "throttle"

    move-object/from16 v0, v95

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_23
    .catch Ljava/lang/Throwable; {:try_start_23 .. :try_end_23} :catch_35

    move-object/from16 v94, v95

    .end local v95           #throttle:Lcom/android/server/ThrottleService;
    .restart local v94       #throttle:Lcom/android/server/ThrottleService;
    :goto_1b
    :try_start_24
    const-string v3, "SystemServer"

    const-string v9, "Mount Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "mount"

    new-instance v9, Lcom/android/server/MountService;

    invoke-direct {v9, v4}, Lcom/android/server/MountService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_24
    .catch Ljava/lang/Throwable; {:try_start_24 .. :try_end_24} :catch_12

    :goto_1c
    :try_start_25
    const-string v3, "SystemServer"

    const-string v9, "Profile Manager"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v84, Lcom/android/server/ProfileManagerService;

    move-object/from16 v0, v84

    invoke-direct {v0, v4}, Lcom/android/server/ProfileManagerService;-><init>(Landroid/content/Context;)V
    :try_end_25
    .catch Ljava/lang/Throwable; {:try_start_25 .. :try_end_25} :catch_13

    .end local v83           #profile:Lcom/android/server/ProfileManagerService;
    .local v84, profile:Lcom/android/server/ProfileManagerService;
    :try_start_26
    const-string v3, "profile"

    move-object/from16 v0, v84

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_26
    .catch Ljava/lang/Throwable; {:try_start_26 .. :try_end_26} :catch_34

    move-object/from16 v83, v84

    .end local v84           #profile:Lcom/android/server/ProfileManagerService;
    .restart local v83       #profile:Lcom/android/server/ProfileManagerService;
    :goto_1d
    :try_start_27
    const-string v3, "SystemServer"

    const-string v9, "Notification Manager"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v79, Lcom/android/server/NotificationManagerService;

    move-object/from16 v0, v79

    move-object/from16 v1, v92

    move-object/from16 v2, v69

    invoke-direct {v0, v4, v1, v2}, Lcom/android/server/NotificationManagerService;-><init>(Landroid/content/Context;Lcom/android/server/StatusBarManagerService;Lcom/android/server/LightsService;)V
    :try_end_27
    .catch Ljava/lang/Throwable; {:try_start_27 .. :try_end_27} :catch_14

    .end local v78           #notification:Lcom/android/server/NotificationManagerService;
    .local v79, notification:Lcom/android/server/NotificationManagerService;
    :try_start_28
    const-string v3, "notification"

    move-object/from16 v0, v79

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    move-object/from16 v0, v79

    invoke-virtual {v8, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->bindNotificationManager(Landroid/app/INotificationManager;)V
    :try_end_28
    .catch Ljava/lang/Throwable; {:try_start_28 .. :try_end_28} :catch_33

    move-object/from16 v78, v79

    .end local v79           #notification:Lcom/android/server/NotificationManagerService;
    .restart local v78       #notification:Lcom/android/server/NotificationManagerService;
    :goto_1e
    sget-boolean v3, Landroid/os/SystemProperties;->QCOM_HDMI_OUT:Z

    if-eqz v3, :cond_5

    :try_start_29
    const-string v3, "SystemServer"

    const-string v9, "HDMI Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "hdmi"

    new-instance v9, Lcom/android/server/HDMIService;

    invoke-direct {v9, v4}, Lcom/android/server/HDMIService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_29
    .catch Ljava/lang/Throwable; {:try_start_29 .. :try_end_29} :catch_15

    :cond_5
    :goto_1f
    :try_start_2a
    const-string v3, "SystemServer"

    const-string v9, "Device Storage Monitor"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "devicestoragemonitor"

    new-instance v9, Lcom/android/server/DeviceStorageMonitorService;

    invoke-direct {v9, v4}, Lcom/android/server/DeviceStorageMonitorService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2a
    .catch Ljava/lang/Throwable; {:try_start_2a .. :try_end_2a} :catch_16

    :goto_20
    :try_start_2b
    const-string v3, "SystemServer"

    const-string v9, "Location Manager"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v72, Lcom/android/server/LocationManagerService;

    move-object/from16 v0, v72

    invoke-direct {v0, v4}, Lcom/android/server/LocationManagerService;-><init>(Landroid/content/Context;)V
    :try_end_2b
    .catch Ljava/lang/Throwable; {:try_start_2b .. :try_end_2b} :catch_17

    .end local v71           #location:Lcom/android/server/LocationManagerService;
    .local v72, location:Lcom/android/server/LocationManagerService;
    :try_start_2c
    const-string v3, "location"

    move-object/from16 v0, v72

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2c
    .catch Ljava/lang/Throwable; {:try_start_2c .. :try_end_2c} :catch_32

    move-object/from16 v71, v72

    .end local v72           #location:Lcom/android/server/LocationManagerService;
    .restart local v71       #location:Lcom/android/server/LocationManagerService;
    :goto_21
    :try_start_2d
    const-string v3, "SystemServer"

    const-string v9, "Country Detector"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v51, Lcom/android/server/CountryDetectorService;

    move-object/from16 v0, v51

    invoke-direct {v0, v4}, Lcom/android/server/CountryDetectorService;-><init>(Landroid/content/Context;)V
    :try_end_2d
    .catch Ljava/lang/Throwable; {:try_start_2d .. :try_end_2d} :catch_18

    .end local v50           #countryDetector:Lcom/android/server/CountryDetectorService;
    .local v51, countryDetector:Lcom/android/server/CountryDetectorService;
    :try_start_2e
    const-string v3, "country_detector"

    move-object/from16 v0, v51

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2e
    .catch Ljava/lang/Throwable; {:try_start_2e .. :try_end_2e} :catch_31

    move-object/from16 v50, v51

    .end local v51           #countryDetector:Lcom/android/server/CountryDetectorService;
    .restart local v50       #countryDetector:Lcom/android/server/CountryDetectorService;
    :goto_22
    :try_start_2f
    const-string v3, "SystemServer"

    const-string v9, "Search Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "search"

    new-instance v9, Landroid/server/search/SearchManagerService;

    invoke-direct {v9, v4}, Landroid/server/search/SearchManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2f
    .catch Ljava/lang/Throwable; {:try_start_2f .. :try_end_2f} :catch_19

    :goto_23
    :try_start_30
    const-string v3, "SystemServer"

    const-string v9, "DropBox Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "dropbox"

    new-instance v9, Lcom/android/server/DropBoxManagerService;

    new-instance v10, Ljava/io/File;

    const-string v11, "/data/system/dropbox"

    invoke-direct {v10, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v9, v4, v10}, Lcom/android/server/DropBoxManagerService;-><init>(Landroid/content/Context;Ljava/io/File;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_30
    .catch Ljava/lang/Throwable; {:try_start_30 .. :try_end_30} :catch_1a

    :goto_24
    :try_start_31
    const-string v3, "SystemServer"

    const-string v9, "Wallpaper Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v104, Lcom/android/server/WallpaperManagerService;

    move-object/from16 v0, v104

    invoke-direct {v0, v4}, Lcom/android/server/WallpaperManagerService;-><init>(Landroid/content/Context;)V
    :try_end_31
    .catch Ljava/lang/Throwable; {:try_start_31 .. :try_end_31} :catch_1b

    .end local v103           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .local v104, wallpaper:Lcom/android/server/WallpaperManagerService;
    :try_start_32
    const-string v3, "wallpaper"

    move-object/from16 v0, v104

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_32
    .catch Ljava/lang/Throwable; {:try_start_32 .. :try_end_32} :catch_30

    move-object/from16 v103, v104

    .end local v104           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .restart local v103       #wallpaper:Lcom/android/server/WallpaperManagerService;
    :goto_25
    :try_start_33
    const-string v3, "SystemServer"

    const-string v9, "Audio Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "audio"

    new-instance v9, Landroid/media/AudioService;

    invoke-direct {v9, v4}, Landroid/media/AudioService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_33
    .catch Ljava/lang/Throwable; {:try_start_33 .. :try_end_33} :catch_1c

    :goto_26
    :try_start_34
    const-string v3, "SystemServer"

    const-string v9, "Dock Observer"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v60, Lcom/android/server/DockObserver;

    move-object/from16 v0, v60

    invoke-direct {v0, v4, v6}, Lcom/android/server/DockObserver;-><init>(Landroid/content/Context;Lcom/android/server/PowerManagerService;)V
    :try_end_34
    .catch Ljava/lang/Throwable; {:try_start_34 .. :try_end_34} :catch_1d

    .end local v59           #dock:Lcom/android/server/DockObserver;
    .local v60, dock:Lcom/android/server/DockObserver;
    move-object/from16 v59, v60

    .end local v60           #dock:Lcom/android/server/DockObserver;
    .restart local v59       #dock:Lcom/android/server/DockObserver;
    :goto_27
    if-eqz v66, :cond_6

    :try_start_35
    const-string v3, "SystemServer"

    const-string v9, "Rotation Switch Observer"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v90, Lcom/android/server/RotationSwitchObserver;

    move-object/from16 v0, v90

    invoke-direct {v0, v4}, Lcom/android/server/RotationSwitchObserver;-><init>(Landroid/content/Context;)V
    :try_end_35
    .catch Ljava/lang/Throwable; {:try_start_35 .. :try_end_35} :catch_1e

    .end local v89           #rotateSwitch:Lcom/android/server/RotationSwitchObserver;
    .local v90, rotateSwitch:Lcom/android/server/RotationSwitchObserver;
    move-object/from16 v89, v90

    .end local v90           #rotateSwitch:Lcom/android/server/RotationSwitchObserver;
    .restart local v89       #rotateSwitch:Lcom/android/server/RotationSwitchObserver;
    :cond_6
    :goto_28
    :try_start_36
    const-string v3, "SystemServer"

    const-string v9, "Wired Accessory Observer"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Lcom/android/server/WiredAccessoryObserver;

    invoke-direct {v3, v4}, Lcom/android/server/WiredAccessoryObserver;-><init>(Landroid/content/Context;)V
    :try_end_36
    .catch Ljava/lang/Throwable; {:try_start_36 .. :try_end_36} :catch_1f

    :goto_29
    :try_start_37
    const-string v3, "SystemServer"

    const-string v9, "USB Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v101, Lcom/android/server/usb/UsbService;

    move-object/from16 v0, v101

    invoke-direct {v0, v4}, Lcom/android/server/usb/UsbService;-><init>(Landroid/content/Context;)V
    :try_end_37
    .catch Ljava/lang/Throwable; {:try_start_37 .. :try_end_37} :catch_20

    .end local v100           #usb:Lcom/android/server/usb/UsbService;
    .local v101, usb:Lcom/android/server/usb/UsbService;
    :try_start_38
    const-string v3, "usb"

    move-object/from16 v0, v101

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_38
    .catch Ljava/lang/Throwable; {:try_start_38 .. :try_end_38} :catch_2f

    move-object/from16 v100, v101

    .end local v101           #usb:Lcom/android/server/usb/UsbService;
    .restart local v100       #usb:Lcom/android/server/usb/UsbService;
    :goto_2a
    :try_start_39
    const-string v3, "SystemServer"

    const-string v9, "UI Mode Manager Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v99, Lcom/android/server/UiModeManagerService;

    move-object/from16 v0, v99

    invoke-direct {v0, v4}, Lcom/android/server/UiModeManagerService;-><init>(Landroid/content/Context;)V
    :try_end_39
    .catch Ljava/lang/Throwable; {:try_start_39 .. :try_end_39} :catch_21

    .end local v98           #uiMode:Lcom/android/server/UiModeManagerService;
    .local v99, uiMode:Lcom/android/server/UiModeManagerService;
    move-object/from16 v98, v99

    .end local v99           #uiMode:Lcom/android/server/UiModeManagerService;
    .restart local v98       #uiMode:Lcom/android/server/UiModeManagerService;
    :goto_2b
    :try_start_3a
    const-string v3, "SystemServer"

    const-string v9, "Backup Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "backup"

    new-instance v9, Lcom/android/server/BackupManagerService;

    invoke-direct {v9, v4}, Lcom/android/server/BackupManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_3a
    .catch Ljava/lang/Throwable; {:try_start_3a .. :try_end_3a} :catch_22

    :goto_2c
    :try_start_3b
    const-string v3, "SystemServer"

    const-string v9, "AppWidget Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v40, Lcom/android/server/AppWidgetService;

    move-object/from16 v0, v40

    invoke-direct {v0, v4}, Lcom/android/server/AppWidgetService;-><init>(Landroid/content/Context;)V
    :try_end_3b
    .catch Ljava/lang/Throwable; {:try_start_3b .. :try_end_3b} :catch_23

    .end local v39           #appWidget:Lcom/android/server/AppWidgetService;
    .local v40, appWidget:Lcom/android/server/AppWidgetService;
    :try_start_3c
    const-string v3, "appwidget"

    move-object/from16 v0, v40

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_3c
    .catch Ljava/lang/Throwable; {:try_start_3c .. :try_end_3c} :catch_2e

    move-object/from16 v39, v40

    .end local v40           #appWidget:Lcom/android/server/AppWidgetService;
    .restart local v39       #appWidget:Lcom/android/server/AppWidgetService;
    :goto_2d
    :try_start_3d
    const-string v3, "SystemServer"

    const-string v9, "Recognition Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v88, Lcom/android/server/RecognitionManagerService;

    move-object/from16 v0, v88

    invoke-direct {v0, v4}, Lcom/android/server/RecognitionManagerService;-><init>(Landroid/content/Context;)V
    :try_end_3d
    .catch Ljava/lang/Throwable; {:try_start_3d .. :try_end_3d} :catch_24

    .end local v87           #recognition:Lcom/android/server/RecognitionManagerService;
    .local v88, recognition:Lcom/android/server/RecognitionManagerService;
    move-object/from16 v87, v88

    .end local v88           #recognition:Lcom/android/server/RecognitionManagerService;
    .restart local v87       #recognition:Lcom/android/server/RecognitionManagerService;
    :goto_2e
    :try_start_3e
    const-string v3, "SystemServer"

    const-string v9, "DiskStats Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "diskstats"

    new-instance v9, Lcom/android/server/DiskStatsService;

    invoke-direct {v9, v4}, Lcom/android/server/DiskStatsService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_3e
    .catch Ljava/lang/Throwable; {:try_start_3e .. :try_end_3e} :catch_25

    :goto_2f
    :try_start_3f
    const-string v3, "SystemServer"

    const-string v9, "SamplingProfiler Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "samplingprofiler"

    new-instance v9, Lcom/android/server/SamplingProfilerService;

    invoke-direct {v9, v4}, Lcom/android/server/SamplingProfilerService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_3f
    .catch Ljava/lang/Throwable; {:try_start_3f .. :try_end_3f} :catch_26

    :goto_30
    :try_start_40
    const-string v3, "SystemServer"

    const-string v9, "NetworkTimeUpdateService"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v77, Lcom/android/server/NetworkTimeUpdateService;

    move-object/from16 v0, v77

    invoke-direct {v0, v4}, Lcom/android/server/NetworkTimeUpdateService;-><init>(Landroid/content/Context;)V
    :try_end_40
    .catch Ljava/lang/Throwable; {:try_start_40 .. :try_end_40} :catch_27

    .end local v76           #networkTimeUpdater:Lcom/android/server/NetworkTimeUpdateService;
    .local v77, networkTimeUpdater:Lcom/android/server/NetworkTimeUpdateService;
    move-object/from16 v76, v77

    .end local v77           #networkTimeUpdater:Lcom/android/server/NetworkTimeUpdateService;
    .restart local v76       #networkTimeUpdater:Lcom/android/server/NetworkTimeUpdateService;
    :goto_31
    :try_start_41
    const-string v3, "SystemServer"

    const-string v9, "AssetRedirectionManager Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "assetredirection"

    new-instance v9, Lcom/android/server/AssetRedirectionManagerService;

    invoke-direct {v9, v4}, Lcom/android/server/AssetRedirectionManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_41
    .catch Ljava/lang/Throwable; {:try_start_41 .. :try_end_41} :catch_28

    :goto_32
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/ServerThread;->mContentResolver:Landroid/content/ContentResolver;

    const-string v9, "adb_port"

    const-string v10, "service.adb.tcp.port"

    const-string v11, "-1"

    invoke-static {v10, v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    invoke-static {v3, v9, v10}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/ServerThread;->mContentResolver:Landroid/content/ContentResolver;

    const-string v9, "adb_port"

    invoke-static {v9}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    const/4 v10, 0x0

    new-instance v11, Lcom/android/server/ServerThread$AdbPortObserver;

    move-object/from16 v0, p0

    invoke-direct {v11, v0}, Lcom/android/server/ServerThread$AdbPortObserver;-><init>(Lcom/android/server/ServerThread;)V

    invoke-virtual {v3, v9, v10, v11}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-virtual/range {v109 .. v109}, Lcom/android/server/wm/WindowManagerService;->detectSafeMode()Z

    move-result v28

    .local v28, safeMode:Z
    if-eqz v28, :cond_16

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/am/ActivityManagerService;->enterSafeMode()V

    const/4 v3, 0x1

    sput-boolean v3, Ldalvik/system/Zygote;->systemInSafeMode:Z

    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v3

    invoke-virtual {v3}, Ldalvik/system/VMRuntime;->disableJitCompilation()V

    :goto_33
    if-eqz v55, :cond_7

    :try_start_42
    invoke-virtual/range {v55 .. v55}, Lcom/android/server/DevicePolicyManagerService;->systemReady()V
    :try_end_42
    .catch Ljava/lang/Throwable; {:try_start_42 .. :try_end_42} :catch_29

    :cond_7
    :goto_34
    if-eqz v78, :cond_8

    :try_start_43
    invoke-virtual/range {v78 .. v78}, Lcom/android/server/NotificationManagerService;->systemReady()V
    :try_end_43
    .catch Ljava/lang/Throwable; {:try_start_43 .. :try_end_43} :catch_2a

    :cond_8
    :goto_35
    :try_start_44
    invoke-virtual/range {v109 .. v109}, Lcom/android/server/wm/WindowManagerService;->systemReady()V
    :try_end_44
    .catch Ljava/lang/Throwable; {:try_start_44 .. :try_end_44} :catch_2b

    :goto_36
    if-eqz v28, :cond_9

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/am/ActivityManagerService;->showSafeModeOverlay()V

    :cond_9
    invoke-virtual/range {v109 .. v109}, Lcom/android/server/wm/WindowManagerService;->computeNewConfiguration()Landroid/content/res/Configuration;

    move-result-object v47

    .local v47, config:Landroid/content/res/Configuration;
    new-instance v73, Landroid/util/DisplayMetrics;

    invoke-direct/range {v73 .. v73}, Landroid/util/DisplayMetrics;-><init>()V

    .local v73, metrics:Landroid/util/DisplayMetrics;
    const-string v3, "window"

    invoke-virtual {v4, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v102

    check-cast v102, Landroid/view/WindowManager;

    .local v102, w:Landroid/view/WindowManager;
    invoke-interface/range {v102 .. v102}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    move-object/from16 v0, v73

    invoke-virtual {v3, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    move-object/from16 v0, v47

    move-object/from16 v1, v73

    invoke-virtual {v3, v0, v1}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    invoke-virtual {v6}, Lcom/android/server/PowerManagerService;->systemReady()V

    :try_start_45
    invoke-interface/range {v81 .. v81}, Landroid/content/pm/IPackageManager;->systemReady()V
    :try_end_45
    .catch Ljava/lang/Throwable; {:try_start_45 .. :try_end_45} :catch_2c

    :goto_37
    new-instance v64, Landroid/content/IntentFilter;

    invoke-direct/range {v64 .. v64}, Landroid/content/IntentFilter;-><init>()V

    .local v64, filter:Landroid/content/IntentFilter;
    const-string v3, "com.tmobile.intent.action.APP_LAUNCH_FAILURE"

    move-object/from16 v0, v64

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "com.tmobile.intent.action.APP_LAUNCH_FAILURE_RESET"

    move-object/from16 v0, v64

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "android.intent.action.PACKAGE_ADDED"

    move-object/from16 v0, v64

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "android.intent.action.PACKAGE_REMOVED"

    move-object/from16 v0, v64

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "com.tmobile.intent.category.THEME_PACKAGE_INSTALL_STATE_CHANGE"

    move-object/from16 v0, v64

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    const-string v3, "package"

    move-object/from16 v0, v64

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    new-instance v3, Lcom/android/server/AppsLaunchFailureReceiver;

    invoke-direct {v3}, Lcom/android/server/AppsLaunchFailureReceiver;-><init>()V

    move-object/from16 v0, v64

    invoke-virtual {v4, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-object/from16 v16, v4

    .local v16, contextF:Landroid/content/Context;
    move-object/from16 v17, v5

    .local v17, batteryF:Lcom/android/server/BatteryService;
    move-object/from16 v18, v13

    .local v18, networkManagementF:Lcom/android/server/NetworkManagementService;
    move-object/from16 v19, v12

    .local v19, networkStatsF:Lcom/android/server/net/NetworkStatsService;
    move-object/from16 v20, v8

    .local v20, networkPolicyF:Lcom/android/server/net/NetworkPolicyManagerService;
    move-object/from16 v21, v48

    .local v21, connectivityF:Lcom/android/server/ConnectivityService;
    move-object/from16 v22, v59

    .local v22, dockF:Lcom/android/server/DockObserver;
    move-object/from16 v23, v89

    .local v23, rotateSwitchF:Lcom/android/server/RotationSwitchObserver;
    move-object/from16 v24, v100

    .local v24, usbF:Lcom/android/server/usb/UsbService;
    move-object/from16 v34, v94

    .local v34, throttleF:Lcom/android/server/ThrottleService;
    move-object/from16 v25, v98

    .local v25, uiModeF:Lcom/android/server/UiModeManagerService;
    move-object/from16 v27, v39

    .local v27, appWidgetF:Lcom/android/server/AppWidgetService;
    move-object/from16 v29, v103

    .local v29, wallpaperF:Lcom/android/server/WallpaperManagerService;
    move-object/from16 v30, v67

    .local v30, immF:Lcom/android/server/InputMethodManagerService;
    move-object/from16 v26, v87

    .local v26, recognitionF:Lcom/android/server/RecognitionManagerService;
    move-object/from16 v32, v71

    .local v32, locationF:Lcom/android/server/LocationManagerService;
    move-object/from16 v33, v50

    .local v33, countryDetectorF:Lcom/android/server/CountryDetectorService;
    move-object/from16 v35, v76

    .local v35, networkTimeUpdaterF:Lcom/android/server/NetworkTimeUpdateService;
    move-object/from16 v36, v96

    .local v36, textServiceManagerServiceF:Lcom/android/server/TextServicesManagerService;
    move-object/from16 v31, v92

    .local v31, statusBarF:Lcom/android/server/StatusBarManagerService;
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v3

    new-instance v14, Lcom/android/server/ServerThread$1;

    move-object/from16 v15, p0

    invoke-direct/range {v14 .. v36}, Lcom/android/server/ServerThread$1;-><init>(Lcom/android/server/ServerThread;Landroid/content/Context;Lcom/android/server/BatteryService;Lcom/android/server/NetworkManagementService;Lcom/android/server/net/NetworkStatsService;Lcom/android/server/net/NetworkPolicyManagerService;Lcom/android/server/ConnectivityService;Lcom/android/server/DockObserver;Lcom/android/server/RotationSwitchObserver;Lcom/android/server/usb/UsbService;Lcom/android/server/UiModeManagerService;Lcom/android/server/RecognitionManagerService;Lcom/android/server/AppWidgetService;ZLcom/android/server/WallpaperManagerService;Lcom/android/server/InputMethodManagerService;Lcom/android/server/StatusBarManagerService;Lcom/android/server/LocationManagerService;Lcom/android/server/CountryDetectorService;Lcom/android/server/ThrottleService;Lcom/android/server/NetworkTimeUpdateService;Lcom/android/server/TextServicesManagerService;)V

    invoke-virtual {v3, v14}, Lcom/android/server/am/ActivityManagerService;->systemReady(Ljava/lang/Runnable;)V

    invoke-static {}, Landroid/os/StrictMode;->conditionallyEnableDebugLogging()Z

    move-result v3

    if-eqz v3, :cond_a

    const-string v3, "SystemServer"

    const-string v9, "Enabled StrictMode for system server main thread."

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    invoke-static {}, Landroid/os/Looper;->loop()V

    const-string v3, "SystemServer"

    const-string v9, "System ServerThread is exiting!"

    invoke-static {v3, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .end local v4           #context:Landroid/content/Context;
    .end local v5           #battery:Lcom/android/server/BatteryService;
    .end local v6           #power:Lcom/android/server/PowerManagerService;
    .end local v7           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v8           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v12           #networkStats:Lcom/android/server/net/NetworkStatsService;
    .end local v13           #networkManagement:Lcom/android/server/NetworkManagementService;
    .end local v16           #contextF:Landroid/content/Context;
    .end local v17           #batteryF:Lcom/android/server/BatteryService;
    .end local v18           #networkManagementF:Lcom/android/server/NetworkManagementService;
    .end local v19           #networkStatsF:Lcom/android/server/net/NetworkStatsService;
    .end local v20           #networkPolicyF:Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v21           #connectivityF:Lcom/android/server/ConnectivityService;
    .end local v22           #dockF:Lcom/android/server/DockObserver;
    .end local v23           #rotateSwitchF:Lcom/android/server/RotationSwitchObserver;
    .end local v24           #usbF:Lcom/android/server/usb/UsbService;
    .end local v25           #uiModeF:Lcom/android/server/UiModeManagerService;
    .end local v26           #recognitionF:Lcom/android/server/RecognitionManagerService;
    .end local v27           #appWidgetF:Lcom/android/server/AppWidgetService;
    .end local v28           #safeMode:Z
    .end local v29           #wallpaperF:Lcom/android/server/WallpaperManagerService;
    .end local v30           #immF:Lcom/android/server/InputMethodManagerService;
    .end local v31           #statusBarF:Lcom/android/server/StatusBarManagerService;
    .end local v32           #locationF:Lcom/android/server/LocationManagerService;
    .end local v33           #countryDetectorF:Lcom/android/server/CountryDetectorService;
    .end local v34           #throttleF:Lcom/android/server/ThrottleService;
    .end local v35           #networkTimeUpdaterF:Lcom/android/server/NetworkTimeUpdateService;
    .end local v36           #textServiceManagerServiceF:Lcom/android/server/TextServicesManagerService;
    .end local v39           #appWidget:Lcom/android/server/AppWidgetService;
    .end local v42           #bluetooth:Landroid/server/BluetoothService;
    .end local v44           #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .end local v47           #config:Landroid/content/res/Configuration;
    .end local v48           #connectivity:Lcom/android/server/ConnectivityService;
    .end local v50           #countryDetector:Lcom/android/server/CountryDetectorService;
    .end local v52           #cpuGovernorManager:Lcom/android/server/CpuGovernorService;
    .end local v55           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .end local v57           #dmm:Lcom/android/server/DynamicMemoryManagerService;
    .end local v59           #dock:Lcom/android/server/DockObserver;
    .end local v62           #factoryTest:I
    .end local v63           #factoryTestStr:Ljava/lang/String;
    .end local v64           #filter:Landroid/content/IntentFilter;
    .end local v66           #hasRotationLock:Z
    .end local v67           #imm:Lcom/android/server/InputMethodManagerService;
    .end local v69           #lights:Lcom/android/server/LightsService;
    .end local v71           #location:Lcom/android/server/LocationManagerService;
    .end local v73           #metrics:Landroid/util/DisplayMetrics;
    .end local v76           #networkTimeUpdater:Lcom/android/server/NetworkTimeUpdateService;
    .end local v78           #notification:Lcom/android/server/NotificationManagerService;
    .end local v81           #pm:Landroid/content/pm/IPackageManager;
    .end local v83           #profile:Lcom/android/server/ProfileManagerService;
    .end local v87           #recognition:Lcom/android/server/RecognitionManagerService;
    .end local v89           #rotateSwitch:Lcom/android/server/RotationSwitchObserver;
    .end local v92           #statusBar:Lcom/android/server/StatusBarManagerService;
    .end local v94           #throttle:Lcom/android/server/ThrottleService;
    .end local v96           #tsms:Lcom/android/server/TextServicesManagerService;
    .end local v98           #uiMode:Lcom/android/server/UiModeManagerService;
    .end local v100           #usb:Lcom/android/server/usb/UsbService;
    .end local v102           #w:Landroid/view/WindowManager;
    .end local v103           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .end local v105           #wifi:Lcom/android/server/WifiService;
    .end local v107           #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    .end local v109           #wm:Lcom/android/server/wm/WindowManagerService;
    :cond_b
    const/16 v86, 0x0

    goto/16 :goto_0

    .restart local v86       #reboot:Z
    :cond_c
    const/16 v85, 0x0

    .restart local v85       #reason:Ljava/lang/String;
    goto/16 :goto_1

    .end local v85           #reason:Ljava/lang/String;
    .end local v86           #reboot:Z
    .restart local v63       #factoryTestStr:Ljava/lang/String;
    :cond_d
    invoke-static/range {v63 .. v63}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v62

    goto/16 :goto_2

    .restart local v4       #context:Landroid/content/Context;
    .restart local v6       #power:Lcom/android/server/PowerManagerService;
    .restart local v12       #networkStats:Lcom/android/server/net/NetworkStatsService;
    .restart local v13       #networkManagement:Lcom/android/server/NetworkManagementService;
    .restart local v38       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v41       #battery:Lcom/android/server/BatteryService;
    .restart local v42       #bluetooth:Landroid/server/BluetoothService;
    .restart local v44       #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .restart local v48       #connectivity:Lcom/android/server/ConnectivityService;
    .restart local v52       #cpuGovernorManager:Lcom/android/server/CpuGovernorService;
    .restart local v54       #cryptState:Ljava/lang/String;
    .restart local v57       #dmm:Lcom/android/server/DynamicMemoryManagerService;
    .restart local v59       #dock:Lcom/android/server/DockObserver;
    .restart local v62       #factoryTest:I
    .restart local v69       #lights:Lcom/android/server/LightsService;
    .restart local v74       #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v76       #networkTimeUpdater:Lcom/android/server/NetworkTimeUpdateService;
    .restart local v80       #onlyCore:Z
    .restart local v81       #pm:Landroid/content/pm/IPackageManager;
    .restart local v87       #recognition:Lcom/android/server/RecognitionManagerService;
    .restart local v89       #rotateSwitch:Lcom/android/server/RotationSwitchObserver;
    .restart local v94       #throttle:Lcom/android/server/ThrottleService;
    .restart local v98       #uiMode:Lcom/android/server/UiModeManagerService;
    .restart local v100       #usb:Lcom/android/server/usb/UsbService;
    .restart local v105       #wifi:Lcom/android/server/WifiService;
    .restart local v107       #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    .restart local v109       #wm:Lcom/android/server/wm/WindowManagerService;
    :cond_e
    :try_start_46
    const-string v3, "1"

    move-object/from16 v0, v54

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "SystemServer"

    const-string v9, "Device encrypted - only parsing core apps"

    invoke-static {v3, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v80, 0x1

    goto/16 :goto_3

    :cond_f
    const/4 v3, 0x0

    goto/16 :goto_4

    .restart local v65       #firstBoot:Z
    :catch_0
    move-exception v61

    .local v61, e:Ljava/lang/Throwable;
    const-string v3, "SystemServer"

    const-string v9, "Failure starting Account Manager"

    move-object/from16 v0, v61

    invoke-static {v3, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_46
    .catch Ljava/lang/RuntimeException; {:try_start_46 .. :try_end_46} :catch_1

    goto/16 :goto_6

    .end local v54           #cryptState:Ljava/lang/String;
    .end local v61           #e:Ljava/lang/Throwable;
    .end local v65           #firstBoot:Z
    .end local v80           #onlyCore:Z
    :catch_1
    move-exception v61

    move-object/from16 v7, v38

    .end local v38           #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v7       #alarm:Lcom/android/server/AlarmManagerService;
    move-object/from16 v5, v41

    .end local v41           #battery:Lcom/android/server/BatteryService;
    .restart local v5       #battery:Lcom/android/server/BatteryService;
    .local v61, e:Ljava/lang/RuntimeException;
    :goto_38
    const-string v3, "System"

    const-string v9, "******************************************"

    invoke-static {v3, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "System"

    const-string v9, "************ Failure starting core service"

    move-object/from16 v0, v61

    invoke-static {v3, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_b

    .end local v5           #battery:Lcom/android/server/BatteryService;
    .end local v7           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v61           #e:Ljava/lang/RuntimeException;
    .restart local v38       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v41       #battery:Lcom/android/server/BatteryService;
    .restart local v54       #cryptState:Ljava/lang/String;
    .restart local v65       #firstBoot:Z
    .restart local v80       #onlyCore:Z
    :cond_10
    const/4 v3, 0x0

    goto/16 :goto_7

    .end local v38           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v41           #battery:Lcom/android/server/BatteryService;
    .end local v69           #lights:Lcom/android/server/LightsService;
    .restart local v5       #battery:Lcom/android/server/BatteryService;
    .restart local v7       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v70       #lights:Lcom/android/server/LightsService;
    :cond_11
    const/4 v3, 0x0

    move v9, v3

    goto/16 :goto_8

    :cond_12
    const/4 v3, 0x0

    goto/16 :goto_9

    :cond_13
    const/4 v3, 0x1

    move/from16 v0, v62

    if-ne v0, v3, :cond_14

    :try_start_47
    const-string v3, "SystemServer"

    const-string v9, "No Bluetooth Service (factory test)"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a

    :catch_2
    move-exception v61

    move-object/from16 v69, v70

    .end local v70           #lights:Lcom/android/server/LightsService;
    .restart local v69       #lights:Lcom/android/server/LightsService;
    goto :goto_38

    .end local v69           #lights:Lcom/android/server/LightsService;
    .restart local v70       #lights:Lcom/android/server/LightsService;
    :cond_14
    const-string v3, "SystemServer"

    const-string v9, "Bluetooth Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v43, Landroid/server/BluetoothService;

    move-object/from16 v0, v43

    invoke-direct {v0, v4}, Landroid/server/BluetoothService;-><init>(Landroid/content/Context;)V
    :try_end_47
    .catch Ljava/lang/RuntimeException; {:try_start_47 .. :try_end_47} :catch_2

    .end local v42           #bluetooth:Landroid/server/BluetoothService;
    .local v43, bluetooth:Landroid/server/BluetoothService;
    :try_start_48
    const-string v3, "bluetooth"

    move-object/from16 v0, v43

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    invoke-virtual/range {v43 .. v43}, Landroid/server/BluetoothService;->initAfterRegistration()V

    new-instance v45, Landroid/server/BluetoothA2dpService;

    move-object/from16 v0, v45

    move-object/from16 v1, v43

    invoke-direct {v0, v4, v1}, Landroid/server/BluetoothA2dpService;-><init>(Landroid/content/Context;Landroid/server/BluetoothService;)V
    :try_end_48
    .catch Ljava/lang/RuntimeException; {:try_start_48 .. :try_end_48} :catch_43

    .end local v44           #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .local v45, bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    :try_start_49
    const-string v3, "bluetooth_a2dp"

    move-object/from16 v0, v45

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    invoke-virtual/range {v43 .. v43}, Landroid/server/BluetoothService;->initAfterA2dpRegistration()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/ServerThread;->mContentResolver:Landroid/content/ContentResolver;

    const-string v9, "airplane_mode_on"

    const/4 v10, 0x0

    invoke-static {v3, v9, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v37

    .local v37, airplaneModeOn:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/ServerThread;->mContentResolver:Landroid/content/ContentResolver;

    const-string v9, "bluetooth_on"

    const/4 v10, 0x0

    invoke-static {v3, v9, v10}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v46

    .local v46, bluetoothOn:I
    if-nez v37, :cond_15

    if-eqz v46, :cond_15

    invoke-virtual/range {v43 .. v43}, Landroid/server/BluetoothService;->enable()Z
    :try_end_49
    .catch Ljava/lang/RuntimeException; {:try_start_49 .. :try_end_49} :catch_44

    :cond_15
    move-object/from16 v44, v45

    .end local v45           #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .restart local v44       #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    move-object/from16 v42, v43

    .end local v43           #bluetooth:Landroid/server/BluetoothService;
    .restart local v42       #bluetooth:Landroid/server/BluetoothService;
    goto/16 :goto_a

    .end local v37           #airplaneModeOn:I
    .end local v46           #bluetoothOn:I
    .end local v54           #cryptState:Ljava/lang/String;
    .end local v65           #firstBoot:Z
    .end local v70           #lights:Lcom/android/server/LightsService;
    .end local v80           #onlyCore:Z
    .restart local v39       #appWidget:Lcom/android/server/AppWidgetService;
    .restart local v50       #countryDetector:Lcom/android/server/CountryDetectorService;
    .restart local v55       #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .restart local v66       #hasRotationLock:Z
    .restart local v67       #imm:Lcom/android/server/InputMethodManagerService;
    .restart local v69       #lights:Lcom/android/server/LightsService;
    .restart local v71       #location:Lcom/android/server/LocationManagerService;
    .restart local v78       #notification:Lcom/android/server/NotificationManagerService;
    .restart local v83       #profile:Lcom/android/server/ProfileManagerService;
    .restart local v92       #statusBar:Lcom/android/server/StatusBarManagerService;
    .restart local v96       #tsms:Lcom/android/server/TextServicesManagerService;
    .restart local v103       #wallpaper:Lcom/android/server/WallpaperManagerService;
    :catch_3
    move-exception v61

    .local v61, e:Ljava/lang/Throwable;
    :goto_39
    const-string v3, "starting Input Manager Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v61

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_c

    .end local v61           #e:Ljava/lang/Throwable;
    :catch_4
    move-exception v61

    .restart local v61       #e:Ljava/lang/Throwable;
    const-string v3, "starting Accessibility Manager"

    move-object/from16 v0, p0

    move-object/from16 v1, v61

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_d

    .end local v61           #e:Ljava/lang/Throwable;
    :catch_5
    move-exception v61

    .restart local v61       #e:Ljava/lang/Throwable;
    const-string v3, "making display ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v61

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_e

    .end local v61           #e:Ljava/lang/Throwable;
    :catch_6
    move-exception v61

    .restart local v61       #e:Ljava/lang/Throwable;
    const-string v3, "performing boot dexopt"

    move-object/from16 v0, p0

    move-object/from16 v1, v61

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_f

    .end local v61           #e:Ljava/lang/Throwable;
    :catch_7
    move-exception v61

    .restart local v61       #e:Ljava/lang/Throwable;
    :goto_3a
    const-string v3, "starting DevicePolicyService"

    move-object/from16 v0, p0

    move-object/from16 v1, v61

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_11

    .end local v61           #e:Ljava/lang/Throwable;
    :catch_8
    move-exception v61

    .restart local v61       #e:Ljava/lang/Throwable;
    :goto_3b
    const-string v3, "starting StatusBarManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v61

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_12

    .end local v61           #e:Ljava/lang/Throwable;
    :catch_9
    move-exception v61

    .restart local v61       #e:Ljava/lang/Throwable;
    const-string v3, "starting Clipboard Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v61

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_13

    .end local v61           #e:Ljava/lang/Throwable;
    :catch_a
    move-exception v61

    .restart local v61       #e:Ljava/lang/Throwable;
    const-string v3, "starting NetworkManagement Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v61

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_14

    .end local v61           #e:Ljava/lang/Throwable;
    :catch_b
    move-exception v61

    .restart local v61       #e:Ljava/lang/Throwable;
    :goto_3c
    const-string v3, "starting Text Service Manager Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v61

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_15

    .end local v61           #e:Ljava/lang/Throwable;
    :catch_c
    move-exception v61

    .restart local v61       #e:Ljava/lang/Throwable;
    :goto_3d
    const-string v3, "starting NetworkStats Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v61

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_16

    .end local v61           #e:Ljava/lang/Throwable;
    :catch_d
    move-exception v61

    move-object/from16 v8, v74

    .end local v74           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v8       #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v61       #e:Ljava/lang/Throwable;
    :goto_3e
    const-string v3, "starting NetworkPolicy Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v61

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_17

    .end local v61           #e:Ljava/lang/Throwable;
    :catch_e
    move-exception v61

    .restart local v61       #e:Ljava/lang/Throwable;
    :goto_3f
    const-string v3, "starting Wi-Fi P2pService"

    move-object/from16 v0, p0

    move-object/from16 v1, v61

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_18

    .end local v61           #e:Ljava/lang/Throwable;
    :catch_f
    move-exception v61

    .restart local v61       #e:Ljava/lang/Throwable;
    :goto_40
    const-string v3, "starting Wi-Fi Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v61

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_19

    .end local v61           #e:Ljava/lang/Throwable;
    :catch_10
    move-exception v61

    .restart local v61       #e:Ljava/lang/Throwable;
    :goto_41
    const-string v3, "starting Connectivity Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v61

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1a

    .end local v61           #e:Ljava/lang/Throwable;
    :catch_11
    move-exception v61

    .restart local v61       #e:Ljava/lang/Throwable;
    :goto_42
    const-string v3, "starting ThrottleService"

    move-object/from16 v0, p0

    move-object/from16 v1, v61

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1b

    .end local v61           #e:Ljava/lang/Throwable;
    :catch_12
    move-exception v61

    .restart local v61       #e:Ljava/lang/Throwable;
    const-string v3, "starting Mount Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v61

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1c

    .end local v61           #e:Ljava/lang/Throwable;
    :catch_13
    move-exception v61

    .restart local v61       #e:Ljava/lang/Throwable;
    :goto_43
    const-string v3, "SystemServer"

    const-string v9, "Failure starting Profile Manager"

    move-object/from16 v0, v61

    invoke-static {v3, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1d

    .end local v61           #e:Ljava/lang/Throwable;
    :catch_14
    move-exception v61

    .restart local v61       #e:Ljava/lang/Throwable;
    :goto_44
    const-string v3, "starting Notification Manager"

    move-object/from16 v0, p0

    move-object/from16 v1, v61

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1e

    .end local v61           #e:Ljava/lang/Throwable;
    :catch_15
    move-exception v61

    .restart local v61       #e:Ljava/lang/Throwable;
    const-string v3, "SystemServer"

    const-string v9, "Failure starting HDMI Service "

    move-object/from16 v0, v61

    invoke-static {v3, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1f

    .end local v61           #e:Ljava/lang/Throwable;
    :catch_16
    move-exception v61

    .restart local v61       #e:Ljava/lang/Throwable;
    const-string v3, "starting DeviceStorageMonitor service"

    move-object/from16 v0, p0

    move-object/from16 v1, v61

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_20

    .end local v61           #e:Ljava/lang/Throwable;
    :catch_17
    move-exception v61

    .restart local v61       #e:Ljava/lang/Throwable;
    :goto_45
    const-string v3, "starting Location Manager"

    move-object/from16 v0, p0

    move-object/from16 v1, v61

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_21

    .end local v61           #e:Ljava/lang/Throwable;
    :catch_18
    move-exception v61

    .restart local v61       #e:Ljava/lang/Throwable;
    :goto_46
    const-string v3, "starting Country Detector"

    move-object/from16 v0, p0

    move-object/from16 v1, v61

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_22

    .end local v61           #e:Ljava/lang/Throwable;
    :catch_19
    move-exception v61

    .restart local v61       #e:Ljava/lang/Throwable;
    const-string v3, "starting Search Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v61

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_23

    .end local v61           #e:Ljava/lang/Throwable;
    :catch_1a
    move-exception v61

    .restart local v61       #e:Ljava/lang/Throwable;
    const-string v3, "starting DropBoxManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v61

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_24

    .end local v61           #e:Ljava/lang/Throwable;
    :catch_1b
    move-exception v61

    .restart local v61       #e:Ljava/lang/Throwable;
    :goto_47
    const-string v3, "starting Wallpaper Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v61

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_25

    .end local v61           #e:Ljava/lang/Throwable;
    :catch_1c
    move-exception v61

    .restart local v61       #e:Ljava/lang/Throwable;
    const-string v3, "starting Audio Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v61

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_26

    .end local v61           #e:Ljava/lang/Throwable;
    :catch_1d
    move-exception v61

    .restart local v61       #e:Ljava/lang/Throwable;
    const-string v3, "starting DockObserver"

    move-object/from16 v0, p0

    move-object/from16 v1, v61

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_27

    .end local v61           #e:Ljava/lang/Throwable;
    :catch_1e
    move-exception v61

    .restart local v61       #e:Ljava/lang/Throwable;
    const-string v3, "starting RotationSwitchObserver"

    move-object/from16 v0, p0

    move-object/from16 v1, v61

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_28

    .end local v61           #e:Ljava/lang/Throwable;
    :catch_1f
    move-exception v61

    .restart local v61       #e:Ljava/lang/Throwable;
    const-string v3, "starting WiredAccessoryObserver"

    move-object/from16 v0, p0

    move-object/from16 v1, v61

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_29

    .end local v61           #e:Ljava/lang/Throwable;
    :catch_20
    move-exception v61

    .restart local v61       #e:Ljava/lang/Throwable;
    :goto_48
    const-string v3, "starting UsbService"

    move-object/from16 v0, p0

    move-object/from16 v1, v61

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2a

    .end local v61           #e:Ljava/lang/Throwable;
    :catch_21
    move-exception v61

    .restart local v61       #e:Ljava/lang/Throwable;
    const-string v3, "starting UiModeManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v61

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2b

    .end local v61           #e:Ljava/lang/Throwable;
    :catch_22
    move-exception v61

    .restart local v61       #e:Ljava/lang/Throwable;
    const-string v3, "SystemServer"

    const-string v9, "Failure starting Backup Service"

    move-object/from16 v0, v61

    invoke-static {v3, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2c

    .end local v61           #e:Ljava/lang/Throwable;
    :catch_23
    move-exception v61

    .restart local v61       #e:Ljava/lang/Throwable;
    :goto_49
    const-string v3, "starting AppWidget Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v61

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2d

    .end local v61           #e:Ljava/lang/Throwable;
    :catch_24
    move-exception v61

    .restart local v61       #e:Ljava/lang/Throwable;
    const-string v3, "starting Recognition Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v61

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2e

    .end local v61           #e:Ljava/lang/Throwable;
    :catch_25
    move-exception v61

    .restart local v61       #e:Ljava/lang/Throwable;
    const-string v3, "starting DiskStats Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v61

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2f

    .end local v61           #e:Ljava/lang/Throwable;
    :catch_26
    move-exception v61

    .restart local v61       #e:Ljava/lang/Throwable;
    const-string v3, "starting SamplingProfiler Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v61

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_30

    .end local v61           #e:Ljava/lang/Throwable;
    :catch_27
    move-exception v61

    .restart local v61       #e:Ljava/lang/Throwable;
    const-string v3, "starting NetworkTimeUpdate service"

    move-object/from16 v0, p0

    move-object/from16 v1, v61

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_31

    .end local v61           #e:Ljava/lang/Throwable;
    :catch_28
    move-exception v61

    .restart local v61       #e:Ljava/lang/Throwable;
    const-string v3, "SystemServer"

    const-string v9, "Failure starting AssetRedirectionManager Service"

    move-object/from16 v0, v61

    invoke-static {v3, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_32

    .end local v61           #e:Ljava/lang/Throwable;
    .restart local v28       #safeMode:Z
    :cond_16
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v3

    invoke-virtual {v3}, Ldalvik/system/VMRuntime;->startJitCompilation()V

    goto/16 :goto_33

    :catch_29
    move-exception v61

    .restart local v61       #e:Ljava/lang/Throwable;
    const-string v3, "making Device Policy Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v61

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_34

    .end local v61           #e:Ljava/lang/Throwable;
    :catch_2a
    move-exception v61

    .restart local v61       #e:Ljava/lang/Throwable;
    const-string v3, "making Notification Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v61

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_35

    .end local v61           #e:Ljava/lang/Throwable;
    :catch_2b
    move-exception v61

    .restart local v61       #e:Ljava/lang/Throwable;
    const-string v3, "making Window Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v61

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_36

    .end local v61           #e:Ljava/lang/Throwable;
    .restart local v47       #config:Landroid/content/res/Configuration;
    .restart local v73       #metrics:Landroid/util/DisplayMetrics;
    .restart local v102       #w:Landroid/view/WindowManager;
    :catch_2c
    move-exception v61

    .restart local v61       #e:Ljava/lang/Throwable;
    const-string v3, "making Package Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v61

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_37

    .end local v5           #battery:Lcom/android/server/BatteryService;
    .end local v7           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v8           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v28           #safeMode:Z
    .end local v39           #appWidget:Lcom/android/server/AppWidgetService;
    .end local v47           #config:Landroid/content/res/Configuration;
    .end local v50           #countryDetector:Lcom/android/server/CountryDetectorService;
    .end local v55           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .end local v61           #e:Ljava/lang/Throwable;
    .end local v66           #hasRotationLock:Z
    .end local v67           #imm:Lcom/android/server/InputMethodManagerService;
    .end local v71           #location:Lcom/android/server/LocationManagerService;
    .end local v73           #metrics:Landroid/util/DisplayMetrics;
    .end local v78           #notification:Lcom/android/server/NotificationManagerService;
    .end local v83           #profile:Lcom/android/server/ProfileManagerService;
    .end local v92           #statusBar:Lcom/android/server/StatusBarManagerService;
    .end local v96           #tsms:Lcom/android/server/TextServicesManagerService;
    .end local v102           #w:Landroid/view/WindowManager;
    .end local v103           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .restart local v38       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v41       #battery:Lcom/android/server/BatteryService;
    .restart local v54       #cryptState:Ljava/lang/String;
    .restart local v65       #firstBoot:Z
    .restart local v74       #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v80       #onlyCore:Z
    :catch_2d
    move-exception v3

    goto/16 :goto_5

    .end local v38           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v41           #battery:Lcom/android/server/BatteryService;
    .end local v54           #cryptState:Ljava/lang/String;
    .end local v65           #firstBoot:Z
    .end local v74           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v80           #onlyCore:Z
    .restart local v5       #battery:Lcom/android/server/BatteryService;
    .restart local v7       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v8       #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v40       #appWidget:Lcom/android/server/AppWidgetService;
    .restart local v50       #countryDetector:Lcom/android/server/CountryDetectorService;
    .restart local v55       #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .restart local v66       #hasRotationLock:Z
    .restart local v67       #imm:Lcom/android/server/InputMethodManagerService;
    .restart local v71       #location:Lcom/android/server/LocationManagerService;
    .restart local v78       #notification:Lcom/android/server/NotificationManagerService;
    .restart local v83       #profile:Lcom/android/server/ProfileManagerService;
    .restart local v92       #statusBar:Lcom/android/server/StatusBarManagerService;
    .restart local v96       #tsms:Lcom/android/server/TextServicesManagerService;
    .restart local v103       #wallpaper:Lcom/android/server/WallpaperManagerService;
    :catch_2e
    move-exception v61

    move-object/from16 v39, v40

    .end local v40           #appWidget:Lcom/android/server/AppWidgetService;
    .restart local v39       #appWidget:Lcom/android/server/AppWidgetService;
    goto/16 :goto_49

    .end local v100           #usb:Lcom/android/server/usb/UsbService;
    .restart local v101       #usb:Lcom/android/server/usb/UsbService;
    :catch_2f
    move-exception v61

    move-object/from16 v100, v101

    .end local v101           #usb:Lcom/android/server/usb/UsbService;
    .restart local v100       #usb:Lcom/android/server/usb/UsbService;
    goto/16 :goto_48

    .end local v103           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .restart local v104       #wallpaper:Lcom/android/server/WallpaperManagerService;
    :catch_30
    move-exception v61

    move-object/from16 v103, v104

    .end local v104           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .restart local v103       #wallpaper:Lcom/android/server/WallpaperManagerService;
    goto/16 :goto_47

    .end local v50           #countryDetector:Lcom/android/server/CountryDetectorService;
    .restart local v51       #countryDetector:Lcom/android/server/CountryDetectorService;
    :catch_31
    move-exception v61

    move-object/from16 v50, v51

    .end local v51           #countryDetector:Lcom/android/server/CountryDetectorService;
    .restart local v50       #countryDetector:Lcom/android/server/CountryDetectorService;
    goto/16 :goto_46

    .end local v71           #location:Lcom/android/server/LocationManagerService;
    .restart local v72       #location:Lcom/android/server/LocationManagerService;
    :catch_32
    move-exception v61

    move-object/from16 v71, v72

    .end local v72           #location:Lcom/android/server/LocationManagerService;
    .restart local v71       #location:Lcom/android/server/LocationManagerService;
    goto/16 :goto_45

    .end local v78           #notification:Lcom/android/server/NotificationManagerService;
    .restart local v79       #notification:Lcom/android/server/NotificationManagerService;
    :catch_33
    move-exception v61

    move-object/from16 v78, v79

    .end local v79           #notification:Lcom/android/server/NotificationManagerService;
    .restart local v78       #notification:Lcom/android/server/NotificationManagerService;
    goto/16 :goto_44

    .end local v83           #profile:Lcom/android/server/ProfileManagerService;
    .restart local v84       #profile:Lcom/android/server/ProfileManagerService;
    :catch_34
    move-exception v61

    move-object/from16 v83, v84

    .end local v84           #profile:Lcom/android/server/ProfileManagerService;
    .restart local v83       #profile:Lcom/android/server/ProfileManagerService;
    goto/16 :goto_43

    .end local v94           #throttle:Lcom/android/server/ThrottleService;
    .restart local v95       #throttle:Lcom/android/server/ThrottleService;
    :catch_35
    move-exception v61

    move-object/from16 v94, v95

    .end local v95           #throttle:Lcom/android/server/ThrottleService;
    .restart local v94       #throttle:Lcom/android/server/ThrottleService;
    goto/16 :goto_42

    .end local v48           #connectivity:Lcom/android/server/ConnectivityService;
    .restart local v49       #connectivity:Lcom/android/server/ConnectivityService;
    :catch_36
    move-exception v61

    move-object/from16 v48, v49

    .end local v49           #connectivity:Lcom/android/server/ConnectivityService;
    .restart local v48       #connectivity:Lcom/android/server/ConnectivityService;
    goto/16 :goto_41

    .end local v105           #wifi:Lcom/android/server/WifiService;
    .restart local v106       #wifi:Lcom/android/server/WifiService;
    :catch_37
    move-exception v61

    move-object/from16 v105, v106

    .end local v106           #wifi:Lcom/android/server/WifiService;
    .restart local v105       #wifi:Lcom/android/server/WifiService;
    goto/16 :goto_40

    .end local v107           #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    .restart local v108       #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    :catch_38
    move-exception v61

    move-object/from16 v107, v108

    .end local v108           #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    .restart local v107       #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    goto/16 :goto_3f

    :catch_39
    move-exception v61

    goto/16 :goto_3e

    .end local v8           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v12           #networkStats:Lcom/android/server/net/NetworkStatsService;
    .restart local v74       #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v75       #networkStats:Lcom/android/server/net/NetworkStatsService;
    :catch_3a
    move-exception v61

    move-object/from16 v12, v75

    .end local v75           #networkStats:Lcom/android/server/net/NetworkStatsService;
    .restart local v12       #networkStats:Lcom/android/server/net/NetworkStatsService;
    goto/16 :goto_3d

    .end local v96           #tsms:Lcom/android/server/TextServicesManagerService;
    .restart local v97       #tsms:Lcom/android/server/TextServicesManagerService;
    :catch_3b
    move-exception v61

    move-object/from16 v96, v97

    .end local v97           #tsms:Lcom/android/server/TextServicesManagerService;
    .restart local v96       #tsms:Lcom/android/server/TextServicesManagerService;
    goto/16 :goto_3c

    .end local v92           #statusBar:Lcom/android/server/StatusBarManagerService;
    .restart local v93       #statusBar:Lcom/android/server/StatusBarManagerService;
    :catch_3c
    move-exception v61

    move-object/from16 v92, v93

    .end local v93           #statusBar:Lcom/android/server/StatusBarManagerService;
    .restart local v92       #statusBar:Lcom/android/server/StatusBarManagerService;
    goto/16 :goto_3b

    .end local v55           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .restart local v56       #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    :catch_3d
    move-exception v61

    move-object/from16 v55, v56

    .end local v56           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .restart local v55       #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    goto/16 :goto_3a

    :catch_3e
    move-exception v3

    goto/16 :goto_10

    .end local v67           #imm:Lcom/android/server/InputMethodManagerService;
    .restart local v68       #imm:Lcom/android/server/InputMethodManagerService;
    :catch_3f
    move-exception v61

    move-object/from16 v67, v68

    .end local v68           #imm:Lcom/android/server/InputMethodManagerService;
    .restart local v67       #imm:Lcom/android/server/InputMethodManagerService;
    goto/16 :goto_39

    .end local v5           #battery:Lcom/android/server/BatteryService;
    .end local v6           #power:Lcom/android/server/PowerManagerService;
    .end local v7           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v39           #appWidget:Lcom/android/server/AppWidgetService;
    .end local v50           #countryDetector:Lcom/android/server/CountryDetectorService;
    .end local v55           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .end local v66           #hasRotationLock:Z
    .end local v67           #imm:Lcom/android/server/InputMethodManagerService;
    .end local v71           #location:Lcom/android/server/LocationManagerService;
    .end local v78           #notification:Lcom/android/server/NotificationManagerService;
    .end local v83           #profile:Lcom/android/server/ProfileManagerService;
    .end local v92           #statusBar:Lcom/android/server/StatusBarManagerService;
    .end local v96           #tsms:Lcom/android/server/TextServicesManagerService;
    .end local v103           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .restart local v38       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v41       #battery:Lcom/android/server/BatteryService;
    .restart local v82       #power:Lcom/android/server/PowerManagerService;
    :catch_40
    move-exception v61

    move-object/from16 v7, v38

    .end local v38           #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v7       #alarm:Lcom/android/server/AlarmManagerService;
    move-object/from16 v5, v41

    .end local v41           #battery:Lcom/android/server/BatteryService;
    .restart local v5       #battery:Lcom/android/server/BatteryService;
    move-object/from16 v6, v82

    .end local v82           #power:Lcom/android/server/PowerManagerService;
    .restart local v6       #power:Lcom/android/server/PowerManagerService;
    goto/16 :goto_38

    .end local v5           #battery:Lcom/android/server/BatteryService;
    .end local v7           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v69           #lights:Lcom/android/server/LightsService;
    .restart local v38       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v41       #battery:Lcom/android/server/BatteryService;
    .restart local v54       #cryptState:Ljava/lang/String;
    .restart local v65       #firstBoot:Z
    .restart local v70       #lights:Lcom/android/server/LightsService;
    .restart local v80       #onlyCore:Z
    :catch_41
    move-exception v61

    move-object/from16 v7, v38

    .end local v38           #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v7       #alarm:Lcom/android/server/AlarmManagerService;
    move-object/from16 v5, v41

    .end local v41           #battery:Lcom/android/server/BatteryService;
    .restart local v5       #battery:Lcom/android/server/BatteryService;
    move-object/from16 v69, v70

    .end local v70           #lights:Lcom/android/server/LightsService;
    .restart local v69       #lights:Lcom/android/server/LightsService;
    goto/16 :goto_38

    .end local v7           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v69           #lights:Lcom/android/server/LightsService;
    .restart local v38       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v70       #lights:Lcom/android/server/LightsService;
    :catch_42
    move-exception v61

    move-object/from16 v7, v38

    .end local v38           #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v7       #alarm:Lcom/android/server/AlarmManagerService;
    move-object/from16 v69, v70

    .end local v70           #lights:Lcom/android/server/LightsService;
    .restart local v69       #lights:Lcom/android/server/LightsService;
    goto/16 :goto_38

    .end local v42           #bluetooth:Landroid/server/BluetoothService;
    .end local v69           #lights:Lcom/android/server/LightsService;
    .restart local v43       #bluetooth:Landroid/server/BluetoothService;
    .restart local v70       #lights:Lcom/android/server/LightsService;
    :catch_43
    move-exception v61

    move-object/from16 v42, v43

    .end local v43           #bluetooth:Landroid/server/BluetoothService;
    .restart local v42       #bluetooth:Landroid/server/BluetoothService;
    move-object/from16 v69, v70

    .end local v70           #lights:Lcom/android/server/LightsService;
    .restart local v69       #lights:Lcom/android/server/LightsService;
    goto/16 :goto_38

    .end local v42           #bluetooth:Landroid/server/BluetoothService;
    .end local v44           #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .end local v69           #lights:Lcom/android/server/LightsService;
    .restart local v43       #bluetooth:Landroid/server/BluetoothService;
    .restart local v45       #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .restart local v70       #lights:Lcom/android/server/LightsService;
    :catch_44
    move-exception v61

    move-object/from16 v44, v45

    .end local v45           #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .restart local v44       #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    move-object/from16 v42, v43

    .end local v43           #bluetooth:Landroid/server/BluetoothService;
    .restart local v42       #bluetooth:Landroid/server/BluetoothService;
    move-object/from16 v69, v70

    .end local v70           #lights:Lcom/android/server/LightsService;
    .restart local v69       #lights:Lcom/android/server/LightsService;
    goto/16 :goto_38

    .end local v52           #cpuGovernorManager:Lcom/android/server/CpuGovernorService;
    .end local v69           #lights:Lcom/android/server/LightsService;
    .restart local v53       #cpuGovernorManager:Lcom/android/server/CpuGovernorService;
    .restart local v70       #lights:Lcom/android/server/LightsService;
    :catch_45
    move-exception v61

    move-object/from16 v52, v53

    .end local v53           #cpuGovernorManager:Lcom/android/server/CpuGovernorService;
    .restart local v52       #cpuGovernorManager:Lcom/android/server/CpuGovernorService;
    move-object/from16 v69, v70

    .end local v70           #lights:Lcom/android/server/LightsService;
    .restart local v69       #lights:Lcom/android/server/LightsService;
    goto/16 :goto_38

    .end local v54           #cryptState:Ljava/lang/String;
    .end local v65           #firstBoot:Z
    .end local v80           #onlyCore:Z
    .restart local v39       #appWidget:Lcom/android/server/AppWidgetService;
    .restart local v50       #countryDetector:Lcom/android/server/CountryDetectorService;
    .restart local v55       #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .restart local v66       #hasRotationLock:Z
    .restart local v67       #imm:Lcom/android/server/InputMethodManagerService;
    .restart local v71       #location:Lcom/android/server/LocationManagerService;
    .restart local v78       #notification:Lcom/android/server/NotificationManagerService;
    .restart local v83       #profile:Lcom/android/server/ProfileManagerService;
    .restart local v92       #statusBar:Lcom/android/server/StatusBarManagerService;
    .restart local v96       #tsms:Lcom/android/server/TextServicesManagerService;
    .restart local v103       #wallpaper:Lcom/android/server/WallpaperManagerService;
    :cond_17
    move-object/from16 v8, v74

    .end local v74           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v8       #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    goto/16 :goto_32
.end method
