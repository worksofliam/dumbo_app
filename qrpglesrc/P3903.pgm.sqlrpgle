**free

ctl-opt dftactgrp(*no);

dcl-pi P3903;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2387.rpgleinc'
/copy 'qrpgleref/P1789.rpgleinc'
/copy 'qrpgleref/P2761.rpgleinc'

dcl-ds theTable extname('T384') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T384 LIMIT 1;

theCharVar = 'Hello from P3903';
dsply theCharVar;
P2387();
P1789();
P2761();
return;