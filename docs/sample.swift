        VStack(spacing: 6) {
            Text("Welcome To")
                .font(.title2.weight(.medium))
                .foregroundStyle(.secondary)
                .offset(y: animate ? 0 : 20)
                .opacity(animate ? 1 : 0)
            
            Text("Roger.dev")
                .font(.system(size: 34, weight: .bold))
                .foregroundStyle(
                    LinearGradient(
                        colors: [.blue, .purple],
                        startPoint: .leading,
                        endPoint: .trailing
                    )
                )
                .scaleEffect(animate ? 1 : 0.85)
                .opacity(animate ? 1 : 0)
        }
        .animation(
            .spring(response: 0.8).delay(0.15),
            value: animate
        )

var inputs: some View {
        
        VStack(spacing: 18) {
            TextField("Username", text: $username)
                .textInputAutocapitalization(.never)
                .padding()
                .background(.ultraThinMaterial)
                .clipShape(RoundedRectangle(cornerRadius: 16))

            SecureField("Password", text: $password)
                .padding()
                .background(.ultraThinMaterial)
                .clipShape(RoundedRectangle(cornerRadius: 16))
        }
        
    }