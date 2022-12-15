**free

ctl-opt dftactgrp(*no);

dcl-pi P1372;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1140.rpgleinc'
/copy 'qrpgleref/P6.rpgleinc'
/copy 'qrpgleref/P1318.rpgleinc'

dcl-ds theTable extname('T260') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T260 LIMIT 1;

theCharVar = 'Hello from P1372';
dsply theCharVar;
P1140();
P6();
P1318();
return;