/// @description Insert description here
// You can write your code in this editor
startPointX = 0;
startPointY = 0;

endPointX = 0;
endPointY = 0;

theta = 0;
distance = 0;

animate_sprite = false;
visible = false;
trackMouse = false; 

#region //shader stuff and code you should ignore
outlineThickness = true;

upixelH = shader_get_uniform(outlineShader,"pixelH");
upixelW = shader_get_uniform(outlineShader,"pixelW");
texelW = outlineThickness*texture_get_texel_width(sprite_get_texture(sprite_index,0));
texelH = outlineThickness*texture_get_texel_height(sprite_get_texture(sprite_index,0));
#endregion

ARROW_ANIMATION_ALARM = 100000;


arrow_animation_timer = ARROW_ANIMATION_ALARM;