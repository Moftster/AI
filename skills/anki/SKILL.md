




Pasted text(2).txt
Document
Use this skill to generate ankis on viritual memory: 

Thought for a couple of seconds
Using your uploaded Anki skill for Virtual Memory. 


Cloze Cards
{{c1::Virtual}} {{c1::memory}} gives each process the illusion that it has its own private memory space.

Each process sees its own address space because of {{c1::virtual}} {{c1::memory}}.

{{c1::Virtual}} {{c1::memory}} maps program-used addresses to real physical memory.

The operating system and hardware cooperate to provide {{c1::virtual}} {{c1::memory}}.

{{c1::Virtual}} {{c1::memory}} allows programs to use memory addresses that are not direct physical RAM addresses.

A key benefit of {{c1::virtual}} {{c1::memory}} is process isolation.

{{c1::Virtual}} {{c1::memory}} helps prevent one process from directly accessing another process’s memory.

When RAM is limited, {{c1::virtual}} {{c1::memory}} can use disk storage as an extension of memory.

The abstraction that separates a process’s address space from physical RAM is {{c1::virtual}} {{c1::memory}}.

{{c1::Virtual}} {{c1::memory}} makes memory management safer and more flexible.

Basic (Q&A) Cards
Q: What is virtual memory?
A: A memory abstraction that gives each process its own address space, mapped to physical memory by the OS and hardware.

Q: What memory abstraction gives each process the illusion of its own private memory space?
A: Virtual memory

Q: What allows programs to use addresses that are translated to physical RAM addresses?
A: Virtual memory

Q: What operating system concept helps isolate one process’s memory from another’s?
A: Virtual memory

Q: What lets a process use a logical address space rather than directly using physical memory addresses?
A: Virtual memory

Q: What memory system can use disk storage when physical RAM is insufficient?
A: Virtual memory

Q: What abstraction allows programs to behave as if they have more usable memory than available physical RAM?
A: Virtual memory

Q: What concept sits between a program’s memory addresses and actual physical RAM?
A: Virtual memory

Q: What OS memory mechanism improves safety by stopping processes from directly accessing each other’s memory?
A: Virtual memory

Q: What memory abstraction is implemented using address translation?
A: Virtual memory


Can you do the same for memory management unit?

Cloze Cards
{{c1::Memory}} {{c1::Management}} {{c1::Unit}} translates virtual addresses into physical addresses.

The hardware component responsible for address translation is the {{c1::Memory}} {{c1::Management}} {{c1::Unit}}.

{{c1::Memory}} {{c1::Management}} {{c1::Unit}} enables virtual memory to function.

Without a {{c1::Memory}} {{c1::Management}} {{c1::Unit}}, virtual addresses could not be mapped to physical memory.

The {{c1::Memory}} {{c1::Management}} {{c1::Unit}} performs memory protection checks during memory access.

Process isolation is enforced in part by the {{c1::Memory}} {{c1::Management}} {{c1::Unit}}.

A page fault can occur when the {{c1::Memory}} {{c1::Management}} {{c1::Unit}} cannot find a valid mapping for a virtual address.

The {{c1::Memory}} {{c1::Management}} {{c1::Unit}} works with page tables to translate addresses.

The CPU consults the {{c1::Memory}} {{c1::Management}} {{c1::Unit}} whenever memory is accessed using virtual addresses.

{{c1::Memory}} {{c1::Management}} {{c1::Unit}} allows each process to have its own virtual address space.

Basic (Q&A) Cards
Q: What is a Memory Management Unit (MMU)?
A: A hardware component that translates virtual addresses into physical addresses and enforces memory protection.

Q: Which hardware component translates virtual addresses into physical addresses?
A: Memory Management Unit (MMU)

Q: What hardware component makes virtual memory possible?
A: Memory Management Unit (MMU)

Q: Which component works with page tables to perform address translation?
A: Memory Management Unit (MMU)

Q: What hardware mechanism helps prevent one process from accessing another process's memory?
A: Memory Management Unit (MMU)

Q: Which component detects invalid address mappings that may result in page faults?
A: Memory Management Unit (MMU)

Q: What hardware component is consulted when the CPU accesses memory using virtual addresses?
A: Memory Management Unit (MMU)

Q: What translates the address seen by a program into the actual location in physical RAM?
A: Memory Management Unit (MMU)

Q: Which hardware component enforces memory access permissions such as read, write, and execute?
A: Memory Management Unit (MMU)

Q: What hardware component enables each process to have its own isolated virtual address space?
A: Memory Management Unit (MMU)


Can you do the same for page table?

Cloze Cards
{{c1::Page}} {{c1::Table}} stores the mappings between virtual pages and physical memory frames.

The {{c1::Page}} {{c1::Table}} is used by the MMU to translate virtual addresses into physical addresses.

Each process typically has its own {{c1::Page}} {{c1::Table}}.

A {{c1::Page}} {{c1::Table}} enables virtual memory by defining where virtual pages reside in physical memory.

When a virtual address is accessed, the MMU consults the {{c1::Page}} {{c1::Table}}.

The operating system updates the {{c1::Page}} {{c1::Table}} when memory mappings change.

If a required mapping is missing from the {{c1::Page}} {{c1::Table}}, a page fault may occur.

A {{c1::Page}} {{c1::Table}} contains entries that map virtual pages to physical frames.

Memory protection information is often stored within {{c1::Page}} {{c1::Table}} entries.

The {{c1::Page}} {{c1::Table}} provides the information needed to convert a virtual address into a physical address.

Basic (Q&A) Cards
Q: What is a page table?
A: A data structure that maps virtual pages to physical memory frames.

Q: Which data structure stores mappings between virtual addresses and physical memory?
A: Page Table

Q: What data structure does the MMU consult when translating a virtual address?
A: Page Table

Q: What enables a process's virtual pages to be associated with physical memory frames?
A: Page Table

Q: Which operating system data structure is fundamental to implementing virtual memory?
A: Page Table

Q: What contains entries describing where virtual pages are located in physical memory?
A: Page Table

Q: Which data structure is typically unique to each process's address space?
A: Page Table

Q: What stores both address mappings and memory access permissions for pages?
A: Page Table

Q: What data structure can cause a page fault if a required mapping is absent or invalid?
A: Page Table

Q: What provides the MMU with the information needed to translate virtual addresses into physical addresses?
A: Page Table

Comparison Cards
Q: Which component performs address translation using mappings stored elsewhere?
A: Memory Management Unit (MMU)

Q: Which data structure stores the mappings used for address translation?
A: Page Table

Q: Which is hardware: Page Table or Memory Management Unit (MMU)?
A: Memory Management Unit (MMU)

Q: Which is a data structure maintained by the operating system: Page Table or Memory Management Unit (MMU)?
A: Page Table

Q: The MMU reads from what structure to determine where a virtual page resides in physical memory?
A: Page Table

Cloze Comparison Cards
The {{c1::Memory}} {{c1::Management}} {{c1::Unit}} performs address translation using mappings stored in a {{c2::Page}} {{c2::Table}}.

A {{c1::Page}} {{c1::Table}} stores mappings, while the {{c2::Memory}} {{c2::Management}} {{c2::Unit}} performs the translation.

The operating system manages the {{c1::Page}} {{c1::Table}}, while the {{c2::Memory}} {{c2::Management}} {{c2::Unit}} is hardware.


Can you do the same for pages in this context

Cloze Cards
{{c1::Page}} is the fixed-size unit of virtual memory used by a process.

Virtual memory is divided into units called {{c1::pages}}.

A {{c1::page}} is mapped to a physical memory frame by a page table.

The MMU translates addresses by determining which {{c1::page}} contains the requested address.

When a page is not currently in RAM, accessing it may trigger a {{c1::page}} fault.

A {{c1::page}} represents a contiguous block of virtual memory.

The operating system can move {{c1::pages}} between RAM and disk as needed.

Memory protection is often applied at the {{c1::page}} level.

A page table contains an entry for each virtual {{c1::page}}.

Virtual addresses are typically divided into a page number and a {{c1::page}} offset.

Basic (Q&A) Cards
Q: What is a page in the context of virtual memory?
A: A fixed-size block of virtual memory.

Q: What is the basic unit into which virtual memory is divided?
A: Page

Q: What unit of virtual memory is mapped to a physical frame?
A: Page

Q: What fixed-size block does a page table entry typically describe?
A: Page

Q: What unit of memory can be moved between RAM and disk by the operating system?
A: Page

Q: What unit is used as the basis for memory protection and access permissions?
A: Page

Q: What unit of virtual memory contains a range of virtual addresses?
A: Page

