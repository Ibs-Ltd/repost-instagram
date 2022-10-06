class FAQItem {
  String expandedValue;
  String headerValue;
  bool isExpanded;

  FAQItem(
      {required this.headerValue,
        required this.expandedValue,
        this.isExpanded = false});
}

List<FAQItem> getItemList() {
  List<FAQItem> list = [];
  list.add(FAQItem(headerValue: "Is it free?", expandedValue: "The app have one monthly subscription plan that only cast 4.99 per month and we would give you 3 days for free to try it out."));
  list.add(FAQItem(headerValue: "What are the benefits of a Premium Membership?", expandedValue: "This app will allow you to repost any post without watermark, also you can make infinite repost with the subscription"));
  list.add(FAQItem(headerValue: "How do I become a Premium User?", expandedValue: "You just need to try it out the Subscription and begin to use the app"));
  list.add(FAQItem(headerValue: "I bought Premium before, how can I restore it?", expandedValue: "You just need to buy the subscription again on the subscription part of the app"));
  return list;
}