**free

ctl-opt dftactgrp(*no);

dcl-pi P3045;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1216.rpgleinc'
/copy 'qrpgleref/P481.rpgleinc'
/copy 'qrpgleref/P787.rpgleinc'

dcl-ds theTable extname('T240') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T240 LIMIT 1;

theCharVar = 'Hello from P3045';
dsply theCharVar;
P1216();
P481();
P787();
return;