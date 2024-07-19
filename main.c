#include <unistd.h>
#include <X11/extensions/XTest.h>

int main(void)
{
    char *display_name = XDisplayName(NULL);
    Display *display = XOpenDisplay(display_name);

    for (;;) {
        XTestFakeRelativeMotionEvent(display, 1, 1, 0);
        XFlush(display);
        XTestFakeRelativeMotionEvent(display, -1, -1, 0);
        XFlush(display);
        sleep(10);
    }

    return 0;
}
