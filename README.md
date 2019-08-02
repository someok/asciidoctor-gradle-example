# asciidoctor-gradle-example

## 缘起

之前一个项目中需要一份比较复杂的文档，使用 `asciidoctor` 配合 `gradle` 插件实现了，阶段性完成之后
写了篇 blog [Asciidoctor 与 gradle 整合生成 PDF备忘](https://my.oschina.net/someok/blog/3078678)
记录了下配置与采坑过程。

不过后来需要对样式之类的进一步优化，所以创建了个示例项目用来测试效果，也就是当前这个了。

## 项目目标

- [X] 文档分隔成多个文件编辑并支持合并 （Asciidoctor 语法自带 include）
- [X] 文档支持嵌套式目录 （Asciidoctor 语法支持深度列表，且支持 1.2.3 格式标题前缀）
- [X] 语法足够完善，但又不要过分难用，这个除了 `markdown` 过度简单之外，多种轻量级标记语言都支持，asciidoc 也不例外
- [X] 编译方法足够简单 （Asciidoctor + gradle 配置好之后编译一行命令的事，关键是对 java 程序员足够友好）
- [X] 生成 `HTML5` 和 `PDF` 两种格式文档

上述目标通过 [asciidoctor-gradle-plugin](https://github.com/asciidoctor/asciidoctor-gradle-plugin)
编译 asciidoc 文档实现，配置过程中虽然坑不少——例如 PDF 中文问题——不过解决之后写起文档来还是很顺畅的。

编译也很简单，一行语句：
```bash
./gradlew asciidoctor
```

## 项目说明

- src/docs/asciidoc/index.adoc： 示例文档
- src/docs/asciidoc/docinfo.html： 自定义生成的 HTML5 head，增加了 `favicon`
- data/fonts：提供 `思源黑体` 和 `Mono` 两种中英文字体，用于生成 PDF 时候不乱吗
- data/themes/KaiGenGothicCN-theme.yml： PDF theme 配置
- build.gradle： gradle 配置

## 生成文件样例

- [index.html](https://someok.github.io/asciidoctor-gradle-example/)
- [index.pdf](https://someok.github.io/asciidoctor-gradle-example/index.pdf)

## 参考

- [AsciiDoc 语法快速参考（中文版）](https://asciidoctor.cn/docs/asciidoc-syntax-quick-reference/)
- [AsciiDoc 官网](https://asciidoctor.org/)
- [asciidoctor-gradle-plugin](https://github.com/asciidoctor/asciidoctor-gradle-plugin)
- [Asciidoctor PDF Theming Guide](https://github.com/asciidoctor/asciidoctor-pdf/blob/master/docs/theming-guide.adoc)
- [思源黑体的变体怀源黑体](https://github.com/minjiex/kaigen-gothic)
- [怀源黑体的斜体来源](https://github.com/chloerei/asciidoctor-pdf-cjk-kai_gen_gothic/releases/tag/v0.1.0-fonts)
