**free

ctl-opt dftactgrp(*no);

dcl-pi P4087;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2048.rpgleinc'
/copy 'qrpgleref/P1974.rpgleinc'
/copy 'qrpgleref/P3813.rpgleinc'

dcl-ds theTable extname('T1561') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1561 LIMIT 1;

theCharVar = 'Hello from P4087';
dsply theCharVar;
P2048();
P1974();
P3813();
return;