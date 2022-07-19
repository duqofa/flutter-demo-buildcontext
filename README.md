# What is BuildContext?

- The location of the Widget in the widget tree.

+ MediaQuery.of(context)
+ Navigator.of(context)
+ Scaffold.of()
+ Snackbar.of(context)
+ Theme.of(context)

# Use "Builder" to provide context when needed

# What do you need to know about context
- Context is a link to the location of a widget in the tree structure of widgets.
- Context can belong to only one widget.
- If a widget has child widgets, then the context of the parent widget becomes the parent context for the contexts of direct child elements.
- A widget is visible only in its own context or in the context of its parent context.
- => Thus, it becomes clear that knowing the children’s context, you can easily find the parent widget. Conversely, using the parent context you can find the child widget.