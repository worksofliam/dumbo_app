**free

ctl-opt dftactgrp(*no);

dcl-pi P4304;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2907.rpgleinc'
/copy 'qrpgleref/P1004.rpgleinc'
/copy 'qrpgleref/P3478.rpgleinc'

dcl-ds theTable extname('T1324') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1324 LIMIT 1;

theCharVar = 'Hello from P4304';
dsply theCharVar;
P2907();
P1004();
P3478();
return;