Q: What is identified by the page number portion of a virtual address?
A: Page

Q: What unit may trigger a page fault if it is not currently present in physical memory?
A: Page

Q: What is the virtual-memory counterpart of a physical memory frame?
A: Page

Comparison Cards
Q: Which represents a block of virtual memory: Page or Frame?
A: Page

Q: Which represents a block of physical memory: Page or Frame?
A: Frame

Q: A page table maps a Page to what?
A: Frame

Q: Which exists in the process's virtual address space: Page or Frame?
A: Page

Q: Which exists in RAM: Page or Frame?
A: Frame

Cloze Comparison Cards
A {{c1::Page}} is a block of virtual memory, while a {{c2::Frame}} is a block of physical memory.

A page table maps a {{c1::Page}} to a {{c2::Frame}}.

Programs work with {{c1::Pages}}, while RAM stores {{c2::Frames}}.

The operating system translates from {{c1::Pages}} to {{c2::Frames}} using page tables.

A virtual address identifies a {{c1::Page}}, which is ultimately stored in a physical {{c2::Frame}}.


What is meant by physical frame?

A physical frame (usually just frame) is a fixed-size block of physical RAM.

The easiest way to understand it is:

Virtual Memory	Physical Memory
Page	Frame
A page is a block in a process's virtual address space.

A frame is a block in actual RAM.

The page table maps pages → frames.

For example, if the system uses 4 KB pages:

Physical RAM

+---------+
| Frame 0 |
+---------+
| Frame 1 |
+---------+
| Frame 2 |
+---------+
| Frame 3 |
+---------+
Each frame is 4 KB.

A process might have:

Virtual Address Space

+--------+
| Page 0 |
+--------+
| Page 1 |
+--------+
| Page 2 |
+--------+
The page table could contain:

Page 0 -> Frame 2
Page 1 -> Frame 0
Page 2 -> Frame 3
Notice that the pages don't have to be stored next to each other in RAM.

That's one of the major benefits of virtual memory: a process sees a continuous address space even though its data may be scattered across many physical frames.

A useful analogy
Think of a book:

Pages = page numbers in the table of contents (the logical view)

Frames = physical sheets of paper stored in filing cabinets

Page Table = index telling you which sheet contains which page

The program works in terms of pages.
The RAM hardware stores data in frames.

Anki-style cards
Q: What is a physical frame?
A: A fixed-size block of physical RAM.

Q: What is the physical-memory counterpart of a virtual page?
A: Frame

Q: A page table maps virtual pages to what?
A: Physical frames

Q: Which resides in RAM: pages or frames?
A: Frames

Q: Why are pages and frames usually the same size?
A: So pages can be mapped directly to frames.


Can you generate ankis on frame/frames

Cloze Cards
{{c1::Frame}} is a fixed-size block of physical memory (RAM).

Physical memory is divided into units called {{c1::frames}}.

A virtual page is mapped to a physical {{c1::frame}}.

The page table stores mappings from pages to {{c1::frames}}.

A {{c1::frame}} is the physical-memory counterpart of a virtual page.

RAM is organized into fixed-size {{c1::frames}}.

When a page is loaded into memory, it is placed into a {{c1::frame}}.

The operating system allocates {{c1::frames}} to store pages in RAM.

A page fault may result in a page being loaded into a {{c1::frame}}.

Pages and {{c1::frames}} are typically the same size to allow direct mapping.

Basic (Q&A) Cards
Q: What is a frame in the context of virtual memory?
A: A fixed-size block of physical memory (RAM).

Q: What is the basic unit into which physical memory is divided?
A: Frame

Q: What is the physical-memory counterpart of a virtual page?
A: Frame

Q: What does a page table map pages to?
A: Frames

Q: What unit of RAM stores the contents of a virtual page?
A: Frame

Q: What fixed-size block of RAM can be allocated to a process's pages?
A: Frame

Q: What unit of physical memory is referenced by a page table entry?
A: Frame

Q: What does the operating system allocate when loading a page into RAM?
A: Frame

Q: What unit of physical memory is used by the MMU after address translation?
A: Frame

Q: What is the destination of a page-to-frame mapping?
A: Frame

Comparison Cards
Q: Which represents virtual memory: Page or Frame?
A: Page

Q: Which represents physical memory: Page or Frame?
A: Frame

Q: Which resides in a process's virtual address space: Page or Frame?
A: Page

Q: Which resides in RAM: Page or Frame?
A: Frame

Q: A page table maps a Page to what?
A: Frame

Q: A frame contains the contents of what?
A: Page

Cloze Comparison Cards
A {{c1::Page}} is a unit of virtual memory, while a {{c2::Frame}} is a unit of physical memory.

The page table maps a {{c1::Page}} to a {{c2::Frame}}.

Programs work with {{c1::Pages}}, while RAM stores {{c2::Frames}}.

A {{c1::Frame}} exists in physical memory, whereas a {{c2::Page}} exists in virtual memory.

The contents of a virtual {{c1::Page}} are stored in a physical {{c2::Frame}}.

A useful mental model is: Pages are what processes see; Frames are what RAM contains. This distinction comes up repeatedly when learning virtual memory, page tables, page faults, and MMU address translation.


Can you do the smae for index nodes

Assuming by index nodes you mean inode (index node) in a Unix/Linux filesystem.

Following your Anki skill, the answer is predominantly inode / index node.

Cloze Cards
An {{c1::inode}} stores metadata about a file but not the file's name.

An {{c1::inode}} contains information such as permissions, ownership, and timestamps.

Every file in a Unix-like filesystem is represented by an {{c1::inode}}.

A directory maps filenames to {{c1::inode}} numbers.

The filesystem uses an {{c1::inode}} to locate a file's data blocks.

An {{c1::inode}} stores pointers to the blocks containing a file's contents.

Multiple filenames can reference the same {{c1::inode}} through hard links.

Deleting a filename does not remove the {{c1::inode}} if other hard links still exist.

The metadata describing a file is stored in its {{c1::inode}}.

An {{c1::inode}} uniquely identifies a file within a filesystem.

Basic (Q&A) Cards
Q: What is an inode?
A: A filesystem data structure that stores metadata about a file and pointers to its data blocks.

Q: Which filesystem structure stores file metadata such as permissions, ownership, and timestamps?
A: Inode

Q: Which filesystem structure contains pointers to a file's data blocks?
A: Inode

Q: What data structure represents a file in a Unix-like filesystem?
A: Inode

Q: What does a directory entry typically point to?
A: Inode

Q: Which filesystem structure is identified by an inode number?
A: Inode

Q: What structure allows the operating system to find the blocks that contain a file's contents?
A: Inode

Q: Which filesystem structure exists independently of a filename?
A: Inode

Q: What structure can be referenced by multiple hard links?
A: Inode

Q: What filesystem structure remains if one filename is deleted but another hard link still exists?
A: Inode

Comparison Cards
Q: Which stores file metadata: Inode or Directory Entry?
A: Inode

Q: Which stores filenames: Inode or Directory Entry?
A: Directory Entry

Q: Which contains pointers to file data blocks: Inode or Directory Entry?
A: Inode

Q: Which maps a filename to an inode number: Inode or Directory Entry?
A: Directory Entry

Q: Which exists even if a file is accessed through multiple hard links: Inode or Directory Entry?
A: Inode

Cloze Comparison Cards
An {{c1::inode}} stores metadata, while a {{c2::Directory Entry}} stores a filename.

A {{c1::Directory Entry}} maps a filename to an {{c2::inode}}.

The {{c1::inode}} contains pointers to file data blocks, while the {{c2::Directory Entry}} contains the file's name.

Multiple {{c1::Directory Entries}} can reference the same {{c2::inode}} through hard links.

A useful mental model is that a filename is merely a label pointing to an {{c1::inode}}.

High-value Concept Card
Q: Does an inode store the filename?
A: No. The filename is stored in a directory entry; the inode stores the file's metadata and data block pointers.

This last fact is often the key insight that makes inodes "click" for people learning filesystems.


CAn you do the same for journaling in this context?

Cloze Cards
{{c1::Journaling}} is a filesystem technique that records intended changes before applying them to the main filesystem.

A filesystem uses {{c1::journaling}} to improve recovery after a crash or power failure.

Before modifying filesystem structures, the changes are written to a {{c1::journal}}.

{{c1::Journaling}} helps prevent filesystem corruption caused by unexpected shutdowns.

The journal acts as a log of pending filesystem operations in {{c1::journaling}} filesystems.

After a crash, a filesystem can replay its {{c1::journal}} to restore consistency.

