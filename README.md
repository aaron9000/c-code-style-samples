# ⚡ C Code Style Samples

A comparison of the different style options offered by [clang-format](https://clang.llvm.org/docs/ClangFormat.html). The unformatted code sample is 75 lines.

| Option      | Line Count | Reference                                                                                                               |
| ----------- | ---------- | ----------------------------------------------------------------------------------------------------------------------- |
| `Chromium`  | 73         | [Chromium’s style guide](https://chromium.googlesource.com/chromium/src/+/refs/heads/main/styleguide/styleguide.md)     |
| `GNU`       | 86         | [GNU coding standards](https://www.gnu.org/prep/standards/standards.html)                                               |
| `Google`    | 69         | [Google’s C++ style guide](https://google.github.io/styleguide/cppguide.html)                                           |
| `LLVM`      | 71         | [LLVM coding standards](https://llvm.org/docs/CodingStandards.html)                                                     |
| `Microsoft` | 79         | [Microsoft’s style guide](https://docs.microsoft.com/en-us/visualstudio/ide/editorconfig-code-style-settings-reference) |
| `Mozilla`   | 85         | [Mozilla’s style guide](https://firefox-source-docs.mozilla.org/code-quality/coding-style/index.html)                   |
| `WebKit`    | 73         | [WebKit’s style guide](https://www.webkit.org/coding/coding-style.html)                                                 |

---

### Google

```c
#include <stdio.h>

// Short comment

// Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod
// tempor incididunt ut labore et dolore magna aliqua

#define MAX_PLAYERS (4)

typedef enum {
  Difficulty_easy,
  Difficulty_hard,
} Difficulty;

typedef struct {
  const char* name;
  float position[3];
  int health;
} Player;

typedef struct {
  Difficulty difficulty;
  Player players[MAX_PLAYERS];
  int player_count;
} Game;

typedef Player (*FindPlayerByNameFunc)(const char* name);

static int really_long_function(int argument_a, int argument_b, int argument_c,
                                int argument_d, int argument_e, int argument_f,
                                int argument_g) {
  return argument_a + argument_b + argument_c + argument_d + argument_e +
         argument_f + argument_g;
}

static void play(const Game* game) {
  int monsters = 0;
  switch (game->difficulty) {
    case Difficulty_easy:
      monsters = 5;
      break;
    case Difficulty_hard:
      monsters = 10;
      break;
  }

  for (int i = 0; i < game->player_count; i++) {
    const Player* player = &game->players[i];
    const int damage = monsters * 10;
    if (damage >= player->health) {
      printf("%s died fighting %i monsters\n", player->name, monsters);
    } else {
      printf("%s survived\n", player->name);
    }
  }
}

int main() {
  const Player p1 = {
      .name = "Steve",
      .position = {0.f, 0.f, 0.f},
      .health = 100,
  };

  const Game game = {
      .difficulty = Difficulty_easy, .players = {p1}, .player_count = 1};

  play(&game);
}
```

