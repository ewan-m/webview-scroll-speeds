import * as React from "react";
import { WebView } from "react-native-webview";
import { Text, SafeAreaView } from "react-native";

export default function App() {
  return (
    <SafeAreaView style={{ flex: 1 }}>
      <WebView style={{ flex: 1 }} source={{ uri: "https://expo.dev" }} />
      <Text style={{ padding: 16 }}>Deceleration rate = unset</Text>
    </SafeAreaView>
  );
}
