#include <signal.h>
#include <unistd.h>
#include <X11/extensions/XTest.h>

volatile sig_atomic_t stop;

void signal_handler(int signum)
{
    stop = 1;
}

int main(void)
{
    char *display_name = XDisplayName(NULL);
    Display *display = XOpenDisplay(display_name);

    signal(SIGINT, signal_handler);

    while (!stop) {
        XTestFakeRelativeMotionEvent(display, 1, 1, 0);
        XFlush(display);
        XTestFakeRelativeMotionEvent(display, -1, -1, 0);
        XFlush(display);
        sleep(10);
    }

    return 0;
}
