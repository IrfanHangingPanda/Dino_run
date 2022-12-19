import 'package:flame/components.dart';
import 'package:flame/game.dart';
import 'package:flame/parallax.dart';
import 'package:flame/sprite.dart';

class DinoRun extends FlameGame {
  SpriteComponent dinoPlayer = SpriteComponent();
  @override
  Future<void> onLoad() async {
    final parallaxBackground = await loadParallaxComponent(
      [
        ParallaxImageData('parallax/plx-1.png'),
        ParallaxImageData('parallax/plx-2.png'),
        ParallaxImageData('parallax/plx-3.png'),
        ParallaxImageData('parallax/plx-4.png'),
        ParallaxImageData('parallax/plx-5.png'),
      ],
      baseVelocity: Vector2(10, 0),
      velocityMultiplierDelta: Vector2(1.5, 0),
    );
    add(parallaxBackground);

    dinoPlayer
      ..sprite = await loadSprite('DinoSprites_tard.gif')
      ..size = Vector2(100, 100)
      ..x = 100
      ..y = 100;
    final earthBacground = await loadParallaxComponent([
      ParallaxImageData('parallax/plx-6.png'),
    ],
        size: Vector2(size[0], 50),
        baseVelocity: Vector2(30, 0),
        velocityMultiplierDelta: Vector2(1.5, 0),
        position: Vector2(0, size[1] - 50));
    add(earthBacground);
    add(dinoPlayer);
  }
}
