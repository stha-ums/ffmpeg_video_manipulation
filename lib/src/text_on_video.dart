import 'dart:ui';

import 'package:flutter/foundation.dart';

import 'draw_text_color.dart';

enum Ft_load_flags {
  no_scale,
  no_hinting,
  render,
  no_bitmap,
  vertical_layout,
  force_autohint,
  crop_bitmap,
  pedantic,
  ignore_global_advance_width,
  no_recurse,
  ignore_transform,
  monochrome,
  linear_design,
  no_autohint,
}

class DrawText {
  /// Used to draw a box around text using the background color. The value must be either 1 (enable) or 0 (disable). The default value of box is 0.

  final int box;

  /// Set the width of the border to be drawn around the box using boxcolor. The default value of boxborderw is 0.

  final double boxborderw;

  /// The color to be used for drawing box around text. For the syntax of this option, check the (ffmpeg-utils)"Color"section in the ffmpeg-utils manual.
  /// The default value of boxcolor is "white".
  final Color boxcolor;

  /// Set the line spacing in pixels of the border to be drawn around the box using box. The default value of line_spacing is 0.
  final double line_spacing;

  ///Set the width of the border to be drawn around the text using bordercolor. The default value of borderw is 0.
  final double borderw;

  ///Set the color to be used for drawing border around text. For the syntax of this option, check the (ffmpeg-utils)"Color"section in the ffmpeg-utils manual.
  ///The default value of bordercolor is "black".
  final Color bordercolor;

  ///If true, check and fix text coords to avoid clipping.
  final bool fix_bounds;

  ///The color to be used for drawing fonts. For the syntax of this option, check the (ffmpeg-utils)"Color"section in the ffmpeg-utils manual.
  ///The default value of fontcolor is "black".
  final Color fontcolor;

  ///String which is expanded the same way as text to obtain dynamic fontcolor value. By default this option has empty value and is not processed. When this option is set, it overrides fontcolor option.
  final Color fontcolor_expr;

  ///The font family to be used for drawing text. By default Sans.
  final String font;

  ///The font file to be used for drawing text. The path must be included. This parameter is mandatory if the fontconfig support is disabled.
  final String fontfile;

  ///Draw the text applying alpha blending. The value can be a number between 0.0 and 1.0. The expression accepts the same variables x, y as well. The default value is 1. Please see fontcolor_expr.
  final double alpha;

  ///The font size to be used for drawing text. The default value of fontsize is 16.
  final double fontsize;

  ///If set to 1, attempt to shape the text (for example, reverse the order of right-to-left text and join Arabic characters) before drawing it. Otherwise, just draw the text exactly as given. By default 1 (if supported).
  final int text_shaping;

  ///The flags to be used for loading the fonts.
  /// The flags map the corresponding flags supported by libfreetype, and are a combination of the following values:
  /// [default]
  /// [no_scale]
  /// [no_hinting]
  /// [render]
  /// [no_bitmap]
  /// [vertical_layout]
  /// [force_autohint]
  /// [crop_bitmap]
  /// [pedantic]
  /// [ignore_global_advance_width]
  /// [no_recurse]
  /// [ignore_transform]
  /// [monochrome]
  /// [linear_design]
  /// [no_autohint]
  ///Default value is "default".

  ///For more information consult the documentation for the FT_LOAD_* libfreetype flags.
  final Ft_load_flags ft_load_flags;

  ///The color to be used for drawing a shadow behind the drawn text. For the syntax of this option, check the (ffmpeg-utils)"Color"section in the ffmpeg-utils manual.
  ///The default value of shadowcolor is "black".
  final Color shadowcolor;

  ///The x and y offsets for the text shadow position with respect to the position of the text. They can be either positive or negative values. The default value for both is "0".
  final double shadowx;

  ///The x and y offsets for the text shadow position with respect to the position of the text. They can be either positive or negative values. The default value for both is "0".
  final double shadowy;

  ///The starting frame number for the n/frame_num variable. The default value is "0".
  final int start_number;

  ///The size in number of spaces to use for rendering the tab. Default value is 4.
  final int tabsize;

  ///Set the initial timecode representation in "hh:mm:ss[:;.]ff"format. It can be used with or without text parameter. timecode_rate option must be specified.
  Duration timecode;

  ///Set the timecode frame rate (timecode only). Value will be rounded to nearest integer. Minimum value is "1". Drop-frame timecode is supported for frame rates 30 & 60.
  final double timecode_rate;

  ///Set the timecode frame rate (timecode only). Value will be rounded to nearest integer. Minimum value is "1". Drop-frame timecode is supported for frame rates 30 & 60.

  final double rate;

  ///Set the timecode frame rate (timecode only). Value will be rounded to nearest integer. Minimum value is "1". Drop-frame timecode is supported for frame rates 30 & 60.
  final double r;

  ///If set to 1, the output of the timecode option will wrap around at 24 hours. Default is 0 (disabled).
  final int tc24hmax;

  ///The text string to be drawn. The text must be a sequence of UTF-8 encoded characters. This parameter is mandatory if no file is specified with the parameter textfile.
  final String text;

  ///A text file containing text to be drawn. The text must be a sequence of UTF-8 encoded characters.
  ///This parameter is mandatory if no text string is specified with the parameter text.
  ///If both text and textfile are specified, an error is thrown.
  final String textfile;

  ///If set to 1, the textfile will be reloaded before each frame. Be sure to update it atomically, or it may be read partially, or even fail.
  final int reload;

  ///The expressions which specify the offsets where text will be drawn within the video frame. They are relative to the top/left border of the output image.
  ///The default value of x and y is "0".

  final double x;

