**free

ctl-opt dftactgrp(*no);

dcl-pi P2691;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1326.rpgleinc'
/copy 'qrpgleref/P970.rpgleinc'
/copy 'qrpgleref/P2161.rpgleinc'

dcl-ds theTable extname('T843') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T843 LIMIT 1;

theCharVar = 'Hello from P2691';
dsply theCharVar;
P1326();
P970();
P2161();
return;