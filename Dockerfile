# Build stage
FROM alpine:3.19 AS builder

# Install minimal build dependencies
RUN apk add --no-cache \
    cmake \
    g++ \
    make \
    musl-dev

WORKDIR /build

# Copy project files
COPY CMakeLists.txt .
COPY agent-lib/ agent-lib/

# Build the project
RUN mkdir build && \
    cd build && \
    cmake .. && \
    cmake --build .

# Runtime stage
FROM alpine:3.19

# Install only runtime dependencies (minimal)
# Add common shell utilities and ls/dir/ll support.
RUN apk add --no-cache libstdc++ bash coreutils busybox-extras

# Provide common aliases for interactive shells.
RUN printf '%s\n' \
  "alias ll='ls -alF'" \
  "alias dir='ls -alF'" \
  > /etc/profile.d/aliases.sh

WORKDIR /app

# Copy only the built executable from builder stage
COPY --from=builder /build/build/agent-lib-exe .

# Run the executable
ENTRYPOINT ["./agent-lib-exe"]