{{c1::Journaling}} reduces the need for lengthy filesystem consistency checks after a crash.

A journal records filesystem updates before they are committed in a {{c1::journaling}} filesystem.

{{c1::Journaling}} improves reliability by ensuring filesystem changes can be recovered.

Many modern filesystems use {{c1::journaling}} to maintain consistency.

Basic (Q&A) Cards
Q: What is journaling in the context of filesystems?
A: A technique that records intended filesystem changes before applying them.

Q: What filesystem feature helps recover from crashes by recording changes before they occur?
A: Journaling

Q: What technique reduces filesystem corruption after a power failure?
A: Journaling

Q: What filesystem mechanism allows pending operations to be replayed after a crash?
A: Journaling

Q: What filesystem feature uses a journal to track changes before they are committed?
A: Journaling

Q: What technique improves filesystem consistency during unexpected shutdowns?
A: Journaling

Q: What filesystem reliability mechanism logs metadata updates before applying them?
A: Journaling

Q: What feature allows a filesystem to quickly recover to a consistent state after a crash?
A: Journaling

Q: What filesystem technique minimizes the need for lengthy filesystem repair operations?
A: Journaling

Q: What mechanism records filesystem operations in a journal before committing them?
A: Journaling

Comparison Cards
Q: Which filesystem approach records changes before applying them: Journaling or Non-journaling?
A: Journaling

Q: Which filesystem approach typically recovers faster after a crash: Journaling or Non-journaling?
A: Journaling

Q: Which filesystem approach is more likely to require a full filesystem check after a crash: Journaling or Non-journaling?
A: Non-journaling

Q: Which filesystem approach maintains a journal of pending changes: Journaling or Non-journaling?
A: Journaling

Q: Which filesystem approach generally offers greater crash resilience: Journaling or Non-journaling?
A: Journaling

Cloze Comparison Cards
In a {{c1::Journaling}} filesystem, changes are recorded before being applied; a {{c2::Non-journaling}} filesystem does not maintain such a log.

A {{c1::Journaling}} filesystem can replay its journal after a crash, while a {{c2::Non-journaling}} filesystem may require extensive consistency checks.

The key feature of {{c1::Journaling}} is recording intended changes before committing them to the filesystem.

High-Value Concept Cards
Q: What is the journal in a journaling filesystem?
A: A log that records filesystem changes before they are applied.

Q: Why does journaling improve crash recovery?
A: Because the filesystem can replay recorded operations from the journal to restore consistency.

Q: Does journaling typically store file contents or filesystem changes?
A: Filesystem changes (often metadata changes).


Can you do the same for 'interrupts'  in the context of an operating system?

Cloze Cards
{{c1::Interrupt}} is a signal that causes the CPU to temporarily pause its current work and handle an event.

An {{c1::interrupt}} allows hardware devices to notify the CPU that attention is required.

The operating system uses {{c1::interrupts}} to respond to external events efficiently.

Without {{c1::interrupts}}, the CPU would need to constantly poll devices for updates.

When an {{c1::interrupt}} occurs, the CPU saves its current state before executing an interrupt handler.

A keyboard press typically generates an {{c1::interrupt}}.

A network card may raise an {{c1::interrupt}} when data arrives.

After handling an {{c1::interrupt}}, the CPU resumes the task it was previously executing.

An {{c1::interrupt}} enables asynchronous communication between hardware and the CPU.

The code executed in response to an interrupt is called an interrupt handler, which runs because of an {{c1::interrupt}}.

Basic (Q&A) Cards
Q: What is an interrupt?
A: A signal that causes the CPU to pause its current execution and handle an event.

Q: What mechanism allows hardware devices to notify the CPU that they need attention?
A: Interrupt

Q: What causes the CPU to temporarily stop its current task and execute special handling code?
A: Interrupt

Q: What operating system mechanism enables efficient responses to hardware events?
A: Interrupt

Q: What allows a keyboard to notify the CPU that a key has been pressed?
A: Interrupt

Q: What mechanism allows a network card to signal that data has arrived?
A: Interrupt

Q: What operating system concept reduces the need for constant device polling?
A: Interrupt

Q: What signal causes the CPU to save its current state and execute an interrupt handler?
A: Interrupt

Q: What mechanism enables asynchronous hardware-to-CPU communication?
A: Interrupt

Q: What operating system feature allows the CPU to react to events as they occur?
A: Interrupt

Comparison Cards
Q: Which mechanism actively checks devices at regular intervals: Polling or Interrupts?
A: Polling

Q: Which mechanism allows devices to notify the CPU only when attention is needed: Polling or Interrupts?
A: Interrupts

Q: Which generally wastes more CPU time when no events occur: Polling or Interrupts?
A: Polling

Q: Which mechanism is typically more efficient for infrequent events: Polling or Interrupts?
A: Interrupts

Q: Which mechanism lets the CPU continue other work until an event occurs: Polling or Interrupts?
A: Interrupts

Cloze Comparison Cards
{{c1::Interrupts}} allow devices to notify the CPU when needed, whereas {{c2::Polling}} requires the CPU to repeatedly check devices for updates.

With {{c1::Interrupts}}, the CPU can perform other work until an event occurs; with {{c2::Polling}}, the CPU actively checks for events.

{{c1::Polling}} repeatedly asks "Has anything happened?", while {{c2::Interrupts}} allow devices to announce that something has happened.

High-Value Concept Cards
Q: What happens when an interrupt occurs?
A: The CPU saves its current state, executes an interrupt handler, and then resumes the interrupted task.

Q: What is an interrupt handler?
A: Code executed by the operating system in response to an interrupt.

Q: Why are interrupts important in operating systems?
A: They allow the CPU to respond to events without constantly polling devices.

Q: Are interrupts generated only by hardware devices?
A: No. Interrupts can be generated by hardware or software.

Cloze Cards for Related Terms
A {{c1::Hardware Interrupt}} originates from an external device such as a keyboard, disk, or network card.

A {{c1::Software Interrupt}} is triggered by a running program to request operating system services.

A keyboard press typically generates a {{c1::Hardware Interrupt}}.

A system call is often implemented using a {{c1::Software Interrupt}}.

The distinction between a hardware interrupt and a software interrupt is a common operating systems interview topic.


What are examples of interrupts?

In operating systems, interrupts are everywhere. Here are some common examples grouped by type:

Hardware Interrupts
These come from physical devices.

Keyboard Interrupt
You press the A key.

Keyboard controller sends an interrupt.

CPU pauses current work.

OS reads the key press.

Application receives the character.

Example: Typing into VS Code.

Mouse Interrupt
You move the mouse or click a button.

Mouse generates an interrupt.

OS updates cursor position or button state.

Example: Clicking a browser tab.

Disk Interrupt
A disk finishes reading data.

CPU starts a disk read.

Continues doing other work.

Disk raises an interrupt when the data is ready.

Example: Opening a large file.

Network Interrupt
A network card receives a packet.

Network adapter raises an interrupt.

OS processes the incoming data.

Example: Receiving a Slack message.

USB Interrupt
A USB device is connected.

USB controller generates an interrupt.

OS detects the new device.

Example: Plugging in a flash drive.

Timer Interrupt
One of the most important interrupts.

Hardware timer fires every few milliseconds.

OS regains control of the CPU.

Example: Used for process scheduling and multitasking.

Without timer interrupts, one process could monopolize the CPU.

Software Interrupts
Generated by software rather than hardware.

System Call Interrupt
A program requests an OS service.

Examples:

open()
read()
write()
The CPU switches from user mode to kernel mode.

Example: A program opening a file.

Exception Interrupts
Generated by the CPU itself when something unusual happens.

Divide-by-Zero
int x = 5 / 0;
CPU generates an interrupt/exception.

OS usually terminates the program.

Invalid Instruction
Program tries to execute nonsense:

XYZ
CPU raises an exception.

Page Fault
One of the most important virtual memory interrupts.

Program accesses:

Virtual Address 0x12345678
but the required page is not currently in RAM.

CPU raises a page fault.

OS:

Finds the page on disk.

Loads it into a frame.

Updates the page table.

Restarts the instruction.

To the program, it looks like nothing happened.

The Most Important Interrupts for OS Interviews
If you're studying operating systems, focus on these:

Timer Interrupt — enables multitasking.

Keyboard Interrupt — classic hardware interrupt.

Disk Interrupt — asynchronous I/O.

Network Interrupt — packet arrival.

System Call Interrupt — entering the kernel.

Page Fault — virtual memory.

Divide-by-Zero Exception — CPU exception.

A useful mental model:

