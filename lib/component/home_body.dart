import 'package:c_guy_translation_flutter/api/cg_api.dart';
import 'package:c_guy_translation_flutter/api/service/translation_service.dart';
import 'package:c_guy_translation_flutter/global/loading_enum.dart';
import 'package:c_guy_translation_flutter/model/translation_data_request.dart';
import 'package:c_guy_translation_flutter/resource/assets.gen.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

/**
 * @Author Cheng Pan
 * @Data 2024/9/2.
 */
class HomeBody extends StatefulWidget {
  const HomeBody({super.key});

  @override
  State<HomeBody> createState() => _HomeBodyState();
}

class _HomeBodyState extends State<HomeBody> with SingleTickerProviderStateMixin {
  final _textController = TextEditingController();
  var _translationText = '译文';
  final CancelToken _cancelToken = CancelToken();
  var _loadingStatus = LoadStatus.success;
  var _sourceLanguages = 'zh-Hans';
  late final _tabController = TabController(length: 2, vsync: this);

  @override
  void initState() {
    // TODO: implement initState
    _textController.addListener(() {
      final text = _textController.text;
      if (text.isNotEmpty) {
        _fetchSourceLanguages(text);
      }
    });
    super.initState();
  }

  @override
  void dispose() {
    _cancelToken.cancel();
    super.dispose();
  }

  // 获取源语言
  void _fetchSourceLanguages(String text) async {
    final service = TranslationRemoteService(CGService.dio());
    final res = await service.api.fetchSourceLanguages(text, _cancelToken);
    if (res.code == 200) {
      _sourceLanguages = res.data ?? '';
      setState(() {});
    }
  }

  // 翻译文本
  void _translate() async {
    try {
      setState(() {
        _loadingStatus = LoadStatus.loading;
      });
      final service = TranslationRemoteService(CGService.dio());
      final res = await service.api.fetchTranslationData(
        TranslationDataRequest(
          translateLanguage: 'en',
          text: [_textController.text],
          from: _sourceLanguages,
        ),
        _cancelToken,
      );
      if (res.code == 200) {
        _loadingStatus = LoadStatus.success;
        _translationText = res.data!.first;
      } else {
        _loadingStatus = LoadStatus.error;
      }
    } catch (e) {
      _loadingStatus = LoadStatus.error;
      print(e);
    } finally {
      if (mounted) {
        setState(() {});
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          width: double.infinity,
          height: 50,
          alignment: Alignment.center,
          color: Colors.white,
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Row(
            children: [
              CgAssets.icon.icon.image(
                width: 40,
                height: 40,
              ),
              const Text(
                'C-Guy Translation',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.purple,
                ),
              ),
            ],
          ),
        ),
        Container(
          margin: const EdgeInsets.only(top: 10),
          child: Container(
            width: 300,
            decoration: BoxDecoration(
                color: const Color(0xFFF7F8FA),
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.grey, width: 0.5)),
            child: TabBar(
              controller: _tabController,
              indicator: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30),
              ),
              tabs: const [
                Text('中文'),
                Text('英文'),
              ],
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
          child: Stack(
            alignment: Alignment.center,
            children: [
              Row(
                children: [
                  Expanded(child: _buildTextField()),
                  const SizedBox(width: 10),
                  Expanded(child: _buildText()),
                ],
              ),
              GestureDetector(
                onTap: _translate,
                child: Container(
                  width: 60,
                  height: 60,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: const Color(0xFFF7F8FA),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: _loadingStatus == LoadStatus.loading
                      ? CgAssets.lottie.icTranslationLoading.lottie(
                          width: 60,
                          height: 60,
                          repeat: true,
                        )
                      : CgAssets.image.icTranslation.svg(
                          width: 30,
                          height: 30,
                        ),
                ),
              )
            ],
          ),
        ),
        Expanded(
          child: Container(
            width: double.infinity,
            alignment: Alignment.center,
            padding: const EdgeInsets.all(16),
            color: Colors.white,
            child: const Text(
              '欢迎使用C佬翻译器',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.purple,
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildTextField() {
    return Container(
      width: double.infinity,
      height: 500,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: TextField(
        controller: _textController,
        maxLines: 5,
        style: const TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
          color: Colors.purple,
        ),
        decoration: const InputDecoration(
          hintText: '输入文本内容',
          hintStyle: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.grey,
          ),
          border: InputBorder.none,
          contentPadding: EdgeInsets.zero,
        ),
      ),
    );
  }

  Widget _buildText() {
    return Container(
      height: 500,
      width: double.infinity,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Text(
        _translationText,
        style: const TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
          color: Colors.purple,
        ),
      ),
    );
  }

  Widget _buildDropdown() {
    return DropdownButton<String>(
      value: 'English',
      items: const [
        DropdownMenuItem(
          value: 'English',
          child: Text('English'),
        ),
        DropdownMenuItem(
          value: 'Spanish',
          child: Text('Spanish'),
        ),
        DropdownMenuItem(
          value: 'French',
          child: Text('French'),
        ),
      ],
      onChanged: (value) {},
    );
  }
}
