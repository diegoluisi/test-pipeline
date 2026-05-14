package tests

import (
	"os/exec"
	"strings"
	"testing"
)

func TestHelloWorldOutput(t *testing.T) {
	cmd := exec.Command("go", "run", "../hello.go")

	output, err := cmd.CombinedOutput()
	if err != nil {
		t.Fatalf("go run failed: %v\n%s", err, output)
	}

	got := strings.TrimSpace(string(output))
	const want = "Hello World"
	if got != want {
		t.Fatalf("unexpected output: got %q, want %q", got, want)
	}
}