An interrupt is the operating system's way of being told, "Stop what you're doing for a moment—something needs attention." The "something" could be a key press, incoming network packet, completed disk read, timer tick, or memory access problem.


Can you do the same for PID1

Cloze Cards
{{c1::PID 1}} is the first process started by the Linux kernel in user space.

The Linux kernel starts {{c1::PID 1}} after completing its own initialization.

Every other user-space process is ultimately descended from {{c1::PID 1}}.

{{c1::PID 1}} serves as the root of the process tree.

If a parent process exits, orphaned processes are typically adopted by {{c1::PID 1}}.

One responsibility of {{c1::PID 1}} is reaping terminated child processes.

A process running as {{c1::PID 1}} has special responsibilities not shared by ordinary processes.

On many modern Linux systems, {{c1::systemd}} runs as {{c2::PID 1}}.

Inside a container, the main application process often runs as {{c1::PID 1}}.

Failure of {{c1::PID 1}} can cause the entire system to become unusable.

Basic (Q&A) Cards
Q: What is PID 1?
A: The first user-space process started by the Linux kernel.

Q: Which process is started first after the Linux kernel finishes initialization?
A: PID 1

Q: What process sits at the root of the Linux process tree?
A: PID 1

Q: Which process ultimately becomes the ancestor of all other user-space processes?
A: PID 1

Q: Which process typically adopts orphaned processes?
A: PID 1

Q: Which process is responsible for reaping orphaned child processes?
A: PID 1

Q: What process has special process-management responsibilities on Linux systems?
A: PID 1

Q: Which process is commonly implemented by systemd on modern Linux distributions?
A: PID 1

Q: What process number is reserved for the system's init process?
A: PID 1

Q: Which process can bring down a system if it exits unexpectedly?
A: PID 1

Comparison Cards
Q: Which process is the root of the process tree: PID 1 or a regular process?
A: PID 1

Q: Which process adopts orphaned processes: PID 1 or a regular process?
A: PID 1

Q: Which process has special child-reaping responsibilities: PID 1 or a regular process?
A: PID 1

Q: Which process is usually started directly by the kernel: PID 1 or a regular process?
A: PID 1

Q: Which process is typically started by another process: PID 1 or a regular process?
A: Regular process

Cloze Comparison Cards
{{c1::PID 1}} is started directly by the kernel, whereas most processes are started by another {{c2::process}}.

Orphaned processes are adopted by {{c1::PID 1}}, not by arbitrary {{c2::processes}}.

{{c1::PID 1}} sits at the root of the process tree, while other processes appear somewhere beneath it.

Container-Focused Cards
Q: Why is PID 1 important in containers?
A: The main container process often runs as PID 1 and must handle process reaping correctly.

A process running as {{c1::PID 1}} inside a container may need to reap zombie processes.

Q: Why do some Docker images use init systems such as tini?
A: To perform the special responsibilities of PID 1.

High-Value Concept Cards
Q: What does PID stand for?
A: Process Identifier

Q: What is special about PID 1 compared to other PIDs?
A: It is the first user-space process and has special process-management responsibilities.

Q: What happens to orphaned processes when their parent exits?
A: They are adopted by PID 1.

Q: What does it mean for PID 1 to "reap" a child process?
A: It collects the child's exit status and removes the zombie process entry.

Reverse-Direction Cards
Q: The first user-space process started by the Linux kernel is called what?
A: PID 1

Q: The process that adopts orphaned processes is called what?
A: PID 1

Q: The root of the Linux process tree is what process?
A: PID 1

Q: The process commonly implemented by systemd is what?
A: PID 1

Q: The process responsible for reaping orphaned zombie processes is what?
A: PID 1


Can you do the same for systemd

Cloze Cards
{{c1::systemd}} is the init system used by many modern Linux distributions.

On many Linux systems, {{c1::systemd}} runs as PID 1.

{{c1::systemd}} is responsible for starting and managing system services.

During system startup, {{c1::systemd}} launches required services and daemons.

{{c1::systemd}} acts as the parent process for many system services.

A service can be started, stopped, or restarted using {{c1::systemd}}.

{{c1::systemd}} manages system services using units.

Service definitions are commonly stored in {{c1::systemd}} unit files.

{{c1::systemd}} can automatically restart failed services.

Many Linux distributions use {{c1::systemd}} to manage the boot process.

Basic (Q&A) Cards
Q: What is systemd?
A: An init system and service manager used by many Linux distributions.

Q: Which init system commonly runs as PID 1 on modern Linux systems?
A: systemd

Q: What software is responsible for starting and managing services on many Linux distributions?
A: systemd

Q: Which Linux component manages the system boot process and services?
A: systemd

Q: What init system replaced SysVinit on many Linux distributions?
A: systemd

Q: Which component can automatically restart failed services?
A: systemd

Q: What Linux service manager uses unit files to define services?
A: systemd

Q: Which component is typically the first user-space process on a modern Linux system?
A: systemd

Q: What service manager is commonly controlled using the systemctl command?
A: systemd

Q: Which Linux component is responsible for bringing the system into its desired operational state during boot?
A: systemd

Comparison Cards
Q: Which is an init system: systemd or systemctl?
A: systemd

Q: Which is a command-line tool used to control services: systemd or systemctl?
A: systemctl

Q: Which usually runs as PID 1: systemd or systemctl?
A: systemd

Q: Which manages services behind the scenes: systemd or systemctl?
A: systemd

Q: Which command is commonly used to start or stop a service managed by systemd?
A: systemctl

Cloze Comparison Cards
{{c1::systemd}} is the service manager, while {{c2::systemctl}} is the command used to interact with it.

A Linux administrator uses {{c1::systemctl}} to control services managed by {{c2::systemd}}.

{{c1::systemd}} typically runs as PID 1, whereas {{c2::systemctl}} is simply a user command.

Service Unit Cards
Q: What does systemd use to define services and other managed resources?
A: Unit files

A service managed by systemd is commonly defined in a {{c1::unit}} file.

Q: What type of unit is used to define a background service in systemd?
A: Service unit

PID 1 Relationship Cards
Q: What software commonly serves as PID 1 on modern Linux systems?
A: systemd

{{c1::systemd}} often acts as PID 1 and therefore adopts orphaned processes.

Q: Why does systemd have special responsibilities compared to most processes?
A: Because it typically runs as PID 1.

Reverse-Direction Cards
Q: The init system used by many modern Linux distributions is called what?
A: systemd

Q: The service manager that commonly runs as PID 1 is called what?
A: systemd

Q: The software responsible for starting and managing services during boot is called what?
A: systemd

Q: The init system controlled through the systemctl command is called what?
A: systemd

High-Value Concept Cards
Q: What is the primary purpose of systemd?
A: To boot the system and manage services.

Q: What is the relationship between PID 1 and systemd on many Linux systems?
A: systemd runs as PID 1.

Q: What command is most commonly used to interact with systemd?
A: systemctl

Q: What does systemd manage besides the boot process?
A: System services and daemons.


CAn you do the same for process table

Cloze Cards
{{c1::Process}} {{c1::Table}} is a kernel data structure that stores information about running processes.

The operating system uses the {{c1::Process}} {{c1::Table}} to track processes.

Each process has an entry in the {{c1::Process}} {{c1::Table}}.

A process's PID is stored in the {{c1::Process}} {{c1::Table}}.

The operating system consults the {{c1::Process}} {{c1::Table}} when scheduling processes.

Process state information is maintained in the {{c1::Process}} {{c1::Table}}.

The {{c1::Process}} {{c1::Table}} contains metadata about active processes.

When a new process is created, an entry is added to the {{c1::Process}} {{c1::Table}}.

When a process terminates, its entry is removed from the {{c1::Process}} {{c1::Table}}.

The kernel uses the {{c1::Process}} {{c1::Table}} to manage process lifecycles.

Basic (Q&A) Cards
Q: What is a process table?
A: A kernel data structure that stores information about processes.

Q: Which kernel data structure tracks running processes?
A: Process Table

Q: Where does the operating system store information about active processes?
A: Process Table

Q: Which data structure contains entries for each process on the system?
A: Process Table

Q: Where is a process's PID typically recorded?
A: Process Table

Q: Which kernel structure is used by the scheduler to locate process information?
A: Process Table

Q: What data structure contains process states such as running, waiting, or terminated?
A: Process Table

Q: Where does the kernel keep metadata about processes?
A: Process Table

Q: What data structure receives a new entry when a process is created?
A: Process Table

Q: What data structure is updated throughout a process's lifecycle?
A: Process Table

