//
//  OnboardingView.swift
//  SwiftUIBootcamp
//
//  Created by MEWO on 16.03.2022.
//

import SwiftUI

struct OnboardingView: View {
    
    /*
     0 - Welcome Page
     1 - Add Name
     2 - Add Age
     3 - Add Gender
     */
    
    @State var onboardingState: Int = 0
    let transition: AnyTransition = .asymmetric(
        insertion: .move(edge: .trailing),
        removal: .move(edge: .leading))
    
    // ONBOARDING INPUTS
    @State var nameOfTextField: String = ""
    @State var ageOfSlider: Double = 18
    @State var gender: String = ""
    
    // FOR THE ALERT
    @State var alertTitle : String = ""
    @State var showalert: Bool = false

    // APP STORAGE
    @AppStorage("name") var currentUserName: String?
    @AppStorage("age") var currentUserAge: Int?
    @AppStorage("gender") var currentUserGender: String?
    @AppStorage("signed_in") var currentUserSignedIn : Bool = false

    
    
    var body: some View {
        ZStack{
            //content
                //even when we are chancing this zstack will remain on the screen
            ZStack{
                switch onboardingState{
                case 0:
                    welcomeSection
                        .transition(transition)
                case 1 :
                    addNameSection
                        .transition(transition)
                case 2:
                    addAgeSection
                        .transition(transition)
                case 3 :
                    addGenderSection
                        .transition(transition)
                default:
                    RoundedRectangle(cornerRadius: 25.0)
                        .foregroundColor(.blue)
                }
            }
            //button
            VStack{
                Spacer()
                signInButton
                    
            }.padding(30)
        }.alert(isPresented: $showalert, content: {
            return Alert(title: Text(alertTitle))
        })
    }
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
            .background(Color(#colorLiteral(red: 0.05882352963, green: 0.180392161, blue: 0.2470588237, alpha: 1)))
            .ignoresSafeArea()
    }
}
// MARK: COMPONENTS
extension OnboardingView{
    private var signInButton: some View {
        Text( onboardingState == 0 ? "sign in" : onboardingState == 3 ? "finish" : "next" )
            .font(.title)
            .foregroundColor(Color(#colorLiteral(red: 0.05882352963, green: 0.180392161, blue: 0.2470588237, alpha: 1)))
            .frame(maxWidth: .infinity)
            .frame(height: 50)
            .background(Color.white)
            .cornerRadius(10)
            .onTapGesture {
                handleNextButtonPressed()
            }
    }
    private var welcomeSection: some View{
        VStack(spacing: 10){
            Image(systemName: "heart.text.square")
                .resizable()
                .scaledToFit()
                .foregroundColor(.white)
                .frame(width: 200, height: 200)
                .font(.largeTitle)
                .padding()
            
            Text("find your homework slave")
                .font(.title)
                .fontWeight(.semibold)
                .foregroundColor(.white)
                .padding(.horizontal)
        }
    }
    

    private var addNameSection: some View {
        VStack{
            Text("what is your name")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundColor(.white)
            TextField("enter your name", text: $nameOfTextField)
                .font(.headline)
                .frame(height: 55)
                .frame(width: 300)
                .padding(.horizontal)
                .background(Color.gray)
                .cornerRadius(15)
        }
    }
    private var addAgeSection: some View {
        VStack {
            Text("what is your age")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundColor(.white)
            Text("\(String(format: "%.0f", ageOfSlider))")
                .font(.largeTitle)
                .foregroundColor(.gray)
                .padding()
            Slider(
                value: $ageOfSlider,
                in: 18...100,
                step: 1)
                .font(.headline)
                .frame(height: 55)
                .frame(width: 300)
                .padding(.horizontal)
                .cornerRadius(15)
                .accentColor(.white)
        }
    }
    private var addGenderSection: some View {
        VStack(){
            Text("What's your gender")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundColor(.white)
            Picker(
                selection: $gender ,
                label: Text(gender.count > 1 ? gender : "Select a gender")
                    .font(.headline)
                    .foregroundColor(.gray)
                    .frame(width: 200)
                    .frame(height: 50)
                    .background(Color.white)
                    .cornerRadius(15)
                    .padding()
                ,
                content: {
                    Text("Male").tag("Male")
                    Text("Female").tag("Female")
                    Text("Non-Binary").tag("Non-Binary")
            }).pickerStyle(MenuPickerStyle())
            
        }
    }
}
// MARK: FUNCTIONS
extension OnboardingView{
    
    func handleNextButtonPressed(){
        
        //CHECK INPUTS
        switch onboardingState {
        case 1:
            guard nameOfTextField.count >= 2 else{
                showAlert(title: "your name must be at least  3 characters long")
                return
            }
        case 3:
            guard gender.count >= 1 else {
                showAlert(title: "please select a gender before moving forward")
                return
            }
        default:
            break
        }
        
        
        //GO TO NEXT SECTION
        if onboardingState == 3 {
            signIn()
        }
        else{
            withAnimation(.spring()){
                onboardingState += 1
            }
        }
    }
    
    func signIn(){
        currentUserName = nameOfTextField
        currentUserAge = Int(ageOfSlider)
        currentUserGender = gender
        withAnimation(.spring()){
            currentUserSignedIn = true
        }
    }
    
    func showAlert(title: String){
        alertTitle = title
        showalert.toggle()
    }
}
