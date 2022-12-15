**free

ctl-opt dftactgrp(*no);

dcl-pi P1822;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1212.rpgleinc'
/copy 'qrpgleref/P168.rpgleinc'
/copy 'qrpgleref/P1426.rpgleinc'

dcl-ds theTable extname('T1456') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1456 LIMIT 1;

theCharVar = 'Hello from P1822';
dsply theCharVar;
P1212();
P168();
P1426();
return;