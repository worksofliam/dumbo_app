**free

ctl-opt dftactgrp(*no);

dcl-pi P3562;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1791.rpgleinc'
/copy 'qrpgleref/P1068.rpgleinc'
/copy 'qrpgleref/P2679.rpgleinc'

dcl-ds theTable extname('T1249') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1249 LIMIT 1;

theCharVar = 'Hello from P3562';
dsply theCharVar;
P1791();
P1068();
P2679();
return;