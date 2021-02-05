import ProductCode
import Test.Hspec


main =
  hspec $ do
    describe "WidgetCode" $ do
      it "instanciate a WidgetCode from string \"W1234\"" $ do
        fmap value (createWidgetCode "W1234") `shouldBe` Right "W1234"
      it "rejects a string that do not start with W" $ do
        fmap value (createWidgetCode "H1234") `shouldBe` Left "L'identifiant de Widget n'est pas valide"
      it "rejects a string that does not end with 4 digits" $ do
        fmap value (createWidgetCode "W123A") `shouldBe` Left "L'identifiant de Widget n'est pas valide"
      it "rejects a string that is too long" $ do
        fmap value (createWidgetCode "W12345") `shouldBe` Left "L'identifiant de Widget n'est pas valide"
    describe "GizmoCode" $ do
          it "instanciate a GizmoCode from string \"G1234\"" $ do
            fmap value (createGizmoCode "G1234") `shouldBe` Right "G1234"
          it "rejects a string that do not start with W" $ do
            fmap value (createGizmoCode "H1234") `shouldBe` Left "L'identifiant de Gizmo n'est pas valide"
          it "rejects a string that does not end with 4 digits" $ do
            fmap value (createGizmoCode "W123A") `shouldBe` Left "L'identifiant de Gizmo n'est pas valide"
          it "rejects a string that is too long" $ do
            fmap value (createGizmoCode "W12345") `shouldBe` Left "L'identifiant de Gizmo n'est pas valide"
