listartodasasvms(){
    VBoxManage list vms
}

vizualizarmaquinasquenasativas(){
 VBoxManage list runningvms
}

rodandomaquinasembackgroud(){
    echo "digite o nome da sua maquina virtul"
    read maquina
    VBoxManage startvm "${maquina}" --type headless
}

coletar(){
    echo "Qual maquina deseja obter informação"
    read maquina
    VBoxManage showvminfo "${maquina}"
    echo "maquina coletada com sucesso"
}

pararmaquinas(){
    echo "digite qual maquina deseja parar"
    read maquina
    VBoxManage controlvm "${maquina}" poweroff
    echo " maquina ${maquina} parada."
}

while true; do

    echo "Escolha uma das opções abaixo:"
    echo "1 listar todas as vms"
    echo "2 vizualza maquinas atitvas"
    echo "3 rodar maquinas em backgroud"
    echo "4 coletar maquina"
    echo "5 parar maquina"
    echo "6 sair"
    read -p "Opção: " option


    case $option in
        1) listartodasasvms ;;
        2) vizualizarmaquinasquenasativas;;
        3) rodandomaquinasembackgroud;;
        4) coletar;;
        5) pararmaquinas;;
        6) echo "Saindo..."; exit 0;;
        *) echo "Opção invalida tente novamente" ;;
    esac

done