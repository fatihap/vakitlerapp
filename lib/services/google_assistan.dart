class GoogleAssistantResponse {
  final String spokenResponse;

  GoogleAssistantResponse({required this.spokenResponse});

  Map<String, dynamic> toJson() {
    return {
      'spokenResponse': spokenResponse,
    };
  }
}
