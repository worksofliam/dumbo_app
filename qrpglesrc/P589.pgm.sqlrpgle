**free

ctl-opt dftactgrp(*no);

dcl-pi P589;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P136.rpgleinc'
/copy 'qrpgleref/P384.rpgleinc'
/copy 'qrpgleref/P427.rpgleinc'

dcl-ds theTable extname('T1758') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1758 LIMIT 1;

theCharVar = 'Hello from P589';
dsply theCharVar;
P136();
P384();
P427();
return;