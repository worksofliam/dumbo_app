**free

ctl-opt dftactgrp(*no);

dcl-pi P1379;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P876.rpgleinc'
/copy 'qrpgleref/P851.rpgleinc'
/copy 'qrpgleref/P533.rpgleinc'

dcl-ds theTable extname('T390') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T390 LIMIT 1;

theCharVar = 'Hello from P1379';
dsply theCharVar;
P876();
P851();
P533();
return;