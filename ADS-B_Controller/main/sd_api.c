#include <string.h>
#include <sys/unistd.h>
#include <sys/stat.h>
#include "esp_log.h"
#include "esp_vfs_fat.h"
#include "sdmmc_cmd.h"
#include "sd_api.h"
#include "common.h"

#include "gpio_api.h"

#define EXAMPLE_MAX_CHAR_SIZE    64
#define MOUNT_POINT "/sdcard"

#define FILE_NAME "packets.txt"

const static char * LOG_TAG = "SD";

static sdmmc_host_t host = SDSPI_HOST_DEFAULT();
static sdmmc_card_t *card;

/* Checks if card is inserted using CardDetect pin */
static bool SP_API_IsCardConnected() {
    /* Card inserted if low level */
    return !GPIO_API_Read(eGpioSdDetect);
}

static bool SD_API_Write(const char *path, char *data) {
    ESP_LOGI(LOG_TAG, "Opening file %s", path);
    FILE *f = fopen(path, "a");
    if (f == NULL) {
        ESP_LOGE(LOG_TAG, "Failed to open file for writing");
        return false;
    }
    fprintf(f, data);
    fclose(f);
    ESP_LOGI(LOG_TAG, "File written");
    return true;
}

static bool SD_API_Read(const char *path) {
    ESP_LOGI(LOG_TAG, "Reading file %s", path);
    FILE *f = fopen(path, "r");
    if (f == NULL) {
        ESP_LOGE(LOG_TAG, "Failed to open file for reading");
        return false;
    }
    char line[EXAMPLE_MAX_CHAR_SIZE];
    fgets(line, sizeof(line), f);
    fclose(f);

    // strip newline
    char *pos = strchr(line, '\n');
    if (pos) {
        *pos = '\0';
    }
    ESP_LOGI(LOG_TAG, "Read from file: '%s'", line);

    return true;
}

static bool SD_API_MountCard(void) {
    esp_vfs_fat_sdmmc_mount_config_t mount_config = {
        .format_if_mount_failed = true,
        .max_files = 5,
        .allocation_unit_size = 16 * 1024
    };
    sdspi_device_config_t slot_config = SDSPI_DEVICE_CONFIG_DEFAULT();
    slot_config.gpio_cs = SD_CS_PIN;
    slot_config.host_id = host.slot;
    if(esp_vfs_fat_sdspi_mount(MOUNT_POINT, &host, &slot_config, &mount_config, &card) != ESP_OK) {
        ESP_LOGI(LOG_TAG, "Failed mounting card");
        return false;
    }
    ESP_LOGI(LOG_TAG, "Mounted SD");
    sdmmc_card_print_info(stdout, card);
    return true;
}

static bool SD_API_UnmountCard(void) {
    esp_vfs_fat_sdcard_unmount(MOUNT_POINT, card);
    ESP_LOGI(LOG_TAG, "Card unmounted");

    //deinitialize the bus after all devices are removed
    //spi_bus_free(host.slot);
    return true;
}

bool SD_API_CreateFile(sString_t *file_name) {
    sString_t file_path;
    char path_string[EXAMPLE_MAX_CHAR_SIZE] = {0};
    file_path.content = path_string;

    file_path.length = snprintf(file_path.content, EXAMPLE_MAX_CHAR_SIZE, "%s/%s", MOUNT_POINT, file_name->content);
    char data[EXAMPLE_MAX_CHAR_SIZE];
    snprintf(data, EXAMPLE_MAX_CHAR_SIZE, "%s %s!\n", "Hello", card->cid.name);
    if(SD_API_Write(file_path.content, data) != ESP_OK) {
        ESP_LOGE(LOG_TAG, "Failed creating file");
        return false;
    }
    return true;
}

bool SD_API_Init(void) {
    /* Initialise SPI */
    spi_bus_config_t bus_cfg = {
        .mosi_io_num = SD_MOSI_PIN,
        .miso_io_num = SD_MISO_PIN,
        .sclk_io_num = SD_CLK_PIN,
        .quadwp_io_num = -1,
        .quadhd_io_num = -1,
        .max_transfer_sz = 4000,
    };
    if(spi_bus_initialize(host.slot, &bus_cfg, SDSPI_DEFAULT_DMA) != ESP_OK) {
        ESP_LOGI(LOG_TAG, "Failed initialise SPI");
        return true;
    }
    ESP_LOGI(LOG_TAG, "Initialised SPI");
    /* Check if card connected */
    if(!SP_API_IsCardConnected()) {
        ESP_LOGI(LOG_TAG, "Card not detected");
        return true;
    }

    if(!SD_API_MountCard()) {
        return false;
    }
    SD_API_Write(MOUNT_POINT"/"FILE_NAME, "2024-04-17 17:07:05 fc75e5564d6bdc\n");
    SD_API_Write(MOUNT_POINT"/"FILE_NAME, "2024-04-17 17:10:10 468ee7f48591ee\n");
    SD_API_Write(MOUNT_POINT"/"FILE_NAME, "2024-04-17 17:13:49 0bdef451ea6f8b\n");
    SD_API_Write(MOUNT_POINT"/"FILE_NAME, "2024-04-17 17:25:40 4eda99b94ded01\n");

    SD_API_UnmountCard();
    return true;

    /* Example functions */
    // const char *file_foo = MOUNT_POINT"/foo.txt";
    // // Check if destination file exists before renaming
    // struct stat st;
    // if (stat(file_foo, &st) == 0) {
    //     // Delete it if it exists
    //     unlink(file_foo);
    // }
    // // Rename original file
    // ESP_LOGI(LOG_TAG, "Renaming file %s to %s", file_hello, file_foo);
    // if (rename(file_hello, file_foo) != 0) {
    //     ESP_LOGE(LOG_TAG, "Rename failed");
    //     return true;
    // }

    // if(SD_API_Read(file_foo) != ESP_OK) {
    //     return true;
    // }

    // Format FATFS
    /*
    if(esp_vfs_fat_sdcard_format(mount_point, card) != ESP_OK) {
        ESP_LOGE(LOG_TAG, "Failed to format FATFS");
        return true;
    }

    if (stat(file_foo, &st) == 0) {
        ESP_LOGI(LOG_TAG, "file still exists");
        return true;
    } else {
        ESP_LOGI(LOG_TAG, "file doesnt exist, format done");
    }
    */
}