**free

ctl-opt dftactgrp(*no);

dcl-pi P2818;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1240.rpgleinc'
/copy 'qrpgleref/P1029.rpgleinc'
/copy 'qrpgleref/P1646.rpgleinc'

dcl-ds theTable extname('T1628') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1628 LIMIT 1;

theCharVar = 'Hello from P2818';
dsply theCharVar;
P1240();
P1029();
P1646();
return;