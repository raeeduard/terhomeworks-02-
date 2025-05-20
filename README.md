# terhomeworks-02-

1.4

В блоке файла main.tf были указаны недопустимые значения ресурсов ВМ для выбранной платформы

Было:

resource "yandex_compute_instance" "platform" {
  
  name        = "netology-develop-platform-web"
  
  platform_id = "standart-v4"
 
  resources {
    
    cores         = 1
    
    memory        = 1
    
    core_fraction = 5

Стало: 

resource "yandex_compute_instance" "platform" {
  
  name        = "netology-develop-platform-web"
  
  platform_id = "standard-v3"
  
  resources {
    
    cores         = 2
    
    memory        = 1
    
    core_fraction = 20

1.6

Параметры preemptible = true и core_fraction=5 могу пригодиться для экономии ресурсов и затрат для самых простейших задач и тестирования.
