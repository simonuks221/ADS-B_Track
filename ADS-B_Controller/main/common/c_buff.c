#include <string.h>
#include <stdlib.h>

#include "c_buff.h"

struct CBuff {
    void* data;
    size_t capacity;
    size_t tail;
    size_t head;
    size_t elem_size;
};

struct CBuff* CBuff_Create(size_t capacity, size_t elem_size) {
    struct CBuff* buffer = (struct CBuff*)malloc(sizeof(struct CBuff));
    if (buffer == NULL) {
        return NULL;
    }

    buffer->data = malloc(capacity * elem_size);
    if (buffer->data == NULL) {
        free(buffer);
        return NULL;
    }

    buffer->capacity = capacity;
    buffer->tail = 0;
    buffer->head = 0;
    buffer->elem_size = elem_size;

    return buffer;
}

void CBuff_Destroy(struct CBuff* buffer) {
    if (buffer != NULL) {
        free(buffer->data);
        free(buffer);
    }
}

bool CBuff_Push(struct CBuff* buffer, const void* item) {
    if ((buffer == NULL) || (item == NULL)) {
        return false;
    }

    if ((buffer->head + 1) % buffer->capacity == buffer->tail) {
        /* Buffer is full */
        return false;
    }

    void* dest = (char*)buffer->data + buffer->head * buffer->elem_size;
    memcpy(dest, item, buffer->elem_size);
    buffer->head = (buffer->head + 1) % buffer->capacity;
    return true;
}

bool CBuff_Pop(struct CBuff* buffer, void* item) {
    if ((buffer == NULL) || (item == NULL)) {
        return NULL;
    }

    if (buffer->tail == buffer->head) {
        /* Buffer empty */
        return NULL;
    }

    void* src = (char*)buffer->data + buffer->tail * buffer->elem_size;
    memcpy(item, src, buffer->elem_size);
    buffer->tail = (buffer->tail + 1) % buffer->capacity;

    return true;
}