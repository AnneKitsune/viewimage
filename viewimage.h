#ifndef __FBV_H__
#define __FBV_H__

int fb_display(unsigned char *rgbbuff,
               unsigned int x_size, unsigned int y_size,
               unsigned int x_pan, unsigned int y_pan,
               unsigned int x_offs, unsigned int y_offs);
int getCurrentRes(int *x, int *y);
void vt_setup();

struct image
{
	int width, height;
	unsigned char *rgb;
	int do_free;
};

unsigned char * simple_resize(unsigned char * orgin,int ox,int oy,int dx,int dy);
unsigned char * color_average_resize(unsigned char * orgin,int ox,int oy,int dx,int dy);
unsigned char * rotate(unsigned char *i, int ox, int oy, int rot);

#endif

