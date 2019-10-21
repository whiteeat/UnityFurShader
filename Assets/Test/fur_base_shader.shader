Shader "Fur/FurBase"
{
    Properties
    {
        _Color ("Color", Color) = (1, 1, 1, 1)
        _Specular ("Specular", Color) = (0, 0, 0, 1)
        _Shininess ("Shininess", Range(0.01, 128.0)) = 8.0
        
        _MainTex ("Texture", 2D) = "white" { }
    }

    SubShader
    {
        Tags { "RenderType" = "Opaque" "Queue" = "Geometry" }

        Pass
        {
            CGPROGRAM
            
            #pragma vertex vert_surface
            #pragma fragment frag_surface
            #define FURSTEP 0.00
            #include "fur_helper.cginc"
            
            ENDCG
            
        }
    }
}