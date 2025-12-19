use iced::{
    Length, Theme,
    widget::{column, container, image, row, text, text_input},
};

pub fn login_manager() -> iced::Result {
    iced::application("Input Demo", App::update, App::view)
        .theme(|_| Theme::Dark)
        .run()
}

#[derive(Default)]
struct App {
    password: String,
}

#[derive(Debug, Clone)]
enum Password {
    InputChanged(String),
}

impl App {
    fn update(&mut self, message: Password) {
        match message {
            Password::InputChanged(value) => self.password = value,
        }
    }

    fn view(&self) -> iced::Element<'_, Password> {
        let content = row![
            column![
                text_input("Digite algo...", &self.password)
                    .on_input(Password::InputChanged)
                    .padding(12)
                    .size(18),
                text(&self.password).size(24).color([0., 0., 0.0])
            ]
            .spacing(15),
            // TODO: adicionar
            image("assets/wall.png")
        ];
        container(content)
            .padding(30)
            .width(Length::Fill)
            .height(Length::Fill)
            .center_x(Length::Fill)
            .center_y(Length::Fill)
            .into()
    }
}

fn get_users() {}