Comparison Cards
Q: Which stores information about processes: Process Table or Page Table?
A: Process Table

Q: Which stores mappings between virtual pages and physical frames: Process Table or Page Table?
A: Page Table

Q: Which tracks process state and PID information: Process Table or Page Table?
A: Process Table

Q: Which is primarily concerned with memory translation: Process Table or Page Table?
A: Page Table

Q: Which is primarily concerned with process management: Process Table or Page Table?
A: Process Table

Cloze Comparison Cards
A {{c1::Process}} {{c1::Table}} stores information about processes, while a {{c2::Page}} {{c2::Table}} stores memory mappings.

The scheduler consults the {{c1::Process}} {{c1::Table}}, while the MMU consults the {{c2::Page}} {{c2::Table}}.

A {{c1::Process}} {{c1::Table}} tracks process state, whereas a {{c2::Page}} {{c2::Table}} tracks virtual-to-physical memory mappings.

PID-Related Cards
Q: What kernel data structure contains a process's PID?
A: Process Table

A PID is used to locate a process's entry in the {{c1::Process}} {{c1::Table}}.

Q: What kernel structure contains the entry for PID 1?
A: Process Table

High-Value Concept Cards
Q: What kind of information is stored in a process table entry?
A: Information such as PID, process state, scheduling information, and resource usage.

Q: Does the process table store the contents of a process's memory?
A: No. It stores information about the process, not the process's memory contents.

Q: What happens to the process table when a process is created?
A: A new process table entry is added.

Q: What happens to the process table entry when a process exits?
A: The entry is removed after the process is reaped.

Reverse-Direction Cards
Q: The kernel data structure that stores information about processes is called what?
A: Process Table

Q: The kernel data structure containing PID and process state information is called what?
A: Process Table

Q: The scheduler relies on what data structure to track processes?
A: Process Table

Q: The collection of process entries maintained by the kernel is called what?
A: Process Table

Useful Mental Model
Q: What is a useful analogy for the process table?
A: The operating system's "registry of processes"—a master list containing information about every process currently known to the kernel.


Can you do the same for system calls?

Cloze Cards
{{c1::System}} {{c1::Call}} is the mechanism by which a user-space program requests a service from the operating system kernel.

A program uses a {{c1::system}} {{c1::call}} to interact with the kernel.

Reading from a file typically requires a {{c1::system}} {{c1::call}}.

A {{c1::system}} {{c1::call}} causes execution to transition from user mode to kernel mode.

Opening a file is commonly performed using a {{c1::system}} {{c1::call}}.

Processes use {{c1::system}} {{c1::calls}} to access hardware and protected system resources.

The operating system exposes its services to applications through {{c1::system}} {{c1::calls}}.

A {{c1::system}} {{c1::call}} provides a controlled way for applications to interact with the kernel.

Writing data to a file typically involves a {{c1::system}} {{c1::call}}.

Creating a new process often requires a {{c1::system}} {{c1::call}}.

Basic (Q&A) Cards
Q: What is a system call?
A: A mechanism that allows a user-space program to request services from the operating system kernel.

Q: What mechanism allows an application to request services from the kernel?
A: System Call

Q: What mechanism is used when a program wants to open a file?
A: System Call

Q: What mechanism allows a process to access protected operating system resources?
A: System Call

Q: What mechanism transitions execution from user mode to kernel mode?
A: System Call

Q: How do applications typically interact with the operating system kernel?
A: System Call

Q: What mechanism allows a process to request disk I/O from the operating system?
A: System Call

Q: What mechanism is used when a program creates a new process?
A: System Call

Q: What is the operating system's public interface to user-space programs?
A: System Call

Q: What mechanism provides controlled access to hardware and kernel services?
A: System Call

Comparison Cards
Q: Which runs in user space: Application Code or System Call Handler?
A: Application Code

Q: Which runs in kernel space: Application Code or System Call Handler?
A: System Call Handler

Q: Which mechanism allows a program to enter the kernel: Function Call or System Call?
A: System Call

Q: Which typically stays entirely within a program's address space: Function Call or System Call?
A: Function Call

Q: Which incurs a user mode to kernel mode transition: Function Call or System Call?
A: System Call

Cloze Comparison Cards
A {{c1::Function Call}} transfers control within a program, whereas a {{c2::System Call}} transfers control to the operating system kernel.

A {{c1::System Call}} enters kernel mode, while a {{c2::Function Call}} typically remains in user mode.

Opening a file requires a {{c1::System Call}}, whereas calling a helper method usually requires only a {{c2::Function Call}}.

Common System Call Cards
Q: Which system call opens a file on Unix-like systems?
A: open()

Q: Which system call reads data from a file descriptor?
A: read()

Q: Which system call writes data to a file descriptor?
A: write()

Q: Which system call creates a new process on Unix-like systems?
A: fork()

Q: Which system call terminates a process?
A: exit()

Cloze Cards for Common System Calls
The {{c1::open()}} system call is used to open a file.

The {{c1::read()}} system call retrieves data from a file descriptor.

The {{c1::write()}} system call sends data to a file descriptor.

The {{c1::fork()}} system call creates a new process.

The {{c1::exit()}} system call terminates a process.

Interrupt Relationship Cards
Q: How is a system call commonly implemented at the CPU level?
A: Using a software interrupt or trap.

A {{c1::System}} {{c1::Call}} is often implemented using a software interrupt or trap to enter the kernel.

Q: Which type of interrupt is commonly used to request operating system services?
A: Software Interrupt

High-Value Concept Cards
Q: Why are system calls necessary?
A: User-space programs cannot directly access hardware or kernel resources.

Q: What happens during a system call?
A: The CPU switches from user mode to kernel mode, executes the requested service, and returns to user mode.

Q: Can an application directly access kernel memory instead of using a system call?
A: No.

Q: What is the primary purpose of a system call?
A: To provide controlled access to operating system services.

Reverse-Direction Cards
Q: The mechanism used by applications to request services from the operating system is called what?
A: System Call

Q: The mechanism that transitions execution from user mode to kernel mode to perform OS work is called what?
A: System Call

Q: The interface between user-space applications and the kernel is called what?
A: System Call

Q: The mechanism used to open files, create processes, and perform I/O is called what?
A: System Call


Can you do the same for scheduler?

Cloze Cards
{{c1::Scheduler}} is the operating system component responsible for deciding which process runs on the CPU.

The {{c1::scheduler}} determines which process gets CPU time next.

A {{c1::scheduler}} enables multitasking by sharing CPU time among processes.

The operating system uses a {{c1::scheduler}} to switch between runnable processes.

The {{c1::scheduler}} selects processes from the ready queue.

A timer interrupt often triggers the {{c1::scheduler}} to make a scheduling decision.

The {{c1::scheduler}} aims to keep the CPU busy while maintaining fairness.

Process priorities may influence decisions made by the {{c1::scheduler}}.

The {{c1::scheduler}} determines when a context switch should occur.

Without a {{c1::scheduler}}, multiple processes could not effectively share a CPU.

Basic (Q&A) Cards
Q: What is a scheduler?
A: The operating system component that decides which process runs on the CPU.

Q: Which operating system component decides what process runs next?
A: Scheduler

Q: What component enables multiple processes to share a CPU?
A: Scheduler

Q: What part of the operating system chooses a process from the ready queue?
A: Scheduler

Q: Which component is responsible for CPU allocation among processes?
A: Scheduler

Q: What operating system component makes scheduling decisions after timer interrupts?
A: Scheduler

Q: What determines which runnable process receives CPU time?
A: Scheduler

Q: What operating system component balances fairness and CPU utilization?
A: Scheduler

Q: What component decides when to switch execution between processes?
A: Scheduler

Q: Which operating system component implements process scheduling policies?
A: Scheduler

Comparison Cards
Q: Which decides what process should run: Scheduler or Dispatcher?
A: Scheduler

Q: Which performs the actual context switch: Scheduler or Dispatcher?
A: Dispatcher

Q: Which chooses the next process: Scheduler or Dispatcher?
A: Scheduler

Q: Which carries out the scheduler's decision: Scheduler or Dispatcher?
A: Dispatcher

Q: Which is responsible for scheduling policy: Scheduler or Dispatcher?
A: Scheduler

Cloze Comparison Cards
The {{c1::Scheduler}} decides which process should run next, while the {{c2::Dispatcher}} performs the actual context switch.

A {{c1::Scheduler}} makes scheduling decisions, whereas a {{c2::Dispatcher}} executes those decisions.

The {{c1::Scheduler}} selects a process from the ready queue, while the {{c2::Dispatcher}} transfers CPU control to it.

