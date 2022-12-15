**free

ctl-opt dftactgrp(*no);

dcl-pi P1175;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P759.rpgleinc'
/copy 'qrpgleref/P1078.rpgleinc'
/copy 'qrpgleref/P914.rpgleinc'

dcl-ds theTable extname('T6') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T6 LIMIT 1;

theCharVar = 'Hello from P1175';
dsply theCharVar;
P759();
P1078();
P914();
return;