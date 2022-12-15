**free

ctl-opt dftactgrp(*no);

dcl-pi P2436;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P857.rpgleinc'
/copy 'qrpgleref/P973.rpgleinc'
/copy 'qrpgleref/P744.rpgleinc'

dcl-ds theTable extname('T26') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T26 LIMIT 1;

theCharVar = 'Hello from P2436';
dsply theCharVar;
P857();
P973();
P744();
return;