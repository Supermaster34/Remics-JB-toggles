.class public Lcom/android/systemui/statusbar/NavigationButtons;
.super Ljava/lang/Object;
.source "NavigationButtons.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/NavigationButtons$ButtonInfo;
    }
.end annotation


# static fields
.field public static final ALWAYS_MENU:Lcom/android/systemui/statusbar/NavigationButtons$ButtonInfo;

.field public static final BACK:Lcom/android/systemui/statusbar/NavigationButtons$ButtonInfo;

.field public static final BUTTON_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/systemui/statusbar/NavigationButtons$ButtonInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final CONDITIONAL_MENU:Lcom/android/systemui/statusbar/NavigationButtons$ButtonInfo;

.field public static final EMPTY:Lcom/android/systemui/statusbar/NavigationButtons$ButtonInfo;

.field public static final HOME:Lcom/android/systemui/statusbar/NavigationButtons$ButtonInfo;

.field public static final IS_SLOT_SMALL:[Z

.field public static final MENU_BIG:Lcom/android/systemui/statusbar/NavigationButtons$ButtonInfo;

.field public static final RECENT:Lcom/android/systemui/statusbar/NavigationButtons$ButtonInfo;

.field public static final SEARCH:Lcom/android/systemui/statusbar/NavigationButtons$ButtonInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .prologue
    const v4, 0x7f0200f6

    const v12, 0x7f0a007b

    const/16 v11, 0x52

    const/4 v10, 0x0

    const v9, 0x7f0200fd

    .line 45
    const/4 v0, 0x6

    new-array v0, v0, [Z

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/systemui/statusbar/NavigationButtons;->IS_SLOT_SMALL:[Z

    .line 114
    new-instance v0, Lcom/android/systemui/statusbar/NavigationButtons$ButtonInfo;

    const v1, 0x7f0a002e

    const v2, 0x7f0a007a

    const/4 v3, 0x3

    const v5, 0x7f0200f7

    const-string v7, "home"

    move v6, v4

    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/statusbar/NavigationButtons$ButtonInfo;-><init>(IIIIIILjava/lang/String;)V

    sput-object v0, Lcom/android/systemui/statusbar/NavigationButtons;->HOME:Lcom/android/systemui/statusbar/NavigationButtons$ButtonInfo;

    .line 118
    new-instance v0, Lcom/android/systemui/statusbar/NavigationButtons$ButtonInfo;

    const v1, 0x7f0a0033

    const v5, 0x7f020100

    const-string v7, "menu0"

    move v2, v12

    move v3, v11

    move v4, v9

    move v6, v9

    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/statusbar/NavigationButtons$ButtonInfo;-><init>(IIIIIILjava/lang/String;)V

    sput-object v0, Lcom/android/systemui/statusbar/NavigationButtons;->CONDITIONAL_MENU:Lcom/android/systemui/statusbar/NavigationButtons$ButtonInfo;

    .line 122
    new-instance v0, Lcom/android/systemui/statusbar/NavigationButtons$ButtonInfo;

    const v1, 0x7f0a0034

    const v5, 0x7f020100

    const-string v7, "menu1"

    move v2, v12

    move v3, v11

    move v4, v9

    move v6, v9

    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/statusbar/NavigationButtons$ButtonInfo;-><init>(IIIIIILjava/lang/String;)V

    sput-object v0, Lcom/android/systemui/statusbar/NavigationButtons;->ALWAYS_MENU:Lcom/android/systemui/statusbar/NavigationButtons$ButtonInfo;

    .line 126
    new-instance v0, Lcom/android/systemui/statusbar/NavigationButtons$ButtonInfo;

    const v1, 0x7f0a0035

    const v4, 0x7f0200fe

    const v5, 0x7f0200ff

    const-string v7, "menu2"

    move v2, v12

    move v3, v11

    move v6, v10

    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/statusbar/NavigationButtons$ButtonInfo;-><init>(IIIIIILjava/lang/String;)V

    sput-object v0, Lcom/android/systemui/statusbar/NavigationButtons;->MENU_BIG:Lcom/android/systemui/statusbar/NavigationButtons$ButtonInfo;

    .line 130
    new-instance v0, Lcom/android/systemui/statusbar/NavigationButtons$ButtonInfo;

    const v1, 0x7f0a0031

    const v2, 0x7f0a0079

    const/4 v3, 0x4

    const v4, 0x7f0200cf

    const v5, 0x7f0200d2

    const v6, 0x7f0200d3

    const-string v7, "back"

    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/statusbar/NavigationButtons$ButtonInfo;-><init>(IIIIIILjava/lang/String;)V

    sput-object v0, Lcom/android/systemui/statusbar/NavigationButtons;->BACK:Lcom/android/systemui/statusbar/NavigationButtons$ButtonInfo;

    .line 134
    new-instance v0, Lcom/android/systemui/statusbar/NavigationButtons$ButtonInfo;

    const v1, 0x7f0a0030

    const v2, 0x7f0a0079

    const/16 v3, 0x54

    const v4, 0x7f020106

    const v5, 0x7f020107

    const v6, 0x7f020108

    const-string v7, "search"

    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/statusbar/NavigationButtons$ButtonInfo;-><init>(IIIIIILjava/lang/String;)V

    sput-object v0, Lcom/android/systemui/statusbar/NavigationButtons;->SEARCH:Lcom/android/systemui/statusbar/NavigationButtons$ButtonInfo;

    .line 138
    new-instance v0, Lcom/android/systemui/statusbar/NavigationButtons$ButtonInfo;

    const v1, 0x7f0a002f

    const v2, 0x7f0a007c

    const v4, 0x7f020102

    const v5, 0x7f020103

    const v6, 0x7f020104

    const-string v7, "recent"

    move v3, v10

    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/statusbar/NavigationButtons$ButtonInfo;-><init>(IIIIIILjava/lang/String;)V

    sput-object v0, Lcom/android/systemui/statusbar/NavigationButtons;->RECENT:Lcom/android/systemui/statusbar/NavigationButtons$ButtonInfo;

    .line 142
    new-instance v0, Lcom/android/systemui/statusbar/NavigationButtons$ButtonInfo;

    const v1, 0x7f0a0032

    const v2, 0x7f0a00d1

    const v4, 0x7f0200ca

    const v5, 0x7f0200cb

    const v6, 0x7f0200cc

    const-string v7, "empty"

    move v3, v10

    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/statusbar/NavigationButtons$ButtonInfo;-><init>(IIIIIILjava/lang/String;)V

    sput-object v0, Lcom/android/systemui/statusbar/NavigationButtons;->EMPTY:Lcom/android/systemui/statusbar/NavigationButtons$ButtonInfo;

    .line 154
    new-instance v8, Ljava/util/LinkedHashMap;

    invoke-direct {v8}, Ljava/util/LinkedHashMap;-><init>()V

    .line 155
    .local v8, temp:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/android/systemui/statusbar/NavigationButtons$ButtonInfo;>;"
    const-string v0, "home"

    sget-object v1, Lcom/android/systemui/statusbar/NavigationButtons;->HOME:Lcom/android/systemui/statusbar/NavigationButtons$ButtonInfo;

    invoke-interface {v8, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    const-string v0, "menu0"

    sget-object v1, Lcom/android/systemui/statusbar/NavigationButtons;->CONDITIONAL_MENU:Lcom/android/systemui/statusbar/NavigationButtons$ButtonInfo;

    invoke-interface {v8, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    const-string v0, "menu1"

    sget-object v1, Lcom/android/systemui/statusbar/NavigationButtons;->ALWAYS_MENU:Lcom/android/systemui/statusbar/NavigationButtons$ButtonInfo;

    invoke-interface {v8, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    const-string v0, "menu2"

    sget-object v1, Lcom/android/systemui/statusbar/NavigationButtons;->MENU_BIG:Lcom/android/systemui/statusbar/NavigationButtons$ButtonInfo;

    invoke-interface {v8, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    const-string v0, "back"

    sget-object v1, Lcom/android/systemui/statusbar/NavigationButtons;->BACK:Lcom/android/systemui/statusbar/NavigationButtons$ButtonInfo;

    invoke-interface {v8, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    const-string v0, "search"

    sget-object v1, Lcom/android/systemui/statusbar/NavigationButtons;->SEARCH:Lcom/android/systemui/statusbar/NavigationButtons$ButtonInfo;

    invoke-interface {v8, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    const-string v0, "recent"

    sget-object v1, Lcom/android/systemui/statusbar/NavigationButtons;->RECENT:Lcom/android/systemui/statusbar/NavigationButtons$ButtonInfo;

    invoke-interface {v8, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    const-string v0, "empty"

    sget-object v1, Lcom/android/systemui/statusbar/NavigationButtons;->EMPTY:Lcom/android/systemui/statusbar/NavigationButtons$ButtonInfo;

    invoke-interface {v8, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    invoke-static {v8}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/NavigationButtons;->BUTTON_MAP:Ljava/util/Map;

    .line 164
    return-void

    .line 45
    :array_0
    .array-data 0x1
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    return-void
.end method

.method public static loadButtonMap(Landroid/content/Context;)[Lcom/android/systemui/statusbar/NavigationButtons$ButtonInfo;
    .locals 7
    .parameter "context"

    .prologue
    const/4 v6, 0x6

    .line 171
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "nav_buttons"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 173
    .local v3, saved:Ljava/lang/String;
    if-nez v3, :cond_0

    .line 174
    const-string v3, "empty|back|home|recent|empty|menu0"

    .line 176
    :cond_0
    const-string v4, "\\|"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 177
    .local v0, buttons:[Ljava/lang/String;
    array-length v4, v0

    if-ge v4, v6, :cond_1

    .line 178
    const-string v4, "empty|back|home|recent|empty|menu0"

    const-string v5, "\\|"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 181
    :cond_1
    new-array v2, v6, [Lcom/android/systemui/statusbar/NavigationButtons$ButtonInfo;

    .line 182
    .local v2, result:[Lcom/android/systemui/statusbar/NavigationButtons$ButtonInfo;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v4, v2

    if-ge v1, v4, :cond_3

    .line 183
    sget-object v4, Lcom/android/systemui/statusbar/NavigationButtons;->BUTTON_MAP:Ljava/util/Map;

    aget-object v5, v0, v1

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/NavigationButtons$ButtonInfo;

    aput-object v4, v2, v1

    .line 184
    aget-object v4, v2, v1

    if-nez v4, :cond_2

    .line 185
    sget-object v4, Lcom/android/systemui/statusbar/NavigationButtons;->EMPTY:Lcom/android/systemui/statusbar/NavigationButtons$ButtonInfo;

    aput-object v4, v2, v1

    .line 182
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 188
    :cond_3
    return-object v2
.end method

.method public static storeButtonMap(Landroid/content/Context;[Lcom/android/systemui/statusbar/NavigationButtons$ButtonInfo;)V
    .locals 6
    .parameter "context"
    .parameter "map"

    .prologue
    const/4 v5, 0x6

    .line 192
    array-length v2, p1

    if-eq v2, v5, :cond_0

    .line 193
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Navigation button count does not match! Is: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, p1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " expected: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 196
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 197
    .local v1, sb:Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v5, :cond_2

    .line 198
    if-eqz v0, :cond_1

    const-string v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    :cond_1
    aget-object v2, p1, v0

    #getter for: Lcom/android/systemui/statusbar/NavigationButtons$ButtonInfo;->key:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/systemui/statusbar/NavigationButtons$ButtonInfo;->access$000(Lcom/android/systemui/statusbar/NavigationButtons$ButtonInfo;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 201
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "nav_buttons"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 203
    return-void
.end method
