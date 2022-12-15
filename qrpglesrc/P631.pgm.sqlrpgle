**free

ctl-opt dftactgrp(*no);

dcl-pi P631;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P431.rpgleinc'
/copy 'qrpgleref/P406.rpgleinc'
/copy 'qrpgleref/P179.rpgleinc'

dcl-ds theTable extname('T937') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T937 LIMIT 1;

theCharVar = 'Hello from P631';
dsply theCharVar;
P431();
P406();
P179();
return;