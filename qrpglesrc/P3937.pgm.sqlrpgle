**free

ctl-opt dftactgrp(*no);

dcl-pi P3937;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1183.rpgleinc'
/copy 'qrpgleref/P2444.rpgleinc'
/copy 'qrpgleref/P1339.rpgleinc'

dcl-ds theTable extname('T887') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T887 LIMIT 1;

theCharVar = 'Hello from P3937';
dsply theCharVar;
P1183();
P2444();
P1339();
return;