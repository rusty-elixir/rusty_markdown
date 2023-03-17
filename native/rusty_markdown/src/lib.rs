#[rustler::nif]
fn parse(markdown_input: &str) -> String {
    let parser = pulldown_cmark::Parser::new(markdown_input);
    let mut html_output = String::new();
    pulldown_cmark::html::push_html(&mut html_output, parser);

    html_output
}

rustler::init!("Elixir.RustyMarkdown", [parse]);
