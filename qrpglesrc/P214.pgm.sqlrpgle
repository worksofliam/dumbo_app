**free

ctl-opt dftactgrp(*no);

dcl-pi P214;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P69.rpgleinc'
/copy 'qrpgleref/P180.rpgleinc'
/copy 'qrpgleref/P128.rpgleinc'

dcl-ds theTable extname('T89') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T89 LIMIT 1;

theCharVar = 'Hello from P214';
dsply theCharVar;
P69();
P180();
P128();
return;