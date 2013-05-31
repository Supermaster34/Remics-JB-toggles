.class public Lcom/android/systemui/statusbar/policy/LocationController;
.super Landroid/content/BroadcastReceiver;
.source "LocationController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/LocationController$LocationGpsStateChangeCallback;
    }
.end annotation


# instance fields
.field private mChangeCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/statusbar/policy/LocationController$LocationGpsStateChangeCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mNotificationService:Landroid/app/INotificationManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 57
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 50
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/LocationController;->mChangeCallbacks:Ljava/util/ArrayList;

    .line 58
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/LocationController;->mContext:Landroid/content/Context;

    .line 60
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 61
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v2, "android.location.GPS_ENABLED_CHANGE"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 62
    const-string v2, "android.location.GPS_FIX_CHANGE"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 63
    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 65
    const-string v2, "notification"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 67
    .local v1, nm:Landroid/app/NotificationManager;
    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/LocationController;->mNotificationService:Landroid/app/INotificationManager;

    .line 68
    return-void
.end method


# virtual methods
.method public addStateChangedCallback(Lcom/android/systemui/statusbar/policy/LocationController$LocationGpsStateChangeCallback;)V
    .locals 1
    .parameter "cb"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/LocationController;->mChangeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 72
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 20
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 76
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v11

    .line 77
    .local v11, action:Ljava/lang/String;
    const-string v1, "enabled"

    const/4 v2, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v13

    .line 82
    .local v13, enabled:Z
    const-string v1, "android.location.GPS_FIX_CHANGE"

    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v13, :cond_1

    .line 84
    const v15, 0x10805a6

    .line 85
    .local v15, iconId:I
    const v18, 0x7f0a00d0

    .line 86
    .local v18, textResId:I
    const/16 v19, 0x1

    .line 99
    .local v19, visible:Z
    :goto_0
    if-eqz v19, :cond_3

    .line 100
    :try_start_0
    new-instance v3, Landroid/content/Intent;

    const-string v1, "android.settings.LOCATION_SOURCE_SETTINGS"

    invoke-direct {v3, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 101
    .local v3, gpsIntent:Landroid/content/Intent;
    const/high16 v1, 0x1000

    invoke-virtual {v3, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 103
    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    sget-object v6, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v16

    .line 105
    .local v16, pendingIntent:Landroid/app/PendingIntent;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/LocationController;->mContext:Landroid/content/Context;

    move/from16 v0, v18

    invoke-virtual {v1, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v17

    .line 107
    .local v17, text:Ljava/lang/String;
    new-instance v1, Landroid/app/Notification$Builder;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/LocationController;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v15}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v1

    move-object/from16 v0, v17

    invoke-virtual {v1, v0}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v1

    move-object/from16 v0, v16

    invoke-virtual {v1, v0}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v8

    .line 115
    .local v8, n:Landroid/app/Notification;
    const/4 v1, 0x0

    iput-object v1, v8, Landroid/app/Notification;->tickerView:Landroid/widget/RemoteViews;

    .line 116
    const/4 v1, 0x0

    iput-object v1, v8, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 118
    const/4 v1, 0x1

    iput v1, v8, Landroid/app/Notification;->priority:I

    .line 120
    const/4 v1, 0x1

    new-array v9, v1, [I

    .line 121
    .local v9, idOut:[I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/policy/LocationController;->mNotificationService:Landroid/app/INotificationManager;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/LocationController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const v7, 0x3d8d7

    const/4 v10, -0x1

    invoke-interface/range {v4 .. v10}, Landroid/app/INotificationManager;->enqueueNotificationWithTag(Ljava/lang/String;Ljava/lang/String;ILandroid/app/Notification;[II)V

    .line 129
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/LocationController;->mChangeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/systemui/statusbar/policy/LocationController$LocationGpsStateChangeCallback;

    .line 130
    .local v12, cb:Lcom/android/systemui/statusbar/policy/LocationController$LocationGpsStateChangeCallback;
    const/4 v1, 0x1

    move-object/from16 v0, v17

    invoke-interface {v12, v1, v0}, Lcom/android/systemui/statusbar/policy/LocationController$LocationGpsStateChangeCallback;->onLocationGpsStateChanged(ZLjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 141
    .end local v3           #gpsIntent:Landroid/content/Intent;
    .end local v8           #n:Landroid/app/Notification;
    .end local v9           #idOut:[I
    .end local v12           #cb:Lcom/android/systemui/statusbar/policy/LocationController$LocationGpsStateChangeCallback;
    .end local v14           #i$:Ljava/util/Iterator;
    .end local v16           #pendingIntent:Landroid/app/PendingIntent;
    .end local v17           #text:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 144
    :cond_0
    return-void

    .line 87
    .end local v15           #iconId:I
    .end local v18           #textResId:I
    .end local v19           #visible:Z
    :cond_1
    const-string v1, "android.location.GPS_ENABLED_CHANGE"

    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    if-nez v13, :cond_2

    .line 89
    const/16 v19, 0x0

    .line 90
    .restart local v19       #visible:Z
    const/16 v18, 0x0

    .restart local v18       #textResId:I
    move/from16 v15, v18

    .restart local v15       #iconId:I
    goto/16 :goto_0

    .line 93
    .end local v15           #iconId:I
    .end local v18           #textResId:I
    .end local v19           #visible:Z
    :cond_2
    const v15, 0x7f0201b8

    .line 94
    .restart local v15       #iconId:I
    const v18, 0x7f0a00cf

    .line 95
    .restart local v18       #textResId:I
    const/16 v19, 0x1

    .restart local v19       #visible:Z
    goto/16 :goto_0

    .line 133
    :cond_3
    :try_start_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/LocationController;->mNotificationService:Landroid/app/INotificationManager;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/LocationController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    const v5, 0x3d8d7

    const/4 v6, -0x1

    invoke-interface {v1, v2, v4, v5, v6}, Landroid/app/INotificationManager;->cancelNotificationWithTag(Ljava/lang/String;Ljava/lang/String;II)V

    .line 137
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/LocationController;->mChangeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .restart local v14       #i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/systemui/statusbar/policy/LocationController$LocationGpsStateChangeCallback;

    .line 138
    .restart local v12       #cb:Lcom/android/systemui/statusbar/policy/LocationController$LocationGpsStateChangeCallback;
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {v12, v1, v2}, Lcom/android/systemui/statusbar/policy/LocationController$LocationGpsStateChangeCallback;->onLocationGpsStateChanged(ZLjava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method
