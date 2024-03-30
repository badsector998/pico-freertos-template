#include "FreeRTOS.h"
#include "task.h"
#include "pico/stdlib.h"
#include "pico/stdio.h"


void led_task()
{   
    while (true) {
        gpio_put(PICO_DEFAULT_LED_PIN, 1);
        vTaskDelay(500);
        gpio_put(PICO_DEFAULT_LED_PIN, 0);
        vTaskDelay(500);
    }
}

void led_task2()
{
    while (true) {
        gpio_put(PICO_DEFAULT_LED_PIN, 1);
        vTaskDelay(300);
        gpio_put(PICO_DEFAULT_LED_PIN, 0);
        vTaskDelay(300);
    }
}

int main()
{
    // stdio_init_all();

    gpio_init(PICO_DEFAULT_LED_PIN);
    gpio_set_dir(PICO_DEFAULT_LED_PIN, GPIO_OUT);

    xTaskCreate(led_task, "LED_Task", 256, NULL, 1, NULL);
    xTaskCreate(led_task2, "LED_Task_2", 256, NULL, 1, NULL);
    
    vTaskStartScheduler();

    while(1){};
}