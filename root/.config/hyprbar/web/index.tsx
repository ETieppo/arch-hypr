// HyprBar - TSX Configuration
// Este arquivo define a estrutura visual da sua barra usando TSX

interface BarProps {
    position: "top" | "bottom" | "left" | "right";
}

// Componentes disponíveis:
// - <Workspaces /> - Lista de workspaces do Hyprland
// - <WindowTitle /> - Título da janela ativa
// - <Clock /> - Relógio do sistema
// - <Battery /> - Indicador de bateria
// - <Volume /> - Controle de volume
// - <Network /> - Status de rede
// - <Cpu /> - Uso de CPU
// - <Memory /> - Uso de RAM
// - <Temperature /> - Temperatura do sistema

const Bar = () => {
    return (
        <div class="bar">
            <div class="left">
                <Workspaces />
            </div>
            <div class="center">
                <WindowTitle />
            </div>
            <div class="right">
                <Cpu />
                <Memory />
                <Temperature />
                <Clock />
            </div>
        </div>
    );
};

export default Bar;
