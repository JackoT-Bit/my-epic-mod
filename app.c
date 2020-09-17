#include <stdlib.h>
#include <windows.h>

int main()
{
	int message = MessageBoxA(NULL,"are you actually stupid",
				"bruh", MB_YESNO);

	if (message == 7) {
		MessageBoxA(NULL,"yes you are dont fucking lie to me",
				"h", MB_OK);
    }

    return 0;
}