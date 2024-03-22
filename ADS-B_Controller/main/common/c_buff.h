#ifndef C_BUFF_H
#define C_BUFF_H
/* Circular buffre implementation */

#include <stdbool.h>
#include <stdint.h>

struct CBuff;

struct CBuff* CBuff_Create(size_t capacity, size_t elem_size);
void CBuff_Destroy(struct CBuff* buffer);
bool CBuff_Pop(struct CBuff* buffer, void* item);
bool CBuff_Push(struct CBuff* buffer, const void* item);
size_t CBuff_GetLength(struct CBuff* buffer);
//TODO: destroy

#endif // C_BUFF_H
