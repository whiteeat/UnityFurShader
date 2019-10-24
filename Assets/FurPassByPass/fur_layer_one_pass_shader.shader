Shader "Fur/FurLayerOnePass"
{
    Properties
    {
        _Color ("Color", Color) = (1, 1, 1, 1)
        _Specular ("Specular", Color) = (0, 0, 0, 1)
        _Shininess ("Shininess", Range(0.01, 128.0)) = 8.0
        
        _MainTex ("Texture", 2D) = "white" { }
        _FurTex ("Fur Pattern", 2D) = "white" { }
        
        _FurLength ("Fur Length", Range(0.0, 1)) = 0.5

        _FurStep ("Fur Step", Range(0.0, 1.0)) = 0.0
    }
    
    SubShader
    {
        Tags { "RenderType" = "Transparent" "IgnoreProjector" = "True" "Queue" = "Transparent" }
        // Cull Off
        ZWrite On
        Blend SrcAlpha OneMinusSrcAlpha

        Pass
        {
            CGPROGRAM
            
            #pragma vertex vert_base
            #pragma fragment frag_base
            #include "fur_helper_one_pass.cginc"
            
            ENDCG
            
        }
    }
}