Process State Cards
Q: Which operating system component selects processes from the ready state?
A: Scheduler

The {{c1::scheduler}} typically chooses from processes that are ready to run.

Q: Which component decides when a waiting process can resume CPU execution?
A: Scheduler

Timer Interrupt Relationship Cards
Q: What hardware event commonly gives the scheduler an opportunity to run?
A: Timer Interrupt

A {{c1::Timer Interrupt}} often triggers the {{c2::Scheduler}} to reconsider which process should run.

Q: Why are timer interrupts important for scheduling?
A: They allow the operating system to periodically regain control of the CPU.

High-Value Concept Cards
Q: Why does an operating system need a scheduler?
A: To decide how CPU time is shared among processes.

Q: What problem does a scheduler solve?
A: Determining which process should run when multiple processes are ready.

Q: Does the scheduler execute processes itself?
A: No, it decides which process should run.

Q: What information might a scheduler consider when making decisions?
A: Process priority, fairness, CPU usage, and scheduling policy.

Reverse-Direction Cards
Q: The operating system component responsible for deciding which process runs next is called what?
A: Scheduler

Q: The component that allocates CPU time among processes is called what?
A: Scheduler

Q: The operating system component that chooses from the ready queue is called what?
A: Scheduler

Q: The component responsible for implementing scheduling policies is called what?
A: Scheduler

Related Concept Cards
Q: What data structure commonly contains processes waiting to run?
A: Ready Queue

The {{c1::Scheduler}} typically selects a process from the {{c2::Ready Queue}}.

Q: What operation occurs when the CPU switches from one process to another?
A: Context Switch

A scheduling decision may result in a {{c1::Context Switch}}.


Can you do the same for the thread or threads?

Cloze Cards
{{c1::Thread}} is the smallest unit of execution that can be scheduled by the operating system.

A process may contain one or more {{c1::threads}}.

Threads within the same process share the same memory space and resources.

Each {{c1::thread}} has its own stack and CPU execution state.

Multiple {{c1::threads}} can execute concurrently within the same process.

The scheduler allocates CPU time to {{c1::threads}}.

Creating a {{c1::thread}} is typically less expensive than creating a process.

Threads in the same process can directly access shared memory because they share the same address space.

A {{c1::thread}} maintains its own program counter and stack.

A process always contains at least one {{c1::thread}}.

Basic (Q&A) Cards
Q: What is a thread?
A: The smallest unit of execution that can be scheduled by the operating system.

Q: What is the smallest schedulable unit of execution in an operating system?
A: Thread

Q: What allows multiple execution paths within a single process?
A: Thread

Q: What execution unit shares memory with other execution units in the same process?
A: Thread

Q: What does the scheduler typically schedule onto the CPU?
A: Thread

Q: What execution unit has its own stack and program counter but shares a process's memory?
A: Thread

Q: What is typically cheaper to create than a process?
A: Thread

Q: What allows a program to perform multiple tasks concurrently within the same process?
A: Thread

Q: What execution unit exists inside a process?
A: Thread

Q: What is the execution component of a process?
A: Thread

Comparison Cards
Q: Which has its own address space: Process or Thread?
A: Process

Q: Which shares an address space with other execution units: Process or Thread?
A: Thread

Q: Which is typically more expensive to create: Process or Thread?
A: Process

Q: Which is the smallest schedulable unit: Process or Thread?
A: Thread

Q: Which contains one or more threads: Process or Thread?
A: Process

Q: Which owns resources such as memory and file descriptors: Process or Thread?
A: Process

Cloze Comparison Cards
A {{c1::Process}} owns resources, while a {{c2::Thread}} executes instructions.

Multiple {{c1::Threads}} can exist within a single {{c2::Process}}.

A {{c1::Process}} has its own address space, whereas {{c2::Threads}} within that process share it.

Creating a {{c1::Thread}} is generally less expensive than creating a {{c2::Process}}.

A {{c1::Thread}} is the unit scheduled by the CPU scheduler, while a {{c2::Process}} acts as a container for resources.

Scheduler Relationship Cards
Q: What does the operating system scheduler typically schedule?
A: Thread

The {{c1::Scheduler}} typically allocates CPU time to {{c2::Threads}}.

Q: What execution unit competes for CPU time?
A: Thread

Process Relationship Cards
Q: Can a process contain multiple threads?
A: Yes

A {{c1::Multithreaded}} process contains multiple {{c2::Threads}}.

Q: What is a process with a single thread called?
A: Single-threaded process

Q: What is a process with multiple threads called?
A: Multithreaded process

High-Value Concept Cards
Q: What resources do threads within the same process share?
A: Memory space, open files, and other process resources.

Q: What resources does each thread maintain independently?
A: Its own stack, registers, and program counter.

Q: Why are threads useful?
A: They allow concurrent execution within a process.

Q: Why are threads generally faster to create than processes?
A: Because they share the process's existing resources instead of creating a new address space.

Reverse-Direction Cards
Q: The smallest unit of execution that can be scheduled by the operating system is called what?
A: Thread

Q: The execution unit that shares memory with other execution units in the same process is called what?
A: Thread

Q: The unit that has its own stack but shares a process's address space is called what?
A: Thread

Q: The unit typically scheduled by the operating system scheduler is called what?
A: Thread

Common Interview-Style Cards
Q: What is the key difference between a process and a thread?
A: A process owns resources and an address space; a thread is an execution path within a process.

Q: Do threads within the same process share memory?
A: Yes.

Q: Do processes share memory by default?
A: No.

Q: Which is generally lighter-weight: a process or a thread?
A: Thread.


Can you do the same for inter-process communication?

Cloze Cards
{{c1::Inter-Process}} {{c1::Communication}} is a mechanism that allows processes to exchange data.

Processes use {{c1::Inter-Process}} {{c1::Communication}} to communicate with one another.

Because processes have separate address spaces, they often require {{c1::Inter-Process}} {{c1::Communication}} to share information.

{{c1::Inter-Process}} {{c1::Communication}} enables coordination between independent processes.

Pipes, sockets, and shared memory are forms of {{c1::Inter-Process}} {{c1::Communication}}.

The operating system provides facilities for {{c1::Inter-Process}} {{c1::Communication}}.

{{c1::Inter-Process}} {{c1::Communication}} is often abbreviated as IPC.

Without {{c1::Inter-Process}} {{c1::Communication}}, processes would be unable to directly exchange data.

Many client-server applications rely on {{c1::Inter-Process}} {{c1::Communication}}.

{{c1::Inter-Process}} {{c1::Communication}} allows separate processes to cooperate on a task.

Basic (Q&A) Cards
Q: What is Inter-Process Communication (IPC)?
A: A mechanism that allows processes to exchange data and coordinate with one another.

Q: What mechanism allows separate processes to communicate?
A: Inter-Process Communication (IPC)

Q: What operating system facility enables processes to exchange information?
A: Inter-Process Communication (IPC)

Q: What is the collective term for mechanisms such as pipes, sockets, and shared memory?
A: Inter-Process Communication (IPC)

Q: What allows processes with separate address spaces to share data?
A: Inter-Process Communication (IPC)

Q: What mechanism enables cooperation between independent processes?
A: Inter-Process Communication (IPC)

Q: What does IPC stand for?
A: Inter-Process Communication

Q: What operating system concept allows a client process to communicate with a server process?
A: Inter-Process Communication (IPC)

Q: What mechanism is used when one process needs to send data to another?
A: Inter-Process Communication (IPC)

Q: What category of operating system features includes pipes, message queues, and sockets?
A: Inter-Process Communication (IPC)

Comparison Cards
Q: Which is used to communicate between separate processes: Inter-Process Communication or Threads?
A: Inter-Process Communication

Q: Which typically communicate through shared memory within the same address space: Processes or Threads?
A: Threads

Q: Which usually require IPC to exchange data: Processes or Threads?
A: Processes

Q: Which have separate address spaces by default: Processes or Threads?
A: Processes

Q: Which share an address space by default: Processes or Threads?
A: Threads

Cloze Comparison Cards
{{c1::Processes}} typically require {{c2::Inter-Process Communication}} to exchange data because they have separate address spaces.

{{c1::Threads}} within the same process can communicate through shared memory, whereas {{c2::Processes}} often require IPC.

{{c1::Inter-Process Communication}} is used between processes, while shared memory access is often sufficient between {{c2::Threads}}.

IPC Mechanism Cards
Q: Which IPC mechanism allows one process to write data that another process can read through a byte stream?
A: Pipe

Q: Which IPC mechanism allows processes on different machines to communicate over a network?
A: Socket

