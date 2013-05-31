.class public Lcom/android/systemui/quicksettings/InputMethodTile;
.super Lcom/android/systemui/quicksettings/QuickSettingsTile;
.source "InputMethodTile.java"


# instance fields
.field private mImm:Landroid/view/inputmethod/InputMethodManager;

.field private showTile:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/QuickSettingsController;)V
    .locals 2
    .parameter "context"
    .parameter "qsc"

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/quicksettings/QuickSettingsTile;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/QuickSettingsController;)V

    .line 26
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/quicksettings/InputMethodTile;->showTile:Z

    .line 32
    iget-object v0, p0, Lcom/android/systemui/quicksettings/InputMethodTile;->mContext:Landroid/content/Context;

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lcom/android/systemui/quicksettings/InputMethodTile;->mImm:Landroid/view/inputmethod/InputMethodManager;

    .line 34
    new-instance v0, Lcom/android/systemui/quicksettings/InputMethodTile$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/quicksettings/InputMethodTile$1;-><init>(Lcom/android/systemui/quicksettings/InputMethodTile;)V

    iput-object v0, p0, Lcom/android/systemui/quicksettings/InputMethodTile;->mOnClick:Landroid/view/View$OnClickListener;

    .line 47
    return-void
.end method

.method private static getCurrentInputMethodName(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/view/inputmethod/InputMethodManager;Ljava/util/List;Landroid/content/pm/PackageManager;)Ljava/lang/String;
    .locals 7
    .parameter "context"
    .parameter "resolver"
    .parameter "imm"
    .parameter
    .parameter "pm"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/ContentResolver;",
            "Landroid/view/inputmethod/InputMethodManager;",
            "Ljava/util/List",
            "<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;",
            "Landroid/content/pm/PackageManager;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p3, imis:Ljava/util/List;,"Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    const/4 v5, 0x0

    .line 51
    if-eqz p1, :cond_0

    if-nez p3, :cond_1

    .line 65
    :cond_0
    :goto_0
    return-object v5

    .line 52
    :cond_1
    const-string v6, "default_input_method"

    invoke-static {p1, v6}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 54
    .local v0, currentInputMethodId:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 55
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodInfo;

    .line 56
    .local v2, imi:Landroid/view/inputmethod/InputMethodInfo;
    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 57
    invoke-virtual {p2}, Landroid/view/inputmethod/InputMethodManager;->getCurrentInputMethodSubtype()Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v3

    .line 58
    .local v3, subtype:Landroid/view/inputmethod/InputMethodSubtype;
    if-eqz v3, :cond_3

    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v6

    iget-object v6, v6, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v3, p0, v5, v6}, Landroid/view/inputmethod/InputMethodSubtype;->getDisplayName(Landroid/content/Context;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v4

    .line 62
    .local v4, summary:Ljava/lang/CharSequence;
    :goto_1
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 58
    .end local v4           #summary:Ljava/lang/CharSequence;
    :cond_3
    const v5, 0x7f0a00e4

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_1
.end method

.method private needsToShowImeSwitchOngoingNotification(Landroid/view/inputmethod/InputMethodManager;)Z
    .locals 14
    .parameter "imm"

    .prologue
    .line 69
    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodList()Ljava/util/List;

    move-result-object v5

    .line 70
    .local v5, imis:Ljava/util/List;,"Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    .line 71
    .local v0, N:I
    const/4 v12, 0x2

    if-le v0, v12, :cond_0

    const/4 v12, 0x1

    .line 109
    :goto_0
    return v12

    .line 72
    :cond_0
    const/4 v12, 0x1

    if-ge v0, v12, :cond_1

    const/4 v12, 0x0

    goto :goto_0

    .line 73
    :cond_1
    const/4 v7, 0x0

    .line 74
    .local v7, nonAuxCount:I
    const/4 v1, 0x0

    .line 75
    .local v1, auxCount:I
    const/4 v8, 0x0

    .line 76
    .local v8, nonAuxSubtype:Landroid/view/inputmethod/InputMethodSubtype;
    const/4 v2, 0x0

    .line 77
    .local v2, auxSubtype:Landroid/view/inputmethod/InputMethodSubtype;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-ge v3, v0, :cond_5

    .line 78
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/inputmethod/InputMethodInfo;

    .line 79
    .local v4, imi:Landroid/view/inputmethod/InputMethodInfo;
    const/4 v12, 0x1

    invoke-virtual {p1, v4, v12}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodSubtypeList(Landroid/view/inputmethod/InputMethodInfo;Z)Ljava/util/List;

    move-result-object v11

    .line 81
    .local v11, subtypes:Ljava/util/List;,"Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v10

    .line 82
    .local v10, subtypeCount:I
    if-nez v10, :cond_3

    .line 83
    add-int/lit8 v7, v7, 0x1

    .line 77
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 85
    :cond_3
    const/4 v6, 0x0

    .local v6, j:I
    :goto_2
    if-ge v6, v10, :cond_2

    .line 86
    invoke-interface {v11, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/inputmethod/InputMethodSubtype;

    .line 87
    .local v9, subtype:Landroid/view/inputmethod/InputMethodSubtype;
    invoke-virtual {v9}, Landroid/view/inputmethod/InputMethodSubtype;->isAuxiliary()Z

    move-result v12

    if-nez v12, :cond_4

    .line 88
    add-int/lit8 v7, v7, 0x1

    .line 89
    move-object v8, v9

    .line 85
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 91
    :cond_4
    add-int/lit8 v1, v1, 0x1

    .line 92
    move-object v2, v9

    goto :goto_3

    .line 97
    .end local v4           #imi:Landroid/view/inputmethod/InputMethodInfo;
    .end local v6           #j:I
    .end local v9           #subtype:Landroid/view/inputmethod/InputMethodSubtype;
    .end local v10           #subtypeCount:I
    .end local v11           #subtypes:Ljava/util/List;,"Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    :cond_5
    const/4 v12, 0x1

    if-gt v7, v12, :cond_6

    const/4 v12, 0x1

    if-le v1, v12, :cond_7

    .line 98
    :cond_6
    const/4 v12, 0x1

    goto :goto_0

    .line 99
    :cond_7
    const/4 v12, 0x1

    if-ne v7, v12, :cond_a

    const/4 v12, 0x1

    if-ne v1, v12, :cond_a

    .line 100
    if-eqz v8, :cond_9

    if-eqz v2, :cond_9

    invoke-virtual {v8}, Landroid/view/inputmethod/InputMethodSubtype;->getLocale()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodSubtype;->getLocale()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_8

    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodSubtype;->overridesImplicitlyEnabledSubtype()Z

    move-result v12

    if-nez v12, :cond_8

    invoke-virtual {v8}, Landroid/view/inputmethod/InputMethodSubtype;->overridesImplicitlyEnabledSubtype()Z

    move-result v12

    if-eqz v12, :cond_9

    :cond_8
    const-string v12, "TrySuppressingImeSwitcher"

    invoke-virtual {v8, v12}, Landroid/view/inputmethod/InputMethodSubtype;->containsExtraValueKey(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_9

    .line 105
    const/4 v12, 0x0

    goto :goto_0

    .line 107
    :cond_9
    const/4 v12, 0x1

    goto :goto_0

    .line 109
    :cond_a
    const/4 v12, 0x0

    goto :goto_0
.end method

.method private declared-synchronized updateTile()V
    .locals 5

    .prologue
    .line 131
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/quicksettings/InputMethodTile;->mImm:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodManager;->getInputMethodList()Ljava/util/List;

    move-result-object v0

    .line 132
    .local v0, imis:Ljava/util/List;,"Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    iget-object v1, p0, Lcom/android/systemui/quicksettings/InputMethodTile;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/quicksettings/InputMethodTile;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/quicksettings/InputMethodTile;->mImm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v4, p0, Lcom/android/systemui/quicksettings/InputMethodTile;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-static {v1, v2, v3, v0, v4}, Lcom/android/systemui/quicksettings/InputMethodTile;->getCurrentInputMethodName(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/view/inputmethod/InputMethodManager;Ljava/util/List;Landroid/content/pm/PackageManager;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/quicksettings/InputMethodTile;->mLabel:Ljava/lang/String;

    .line 134
    const v1, 0x7f020077

    iput v1, p0, Lcom/android/systemui/quicksettings/InputMethodTile;->mDrawable:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 135
    monitor-exit p0

    return-void

    .line 131
    .end local v0           #imis:Ljava/util/List;,"Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method


# virtual methods
.method onPostCreate()V
    .locals 0

    .prologue
    .line 114
    invoke-direct {p0}, Lcom/android/systemui/quicksettings/InputMethodTile;->updateTile()V

    .line 115
    invoke-super {p0}, Lcom/android/systemui/quicksettings/QuickSettingsTile;->onPostCreate()V

    .line 116
    return-void
.end method

.method public toggleVisibility(Z)V
    .locals 1
    .parameter "show"

    .prologue
    .line 138
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/quicksettings/InputMethodTile;->mImm:Landroid/view/inputmethod/InputMethodManager;

    invoke-direct {p0, v0}, Lcom/android/systemui/quicksettings/InputMethodTile;->needsToShowImeSwitchOngoingNotification(Landroid/view/inputmethod/InputMethodManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/quicksettings/InputMethodTile;->showTile:Z

    .line 139
    invoke-virtual {p0}, Lcom/android/systemui/quicksettings/InputMethodTile;->updateResources()V

    .line 140
    return-void

    .line 138
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method updateQuickSettings()V
    .locals 2

    .prologue
    .line 126
    iget-object v1, p0, Lcom/android/systemui/quicksettings/InputMethodTile;->mTile:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;

    iget-boolean v0, p0, Lcom/android/systemui/quicksettings/InputMethodTile;->showTile:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->setVisibility(I)V

    .line 127
    invoke-super {p0}, Lcom/android/systemui/quicksettings/QuickSettingsTile;->updateQuickSettings()V

    .line 128
    return-void

    .line 126
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public updateResources()V
    .locals 0

    .prologue
    .line 120
    invoke-direct {p0}, Lcom/android/systemui/quicksettings/InputMethodTile;->updateTile()V

    .line 121
    invoke-super {p0}, Lcom/android/systemui/quicksettings/QuickSettingsTile;->updateResources()V

    .line 122
    return-void
.end method