  ///The expressions which specify the offsets where text will be drawn within the video frame. They are relative to the top/left border of the output image.
  ///The default value of x and y is "0".
  final double y;

  ///input display aspect ratio, it is the same as (w / h) * sar
  final double dar;

// todo Idk what are those so need will implement later
//horizontal and vertical chroma subsample values. For example for the pixel format "yuv422p"hsub is 2 and vsub is 1.
// hsub
// vsub

  /// the height of each text line
  final double line_h;

  /// the height of each text line
  final double lh;

//TODO : implement the input height
// ///the input height
// final double main_h;
// ///the input height

// final double h;
// ///the input height

// final double H;

// main_w, w, W
// the input width

// max_glyph_a, ascent
//the maximum distance from the baseline to the highest/upper grid coordinate used to place a glyph outline point, for all the rendered glyphs. It is a positive value, due to the grid’s orientation with the Y axis upwards.

// max_glyph_d, descent
  ///the maximum distance from the baseline to the lowest grid coordinate used to place a glyph outline point, for all the rendered glyphs. This is a negative value, due to the grid’s orientation, with the Y axis upwards.

// max_glyph_h
  ///maximum glyph height, that is the maximum height for all the glyphs contained in the rendered text, it is equivalent to ascent - descent.

// max_glyph_w
// maximum glyph width, that is the maximum width for all the glyphs contained in the rendered text

  ///the number of input frame, starting from

  final int n;

// rand(min, max)
// return a random number included between min and max

  ///The input sample aspect ratio.
  final double sar;

// timestamp expressed in seconds, NAN if the input timestamp is unknown
// final Duration t;

// text_h, th
// the height of the rendered text

// text_w, tw
// the width of the rendered text

// x
// y
// ///the x and y offset coordinates where the text is drawn.

// ///These parameters allow the x and y expressions to refer to each other, so you can for example specify y=x/dar.

// pict_type
// ///A one character description of the current frame’s picture type.

// pkt_pos
// ///The current packet’s position in the input file or stream (in bytes, from the start of the input). A value of -1 indicates this info is not available.

// pkt_duration
// ///The current packet’s duration, in seconds.

// pkt_size
// The current packet’s size (in bytes).

  DrawText({
    this.box,
    this.boxborderw,
    this.boxcolor,
    this.line_spacing,
    this.borderw,
    this.bordercolor,
    this.fix_bounds,
    this.fontcolor,
    this.fontcolor_expr,
    this.font,
    this.fontfile,
    this.alpha,
    this.fontsize,
    this.text_shaping,
    this.ft_load_flags,
    this.shadowcolor,
    this.shadowx,
    this.shadowy,
    this.start_number,
    this.tabsize,
    this.timecode_rate,
    this.rate,
    this.r,
    this.tc24hmax,
    this.text,
    this.textfile,
    this.reload,
    this.x,
    this.y,
    this.dar,
    this.line_h,
    this.lh,
    this.n,
    this.sar,
  });

  String get command => _commandGenerator();
  String _commandGenerator() {
    String command = '';
    if (box != null) command = command + 'box=$box:';
    if (boxborderw != null) command = command + 'boxborderw=$boxborderw:';
    if (boxcolor != null)
      command = command + 'boxcolor=${DrawTextColor.getColorString(boxcolor)}:';
    if (line_spacing != null) command = command + 'line_spacing=$line_spacing:';
    if (borderw != null) command = command + 'borderw=$borderw:';
    if (bordercolor != null)
      command =
          command + 'bordercolor=${DrawTextColor.getColorString(bordercolor)}:';
    if (fix_bounds != null) command = command + 'fix_bounds=$fix_bounds:';
    if (fontcolor != null)
      command =
          command + 'fontcolor=${DrawTextColor.getColorString(fontcolor)}:';
    if (fontcolor_expr != null)
      command = command +
          'fontcolor_expr=${DrawTextColor.getColorString(fontcolor_expr)}:';
    if (font != null) command = command + 'font=$font:';
    if (fontfile != null) command = command + 'fontfile=$fontfile:';
    if (alpha != null) command = command + 'alpha=$alpha:';
    if (fontsize != null) command = command + 'fontsize=$fontsize:';
    if (text_shaping != null) command = command + 'text_shaping=$text_shaping:';
    if (ft_load_flags != null)
      command = command + 'ft_load_flags=$describeEnum(ft_load_flags):';
    if (shadowcolor != null)
      command =
          command + 'shadowcolor=${DrawTextColor.getColorString(shadowcolor)}:';
    if (shadowx != null) command = command + 'shadowx=$shadowx:';
    if (shadowy != null) command = command + 'shadowy=$shadowy:';
    if (start_number != null) command = command + 'start_number=$start_number:';
    if (tabsize != null) command = command + 'tabsize=$tabsize:';
    if (timecode_rate != null)
      command = command + 'timecode_rate=$timecode_rate:';
    if (rate != null) command = command + 'rate=$rate:';
    if (r != null) command = command + 'r=$r';
    if (tc24hmax != null) command = command + 'tc24hmax=$tc24hmax:';
    if (text != null) command = command + "text='$text':";
    if (textfile != null) command = command + 'textfile=$textfile';
    if (reload != null) command = command + 'reload=$reload:';
    if (x != null) command = command + 'x=$x:';
    if (y != null) command = command + 'y=$y:';
    if (dar != null) command = command + 'dar=$dar:';
    if (line_h != null) command = command + 'line_h=$line_h:';
    if (lh != null) command = command + 'lh=$lh:';
    if (n != null) command = command + 'n=$n:';
    if (sar != null) command = command + 'sar=$sar:';
    return 'drawtext=$command';
  }
}