Q: Which IPC mechanism allows multiple processes to access the same region of memory?
A: Shared Memory

Q: Which IPC mechanism stores messages until a receiving process retrieves them?
A: Message Queue

Cloze Cards for IPC Mechanisms
A {{c1::Pipe}} allows one process to send a stream of data to another process.

A {{c1::Socket}} allows processes to communicate over a network.

{{c1::Shared Memory}} allows multiple processes to access the same memory region.

A {{c1::Message Queue}} stores messages for later retrieval by another process.

High-Value Concept Cards
Q: Why do processes need IPC?
A: Because processes have separate address spaces and cannot directly access each other's memory.

Q: Why do threads typically need less IPC than processes?
A: Because threads within the same process share memory.

Q: What is the primary purpose of IPC?
A: To enable data exchange and coordination between processes.

Q: Can processes directly access each other's memory by default?
A: No.

Reverse-Direction Cards
Q: The operating system mechanism that allows processes to exchange data is called what?
A: Inter-Process Communication (IPC)

Q: The category of mechanisms that includes pipes, sockets, shared memory, and message queues is called what?
A: Inter-Process Communication (IPC)

Q: The mechanism used when two independent processes need to coordinate or exchange information is called what?
A: Inter-Process Communication (IPC)

Q: The abbreviated term IPC stands for what?
A: Inter-Process Communication

Common Interview-Style Cards
Q: What is the key reason IPC exists?
A: Processes have isolated address spaces.

Q: Which IPC mechanism is generally the fastest because it avoids copying data through the kernel?
A: Shared Memory

Q: Which IPC mechanism is most commonly used for communication across a network?
A: Socket

Q: Which IPC mechanism is commonly used between a parent and child process on the same machine?
A: Pipe


{{c1::Inter}}-{{Process}}

According to your stated preference, multi-word terms should have each word individually clozed using the same cloze number.

So for Inter-Process Communication, the preferred format would be:

{{c1::Inter-Process}} {{c1::Communication}}
Or, if you want to break the hyphenated term apart even further:

{{c1::Inter}}-{{c1::Process}} {{c1::Communication}}
The second version is more consistent with your rule of individually clozing each word, and is how I'd generate future cards given your preferences.

For example:

{{c1::Inter}}-{{c1::Process}} {{c1::Communication}} allows processes with separate address spaces to exchange data.
Likewise:

{{c1::Memory}} {{c1::Management}} {{c1::Unit}}
{{c1::Page}} {{c1::Table}}
{{c1::Personal}} {{c1::Access}} {{c1::Token}}
{{c1::Short}} {{c1::Polling}}
{{c1::Long}} {{c1::Polling}}
This follows the convention you've been refining for your Anki workflow: one concept, multiple word-level clozes, all sharing the same cloze number.


I want this and can youupdate the skill to refelct it: {{c1::Inter}}-{{c1::Process}} {{c1::Communication}}

Yes. Your current skill says:

Multi-word terms should have each word as its own cloze deletion but sharing the same c1 group

However, it doesn't explicitly address hyphenated words, which is why I generated:

{{c1::Inter-Process}} {{c1::Communication}}
instead of your preferred:

{{c1::Inter}}-{{c1::Process}} {{c1::Communication}}
I'd update the skill like this:

Multi-word Terms
Each word should be individually clozed while sharing the same cloze number.

Good:

{{c1::Architectural}} {{c1::Decision}} {{c1::Record}}

{{c1::Short}} {{c1::Polling}}

{{c1::Long}} {{c1::Polling}}

{{c1::Memory}} {{c1::Management}} {{c1::Unit}}
Hyphenated Terms
For hyphenated terms, cloze each word separately while preserving the punctuation.

Good:

{{c1::Inter}}-{{c1::Process}} {{c1::Communication}}

{{c1::Client}}-{{c1::Server}}

{{c1::Read}}-{{c1::Only}}

{{c1::Write}}-{{c1::Ahead}} {{c1::Log}}
Bad:

{{c1::Inter-Process}} {{c1::Communication}}

{{c1::Client-Server}}

{{c1::Read-Only}}
Rule
When a term contains spaces, hyphens, slashes, or other separators:

Cloze each meaningful word individually.

Preserve the separator outside the cloze.

Use the same cloze number for all words in the term.

Example:

{{c1::Inter}}-{{c1::Process}} {{c1::Communication}}

{{c1::Command}}/{{c1::Query}} {{c1::Responsibility}} {{c1::Segregation}}

{{c1::Model}}-{{c1::View}}-{{c1::Controller}}
I'd also amend the quality checklist to include:

- Hyphenated terms must have each component word clozed individually.
- Separators such as '-', '/', and '.' should remain outside cloze deletions where practical.
This would make the expected output unambiguous and ensure future cards use:

{{c1::Inter}}-{{c1::Process}} {{c1::Communication}}
rather than:

{{c1::Inter-Process}} {{c1::Communication}}

CAn yuoregenerate the whole skill keeping this section short but effective in steering the LLM

---
name: anki
description: Generate Anki flashcards for a topic and/or term. Use this skill whenever the user asks for Anki cards, flashcards, or says things like "generate cards for X", "make some ankis on X", or "can you do X in Anki format".
---

# Anki Card Generation

Generate Anki flashcards optimized for long-term retention of technical concepts, commands, protocols, operating-system concepts, networking terms, architecture patterns, and software engineering vocabulary.

## Core Preferences

- Prefer cards where the answer is a specific term, phrase, command, protocol, pattern, component, or named concept.
- Keep answers short and precise.
- Favor active recall over recognition.
- Prefer objectively correct facts.
- Keep cards atomic (one fact per card).
- Include comparison cards where concepts are commonly confused.
- Include bidirectional learning where useful.

## User Preference Override

If the user says:

- "Generate cards on X"
- "Generate ankis on X"
- "Make flashcards for X"
- "The answer should be X"

Then treat **X as the primary learning target**.

The requested term should be:

- the answer to most Basic cards, and/or
- the clozed concept in most Cloze cards.

### Coverage Requirement

For term-focused requests:

- 100% of cards must have the requested term as:
  - the answer, or
  - the clozed term.

- Do not generate cards whose answer is a supporting concept.
- Do not generate cards whose clozed concept is a supporting concept.
- Supporting concepts may appear only in the question, example, hint, comparison, or explanatory text.
- The learner should repeatedly recall the requested term throughout the entire deck.

---

# Card Types

## Definition Card

Always include:

**Q:** What is X?

**A:** Short, precise definition.

---

## Answer-Is-The-Term Cards

Prefer cards where the answer is the exact term being learned.

Example:

**Q:** Which operating system mechanism allows a process to request services from the kernel?

**A:** System Call

---

## Comparison Cards

Use when concepts are commonly confused.

Examples:

- Process vs Thread
- Page vs Frame
- Scheduler vs Dispatcher
- TCP vs UDP
- Authentication vs Authorization
- Package vs Library

Generate cards for both concepts and test distinguishing characteristics.

---

## Bidirectional Learning

Where useful, generate cards in both directions.

Example:

**Q:** Which polling technique repeatedly sends requests at fixed intervals?

**A:** Short Polling

**Q:** What is a characteristic of Short Polling?

**A:** Repeatedly sends requests at fixed intervals.

Avoid always presenting compared concepts in the same order.

---

# Cloze Formatting Rules

## Core Rule

Only cloze the key concept being learned.

Good:

```text
The {{c1::OVER}} clause is required with ROW_NUMBER().
```

Bad:

```text
{{c1::The OVER clause is required with ROW_NUMBER()}}
```

## Multi-Word Terms

Cloze each word individually using the same cloze number.

Good:

```text
{{c1::Memory}} {{c1::Management}} {{c1::Unit}}

{{c1::Short}} {{c1::Polling}}

{{c1::Personal}} {{c1::Access}} {{c1::Token}}
```

## Hyphenated Terms

Cloze each word individually while preserving the separator.

Good:

```text
{{c1::Inter}}-{{c1::Process}} {{c1::Communication}}

{{c1::Client}}-{{c1::Server}}

{{c1::Model}}-{{c1::View}}-{{c1::Controller}}
```

Bad:

```text
{{c1::Inter-Process}} {{c1::Communication}}

{{c1::Client-Server}}
```

### Rule of Thumb

For terms containing spaces, hyphens, or slashes:

- Cloze each meaningful word separately.
- Keep punctuation outside clozes.
- Use the same cloze number for the entire term.

## Secondary Clozes

Use c2, c3, etc. only when testing an additional fact.

Example:

