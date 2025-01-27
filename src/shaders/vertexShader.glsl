uniform float uFrequency;


void main() {
    // モデル座標系の位置を取得
    vec4 modelPosition = modelMatrix * vec4(position, 1.0);

    // z方向にオフセットを加える
    //波
   modelPosition.z += sin(modelPosition.x * uFrequency)*0.1;

    // ビュー座標系の位置
    vec4 viewPosition = viewMatrix * modelPosition;

    // 投影座標系の位置
    vec4 projectionPosition = projectionMatrix * viewPosition;

    // 最終的なクリップ座標系の位置
    gl_Position = projectionPosition;
     //gl_Position = projectionMatrix * viewMatrix * modelMatrix  * vec4(position ,1.0);
}
