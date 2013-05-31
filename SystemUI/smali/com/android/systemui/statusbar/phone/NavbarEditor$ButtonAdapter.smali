.class Lcom/android/systemui/statusbar/phone/NavbarEditor$ButtonAdapter;
.super Ljava/lang/Object;
.source "NavbarEditor.java"

# interfaces
.implements Landroid/widget/ListAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/NavbarEditor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ButtonAdapter"
.end annotation


# instance fields
.field inflater:Landroid/view/LayoutInflater;

.field items:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/statusbar/NavigationButtons$ButtonInfo;",
            ">;"
        }
    .end annotation
.end field

.field takenItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/statusbar/NavigationButtons$ButtonInfo;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/NavbarEditor;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/NavbarEditor;Z)V
    .locals 5
    .parameter
    .parameter "smallButtons"

    .prologue
    .line 384
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NavbarEditor$ButtonAdapter;->this$0:Lcom/android/systemui/statusbar/phone/NavbarEditor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 385
    #getter for: Lcom/android/systemui/statusbar/phone/NavbarEditor;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/NavbarEditor;->access$100(Lcom/android/systemui/statusbar/phone/NavbarEditor;)Landroid/content/Context;

    move-result-object v3

    const-string v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/NavbarEditor$ButtonAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 386
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/NavbarEditor$ButtonAdapter;->takenItems:Ljava/util/ArrayList;

    .line 387
    iget-object v3, p1, Lcom/android/systemui/statusbar/phone/NavbarEditor;->mIds:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 388
    .local v1, id:I
    #getter for: Lcom/android/systemui/statusbar/phone/NavbarEditor;->mParent:Landroid/view/ViewGroup;
    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/NavbarEditor;->access$000(Lcom/android/systemui/statusbar/phone/NavbarEditor;)Landroid/view/ViewGroup;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/NavigationButtons$ButtonInfo;

    .line 389
    .local v2, vTag:Lcom/android/systemui/statusbar/NavigationButtons$ButtonInfo;
    if-eqz v2, :cond_0

    sget-object v3, Lcom/android/systemui/statusbar/NavigationButtons;->EMPTY:Lcom/android/systemui/statusbar/NavigationButtons$ButtonInfo;

    if-eq v2, v3, :cond_0

    .line 392
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NavbarEditor$ButtonAdapter;->takenItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 394
    .end local v1           #id:I
    .end local v2           #vTag:Lcom/android/systemui/statusbar/NavigationButtons$ButtonInfo;
    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    sget-object v4, Lcom/android/systemui/statusbar/NavigationButtons;->BUTTON_MAP:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/NavbarEditor$ButtonAdapter;->items:Ljava/util/ArrayList;

    .line 396
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NavbarEditor$ButtonAdapter;->items:Ljava/util/ArrayList;

    sget-object v4, Lcom/android/systemui/statusbar/NavigationButtons;->HOME:Lcom/android/systemui/statusbar/NavigationButtons$ButtonInfo;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 398
    if-nez p2, :cond_2

    .line 399
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NavbarEditor$ButtonAdapter;->items:Ljava/util/ArrayList;

    sget-object v4, Lcom/android/systemui/statusbar/NavigationButtons;->CONDITIONAL_MENU:Lcom/android/systemui/statusbar/NavigationButtons$ButtonInfo;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 400
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NavbarEditor$ButtonAdapter;->items:Ljava/util/ArrayList;

    sget-object v4, Lcom/android/systemui/statusbar/NavigationButtons;->ALWAYS_MENU:Lcom/android/systemui/statusbar/NavigationButtons$ButtonInfo;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 404
    :goto_1
    return-void

    .line 402
    :cond_2
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NavbarEditor$ButtonAdapter;->items:Ljava/util/ArrayList;

    sget-object v4, Lcom/android/systemui/statusbar/NavigationButtons;->MENU_BIG:Lcom/android/systemui/statusbar/NavigationButtons$ButtonInfo;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 466
    const/4 v0, 0x1

    return v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 408
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavbarEditor$ButtonAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "arg0"

    .prologue
    .line 413
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavbarEditor$ButtonAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "arg0"

    .prologue
    .line 418
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .parameter "arg0"

    .prologue
    .line 423
    const/4 v0, 0x0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter "arg0"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 428
    if-nez p2, :cond_0

    .line 429
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavbarEditor$ButtonAdapter;->inflater:Landroid/view/LayoutInflater;

    const v2, 0x1090011

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 431
    :cond_0
    const v1, 0x1020014

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 432
    .local v0, text:Landroid/widget/TextView;
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavbarEditor$ButtonAdapter;->takenItems:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavbarEditor$ButtonAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 433
    const-string v1, "#181818"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 437
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavbarEditor$ButtonAdapter;->this$0:Lcom/android/systemui/statusbar/phone/NavbarEditor;

    #getter for: Lcom/android/systemui/statusbar/phone/NavbarEditor;->mParent:Landroid/view/ViewGroup;
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/NavbarEditor;->access$000(Lcom/android/systemui/statusbar/phone/NavbarEditor;)Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavbarEditor$ButtonAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/NavigationButtons$ButtonInfo;

    iget v1, v1, Lcom/android/systemui/statusbar/NavigationButtons$ButtonInfo;->displayId:I

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 438
    return-object p2

    .line 435
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 443
    const/4 v0, 0x1

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 448
    const/4 v0, 0x0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 453
    const/4 v0, 0x0

    return v0
.end method

.method public isEnabled(I)Z
    .locals 2
    .parameter "arg0"

    .prologue
    .line 471
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavbarEditor$ButtonAdapter;->takenItems:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavbarEditor$ButtonAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 472
    const/4 v0, 0x0

    .line 474
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 458
    return-void
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 462
    return-void
.end method