```text
The {{c1::HTTP}} protocol commonly uses port {{c2::80}}.
```

---

# Generation Modes

## Term-Focused

When the user asks for cards on a specific term:

Generate:

1. One definition card.
2. 5–10 Basic cards where the answer is the term.
3. 5–10 Cloze cards where the term is the clozed concept.
4. Optional supporting cards only if they reinforce the requested term.

The requested term should dominate the deck.

## Topic-Focused

When the user asks about a broader subject:

Generate roughly:

- 8–15 cards
- Mix of Basic and Cloze
- Definition cards
- Recognition cards
- Comparison cards
- Example-based cards

---

# Technical Topics

For programming, operating systems, networking, databases, cloud, infrastructure, security, DevOps, and architecture:

- Prefer exact terminology.
- Prefer cards whose answers are named concepts.
- Include practical examples.
- Avoid trivia.
- Focus on concepts useful in real-world engineering and interviews.

---

# Output Format

## Cloze Cards

[cloze cards]

## Basic (Q&A) Cards

Q: ...

A: ...

Q: ...

A: ...

---

# Quality Checklist

Before producing cards, verify:

- One fact per card.
- Answers are concise.
- Clozes hide only the target concept.
- Multi-word terms use separate clozes with the same cloze number.
- Hyphenated terms cloze each word separately.
- Compared concepts receive balanced coverage.
- Bidirectional learning is included where useful.
- Cards test understanding, not memorization of wording.
- For term-focused requests, the requested term appears as the answer or clozed term in at least 80% of cards.
This version keeps the hyphenated-term rule short, explicit, and hard for the model to misinterpret while avoiding a large block of examples that dilute the instruction.


Also, remove the defintiion card, I'm not really using it

I would remove the entire Definition Card section and all references to it elsewhere.

The reason is that your actual usage pattern is heavily focused on:

Recognition ("What mechanism allows...")

Answer-is-the-term cards

Comparisons

Clozes

Whereas:

What is X?

often becomes a weak card because the answer is either too broad, too wordy, or too easy to infer from context.

I'd make these changes:

Delete entirely
## Definition Card

Always include:

Q: What is X?

A: Short, precise definition.
Update Generation Modes
Change:

Generate:

1. One definition card.
2. 5–10 Basic cards where the answer is the term.
3. 5–10 Cloze cards where the term is the clozed concept.
4. Optional supporting cards only if they reinforce the requested term.
To:

Generate:

1. 5–10 Basic cards where the answer is the term.
2. 5–10 Cloze cards where the term is the clozed concept.
3. Optional supporting cards only if they reinforce the requested term.

Prefer recognition, comparison, and example-based cards over generic definitions.
Add a steering rule
Under Core Preferences:

- Prefer recognition cards over "What is X?" definition cards.
- Avoid generic definition cards unless they are the clearest way to test the concept.
That small addition will steer the model much more effectively than having a dedicated definition-card section.

For example, instead of:

Q: What is a scheduler?

A: The operating system component that decides which process runs next.
you'll get:

Q: Which operating system component decides which process runs next?

A: Scheduler
which aligns much better with your stated goal of making the term itself the answer.


CAn y uogenerate the whole file with these changes?

---
name: anki
description: Generate Anki flashcards for a topic and/or term. Use this skill whenever the user asks for Anki cards, flashcards, or says things like "generate cards for X", "make some ankis on X", or "can you do X in Anki format".
---

# Anki Card Generation

Generate Anki flashcards optimized for long-term retention of technical concepts, commands, protocols, operating-system concepts, networking terms, architecture patterns, and software engineering vocabulary.

## Core Preferences

- Prefer cards where the answer is a specific term, phrase, command, protocol, pattern, component, or named concept.
- Keep answers short and precise.
- Favor active recall over recognition.
- Prefer objectively correct facts.
- Keep cards atomic (one fact per card).
- Include comparison cards where concepts are commonly confused.
- Include bidirectional learning where useful.
- Prefer recognition cards over "What is X?" definition cards.
- Avoid generic definition cards unless they are the clearest way to test the concept.

## User Preference Override

If the user says:

- "Generate cards on X"
- "Generate ankis on X"
- "Make flashcards for X"
- "The answer should be X"

Then treat **X as the primary learning target**.

The requested term should be:

- the answer to most Basic cards, and/or
- the clozed concept in most Cloze cards.

### Coverage Requirement

For term-focused requests:

- At least 80% of cards must have the requested term as:
  - the answer, or
  - the clozed term.

Supporting concepts may be included only to reinforce understanding of the requested term.

---

# Card Types

## Answer-Is-The-Term Cards

Prefer cards where the answer is the exact term being learned.

Example:

**Q:** Which operating system mechanism allows a process to request services from the kernel?

**A:** System Call

---

## Comparison Cards

Use when concepts are commonly confused.

Examples:

- Process vs Thread
- Page vs Frame
- Scheduler vs Dispatcher
- TCP vs UDP
- Authentication vs Authorization
- Package vs Library

Generate cards for both concepts and test distinguishing characteristics.

---

## Bidirectional Learning

Where useful, generate cards in both directions.

Example:

**Q:** Which polling technique repeatedly sends requests at fixed intervals?

**A:** Short Polling

**Q:** What is a characteristic of Short Polling?

**A:** Repeatedly sends requests at fixed intervals.

Avoid always presenting compared concepts in the same order.

---

# Cloze Formatting Rules

## Core Rule

Only cloze the key concept being learned.

Good:

```text
The {{c1::OVER}} clause is required with ROW_NUMBER().
```

Bad:

```text
{{c1::The OVER clause is required with ROW_NUMBER()}}
```

## Multi-Word Terms

Cloze each word individually using the same cloze number.

Good:

```text
{{c1::Memory}} {{c1::Management}} {{c1::Unit}}

{{c1::Short}} {{c1::Polling}}

{{c1::Personal}} {{c1::Access}} {{c1::Token}}
```

## Hyphenated Terms

Cloze each word individually while preserving the separator.

Good:

```text
{{c1::Inter}}-{{c1::Process}} {{c1::Communication}}

{{c1::Client}}-{{c1::Server}}

{{c1::Model}}-{{c1::View}}-{{c1::Controller}}
```

Bad:

```text
{{c1::Inter-Process}} {{c1::Communication}}

{{c1::Client-Server}}
```

### Rule of Thumb

For terms containing spaces, hyphens, or slashes:

- Cloze each meaningful word separately.
- Keep punctuation outside clozes.
- Use the same cloze number for the entire term.

Examples:

```text
{{c1::Inter}}-{{c1::Process}} {{c1::Communication}}

{{c1::Command}}/{{c1::Query}} {{c1::Responsibility}} {{c1::Segregation}}

{{c1::Model}}-{{c1::View}}-{{c1::Controller}}
```

## Secondary Clozes

Use c2, c3, etc. only when testing an additional fact.

Example:

```text
The {{c1::HTTP}} protocol commonly uses port {{c2::80}}.
```

---

# Generation Modes

## Term-Focused

When the user asks for cards on a specific term:

Generate:

1. 5–10 Basic cards where the answer is the term.
2. 5–10 Cloze cards where the term is the clozed concept.
3. Optional supporting cards only if they reinforce the requested term.

The requested term should dominate the deck.

Prefer:

- Recognition cards
- Comparison cards
- Example-based cards

Over:

- Generic "What is X?" definition cards

## Topic-Focused

When the user asks about a broader subject:

Generate roughly:

- 8–15 cards
- Mix of Basic and Cloze
- Recognition cards
- Comparison cards
- Example-based cards
- Answer-is-the-term cards

---

# Technical Topics

For programming, operating systems, networking, databases, cloud, infrastructure, security, DevOps, and architecture:

- Prefer exact terminology.
- Prefer cards whose answers are named concepts.
- Include practical examples.
- Avoid trivia.
- Focus on concepts useful in real-world engineering and interviews.

---

# Output Format

## Cloze Cards

[cloze cards]

## Basic (Q&A) Cards

Q: ...

A: ...

Q: ...

A: ...

---

# Quality Checklist

Before producing cards, verify:

- One fact per card.
- Answers are concise.
- Clozes hide only the target concept.
- Multi-word terms use separate clozes with the same cloze number.
- Hyphenated terms cloze each word separately.
- Compared concepts receive balanced coverage.
- Bidirectional learning is included where useful.
- Cards test understanding, not memorization of wording.
- For term-focused requests, the requested term appears as the answer or clozed term in at least 80% of cards.
- Supporting concepts reinforce the requested term rather than replacing it.
One additional change I'd seriously consider is replacing:


