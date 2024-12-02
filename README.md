# **Procedural Map Generator in Odin**

This project is a **2D procedural map generator** developed in the Odin programming language. It leverages algorithms such as *Perlin Noise* and *Cellular Automata* to create terrains, caves, or labyrinthine maps, providing flexibility and customization for simulations, games, or procedural generation studies.

---

## **Features**
- **Procedural Generation:**
  - Smooth terrains using *Perlin Noise*.
  - Delimited caves and areas with *Cellular Automata*.
  - Mazes created using *Binary Space Partitioning (BSP)*.

- **Customization:**
  - Adjustable parameters, such as map size and obstacle density.

- **Visualization:**
  - Simple ASCII rendering in the terminal.

- **Exporting:**
  - Saves maps in formats like JSON or CSV.

---

## **How to Use**
1. **Requirements:**
   - Install the [Odin Compiler](https://odin-lang.org/).

2. **Clone the Repository:**
   ```bash
   git clone https://github.com/Sobralguilherme/Procedual_Map_Generator_in_Odin
   cd gerador-mapas-odin
   ```

3. **Compile and Run:**
   ```bash
   odin run main.odin
   ```

4. **Configure Parameters:**
   - Edit the `config.odin` file to customize map size and other details.

---

## **Project Structure**
- `main.odin`: Main file containing the generator's core logic.
- `algorithms/`: Contains implementations of generation algorithms.
- `visualization/`: Responsible for map rendering.
- `exports/`: Stores generated maps in various formats.

---

## **Roadmap**
- Implement *Perlin Noise* for terrains.
- Add ASCII visualization.
- Export maps to JSON/CSV.
- Develop a basic graphical interface.
- Support for layers (surface and underground).

---

## **Contributions**
Contributions are welcome! Feel free to open issues or submit pull requests.

--- 

