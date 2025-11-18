from PyPDF2 import PdfReader, PdfWriter
import fitz  # PyMuPDF


def extract_and_compress_pdf(input_path, output_path, page_range):
    """
    Extracts a subset of pages from a PDF and compresses the result.

    Parameters:
    - input_path: str, path to the original PDF
    - output_path: str, path to save the new compressed PDF
    - page_range: tuple, (start_page, end_page) inclusive, 1-based indexing
    """
    start, end = page_range
    doc = fitz.open(input_path)
    total_pages = len(doc)

    if start < 1 or end > total_pages or start > end:
        raise ValueError(f"Invalid page range: {start}-{end} for PDF with {total_pages} pages.")

    new_doc = fitz.open()
    for i in range(start - 1, end):
        new_doc.insert_pdf(doc, from_page=i, to_page=i)

    # Save with compression options
    new_doc.save(output_path, garbage=4, deflate=True, clean=True, deflate_images=True, deflate_fonts=True)
    new_doc.close()
    doc.close()
    print(f"Compressed subset saved to: {output_path}")


# Example usage
extract_and_compress_pdf("main.pdf", "subset_main_p1.pdf", (42, 62))
extract_and_compress_pdf("main.pdf", "subset_main_p2.pdf", (63, 108))