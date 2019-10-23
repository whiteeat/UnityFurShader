Shader "Fur/FurBaseWithTag"
{
    Properties
    {
        _Color ("Color", Color) = (1, 1, 1, 1)
        _Specular ("Specular", Color) = (0, 0, 0, 1)
        _Shininess ("Shininess", Range(0.01, 128.0)) = 8.0
        
        _MainTex ("Texture", 2D) = "white" { }
        _FurTex ("Fur Pattern", 2D) = "white" { }
        
        _FurLength ("Fur Length", Range(0.0, 1)) = 0.5
    }
    
    SubShader
    {
        Tags { "RenderType" = "Fur" "Queue" = "Geometry" }

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