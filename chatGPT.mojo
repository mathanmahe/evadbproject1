from python import Python
try:
    let os = Python.import_module("os")
    let pd = Python.import_module("pandas")
    let retry = Python.import_module("retry")
    let evadb = Python.import_module("evadb")

    # # Let's keep the constants within Mojo for validation 
    let _VALID_CHAT_COMPLETION_MODEL = ["gpt-4", "gpt-4-0314", "gpt-4-32k", "gpt-4-32k-0314", "gpt-3.5-turbo", "gpt-3.5-turbo-0301"]


    let openai = Python.import_module("openai")
except:
    print("exception")


fn main() raises:

    let os = Python.import_module("os")
    let pd = Python.import_module("pandas")
    let retry = Python.import_module("retry")
    let evadb = Python.import_module("evadb")

    let _VALID_CHAT_COMPLETION_MODEL = ["gpt-4", "gpt-4-0314", "gpt-4-32k", "gpt-4-32k-0314", "gpt-3.5-turbo", "gpt-3.5-turbo-0301"]


    let openai = Python.import_module("openai")

    print("control reaches here")
    openai.api_key = os.environ.get("OPENAI_KEY", "")
    print(openai.api_key)
    print(os.environ.get("OPENAI_KEY", ""))

    let chat = ChatGPT()
    # let response = chat.process_text("Your query", "Your content")
    print(chat.name())


struct ChatGPT:
    var model: String
    var temperature: Float64

    # var os
    # fn import_statements(self) raises:

    let os = Python.import_module("os")
    let pd = Python.import_module("pandas")
    let retry = Python.import_module("retry")
    let evadb = Python.import_module("evadb")

    # # Let's keep the constants within Mojo for validation 
    let _VALID_CHAT_COMPLETION_MODEL = ["gpt-4", "gpt-4-0314", "gpt-4-32k", "gpt-4-32k-0314", "gpt-3.5-turbo", "gpt-3.5-turbo-0301"]


    let openai = Python.import_module("openai")

    fn name(self) -> String:
        print(os.environ.get("OPENAI_KEY", ""))
        return "ChatGPT"

    fn __init__(inout self, model: String = "gpt-3.5-turbo", temperature: Float64 = 0.0) raises:
        if model not in _VALID_CHAT_COMPLETION_MODEL:
            # Throw an error or handle it accordingly
            print("Unsupported ChatGPT model")
            return
        self.model = model
        self.temperature = temperature
        # self.import_statements()
    
    # def forward(self, text_df):

        

    # Constructor for ChatGPT
    fn __init__(inout self, model: String = "gpt-3.5-turbo", temperature: Float64 = 0.0):
        # Check if the model is valid

        self.model = model
        self.temperature = temperature

    # This function simulates the API call to openai
    def forward(self, text_df) -> String:
        let response: String = "Response from ChatGPT"
        return response

    # This function handles the main logic
    def process_text(self, query: String, content: String, prompt: String = "") -> String:
        response = self.forward(text_df)
        return response


