**free

ctl-opt dftactgrp(*no);

dcl-pi P2136;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1972.rpgleinc'
/copy 'qrpgleref/P618.rpgleinc'
/copy 'qrpgleref/P1810.rpgleinc'

dcl-ds T208 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T208 FROM T208 LIMIT 1;

theCharVar = 'Hello from P2136';
dsply theCharVar;
P1972();
P618();
P1810();
return;