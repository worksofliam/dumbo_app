**free

ctl-opt dftactgrp(*no);

dcl-pi P2401;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2016.rpgleinc'
/copy 'qrpgleref/P91.rpgleinc'
/copy 'qrpgleref/P1669.rpgleinc'

dcl-ds theTable extname('T1614') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1614 LIMIT 1;

theCharVar = 'Hello from P2401';
dsply theCharVar;
P2016();
P91();
P1669();
return;