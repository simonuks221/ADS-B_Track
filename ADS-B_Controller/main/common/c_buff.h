#ifndef C_BUFF_H
#define C_BUFF_H
/* Circular buffre implementation */

#include <stdbool.h>
#include <stdint.h>

typedef struct {
    void* data;
    size_t capacity;
    size_t tail;
    size_t head;
    size_t elem_size;
} CBuff;

CBuff* CBuff_Create(size_t capacity, size_t elem_size);
void CBuff_Destroy(CBuff* buffer);
bool CBuff_Pop(CBuff* buffer, void* item);


#endif // C_BUFF_H
