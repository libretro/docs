# XML Shaders (Discontinued)

!!! Warning
    XML shaders have been discontinued and are no longer available in RetroArch. This page should be considered only for historical reference.

## History

XML shaders were originally implemented in bSNES as single pass GLSL shaders. The extension is `.shader` and is marked up with XML. These shaders were written against the fixed-function pipeline and is now referred to as a legacy XML shaders by RetroArch. The prefix ofruby originates from bSNES’ driver module, ruby::.

## Example legacy XML shader

```
<?xml version="1.0" encoding="UTF-8"?>
<!--
     Blank shader
-->
<shader language="GLSL">
   <fragment><![CDATA[
      uniform sampler2D rubyTexture;
      void main()
      {
         gl_FragColor = texture2D(rubyTexture, gl_TexCoord[0].xy);
      }
   ]]></fragment>
</shader>
```

RetroArch implemented this legacy shader spec to be compatible with many shaders written at the time. It is also referred to as v1.0 XML shaders. This specification was then extended to support multi-pass, scaling arguments, etc, which resulted in v1.1 XML shaders (spec here). It is still legacy as it uses fixed-function features. RetroArch implements v1.1 XML shaders, and some more features to be feature equivalent with the Cg shader implementation. bSNES did not implement v1.1 and adoption of this spec was slowed down.

## Modern XML shaders

Legacy XML shaders used fixed function, and they would therefore never work with modern GL (GLES, GL3.x+). To fix this, RetroArch extended the XML shader spec. Fixed function cruft like gl_ModelViewProjectionMatrix, gl_MultiTexCoord0 and gl_Vertex was replaced with uniforms and attribute streams. The modern XML shader spec in RetroArch focuses on being compatible with GLES2 (and compatible with GL 3.x+ as well).

The ruby prefix was later deprecated and you could use TexCoord, VertexCoord etc. For compatibility reasons, the ruby prefix is still accepted.

## Example modern shader

```
<?xml version="1.0" encoding="UTF-8"?>
<shader language="GLSL" style="GLES2">
   <vertex><![CDATA[
      attribute vec2 rubyTexCoord;
      attribute vec2 rubyVertexCoord;
      uniform mat4 rubyMVPMatrix;
      varying vec2 tex_coord;
      void main()
      {
         gl_Position = rubyMVPMatrix * vec4(rubyVertexCoord, 0.0, 1.0);
         tex_coord = rubyTexCoord;
      }
   ]]></vertex>
   <fragment><![CDATA[
      uniform sampler2D rubyTexture;
      varying vec2 tex_coord;
      void main()
      {
         gl_FragColor = texture2D(rubyTexture, tex_coord);
      }
   ]]></fragment>
</shader>
```

## Moving off XML shaders

XML shaders as a whole are deprecated in RetroArch, and will not be selectable in RGUI. You can still use them via video_shader config option. To use GLSL in RetroArch, the new GLSL shaders format is used, which mirrors the Cg shaders implementation quite well. The new GLSL shaders only support modern style, no fixed function. To convert XML shaders into straight GLSL, see GLSL shaders.
