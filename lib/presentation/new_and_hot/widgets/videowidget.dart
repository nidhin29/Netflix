import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../search/widgets/search_result.dart';

class VideoWidget extends StatelessWidget {
  final String poster;
  const VideoWidget({
    super.key, required this.poster,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 5),
          child: SizedBox(
            width: double.infinity,
            height: 200,
            child: Image.network(
              poster.trim(),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Positioned(
          bottom: 10,
          right: 10,
          child: CircleAvatar(
              backgroundColor: Colors.black.withOpacity(0.6),
              child: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.volume_mute_outlined,
                  ))),
        )
      ],
    );
  }
}
