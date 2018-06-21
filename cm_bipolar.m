function cm_bipolar = cm_bipolar()
lsp = 50;
cmap = zeros(lsp*4-3, 3);
cmap(1:lsp, 2) = linspace(1, 0, lsp);
cmap(1:lsp, 3) = 1;
cmap(lsp:2*lsp-1, 3) = linspace(1, 0, lsp);
cmap(2*lsp-1:3*lsp-2, 1) = linspace(0, 1, lsp);
cmap(3*lsp-2:4*lsp-3, 2) = linspace(0, 1, lsp);
cmap(3*lsp-2:4*lsp-3, 1) = 1;
cm_bipolar = cmap;
end