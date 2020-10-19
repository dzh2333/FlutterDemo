typedef void EventCallback(arg);

class EventBus{

  EventBus._internal();

  static EventBus _singleton = new EventBus._internal();

  factory EventBus() => _singleton;

  var _eMap = new Map<Object, List<EventCallback>>();

  /// 添加订阅者
  void register(eventName, EventCallback f) {
    if (eventName == null || f == null) {
      return;
    }
    _eMap[eventName] ??= new List<EventCallback>();
    _eMap[eventName].add(f);
  }

  /// 移除订阅者
  void unRegister(eventName, [EventCallback f]) {
    var list = _eMap[eventName];
    if (eventName == null || list == null) return;
    if (f == null) {
      _eMap[eventName] = null;
    } else {
      list.remove(f);
    }
  }

  /// 触发事件，事件触发后该事件所有订阅者会被调用
  void post(eventName, [arg]) {
    var list = _eMap[eventName];
    if (list == null) return;
    int len = list.length - 1;
    //反向遍历，防止订阅者在回调中移除自身带来的下标错位
    for (var i = len; i > -1; --i) {
      list[i](arg);
    }
  }
}