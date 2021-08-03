import 'package:flutter/material.dart';

//四种视图
enum LoadState { State_Success, State_Error, State_Loading, State_Empty }

//根据状态来显示不同的视图
class LoadStateLayout extends StatefulWidget {
  final LoadState state; //页面状态
  final Widget successWidget; //成功状态
  final VoidCallback errorRetry; //错误状态

  LoadStateLayout(
      {Key? key,
      this.state = LoadState.State_Loading, //默认为加载状态
      required this.successWidget,
      required this.errorRetry})
      : super(key: key);

  @override
  _LoadStateLayoutState createState() => _LoadStateLayoutState();
}

class _LoadStateLayoutState extends State<LoadStateLayout> {
  @override
  Widget build(BuildContext context) {
    return Container(
      //宽高都充满屏幕剩余空间
      width: double.infinity,
      height: double.infinity,
      child: _buildWidget,
    );
  }

//根据不同的状态来显示不同的视图
  Widget? get _buildWidget {
    switch (widget.state) {
      case LoadState.State_Success:
        return widget.successWidget;
        break;
      case LoadState.State_Error:
        return _errorView;
        break;
      case LoadState.State_Loading:
        return _loadingView;
        break;
      case LoadState.State_Empty:
        return _emptyView;
        break;
      default:
        return null;
    }
  }

//加载视图
  Widget get _loadingView {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(color: Colors.transparent),
      alignment: Alignment.center,
      child: Container(
        height: 80,
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Color(0x88000000),
          borderRadius: BorderRadius.circular(6),
        ),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [CircularProgressIndicator(), Text('正在加载')]),
      ),
    );
  }

  //错误视图
  Widget get _errorView {
    return Container(
      width: double.infinity,
      height: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('加载失败'),
        ],
      ),
    );
  }

  //数据为空视图
  Widget get _emptyView {
    return Container(
      width: double.infinity,
      height: double.infinity,
      child: Column(
        children: [
          Image.asset('images/null.png'),
          Padding(
            padding: EdgeInsets.only(top: 10),
            child: Text('暂无内容'),
          )
        ],
      ),
    );
  }
}
