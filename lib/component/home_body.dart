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

class _HomeBodyState extends State<HomeBody> {
  final _textController = TextEditingController();
  var _translationText = '';
  final CancelToken _cancelToken = CancelToken();
  var _loadingStatus = LoadStatus.success;

  @override
  void dispose() {
    _cancelToken.cancel();
    super.dispose();
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
          from: 'zh-Hans',
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
    return Container(
      padding: const EdgeInsets.all(16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Stack(
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
          // _buildButton(),
        ],
      ),
    );
  }

  Widget _buildTextField() {
    return Container(
      width: double.infinity,
      height: 400,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: TextField(
        controller: _textController,
        maxLines: null,
        decoration: const InputDecoration(
          hintText: 'Enter text here',
          border: InputBorder.none,
          contentPadding: EdgeInsets.zero,
        ),
      ),
    );
  }

  Widget _buildText() {
    return Container(
      height: 400,
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
