**free

ctl-opt dftactgrp(*no);

dcl-pi P1490;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P824.rpgleinc'
/copy 'qrpgleref/P1190.rpgleinc'
/copy 'qrpgleref/P598.rpgleinc'

dcl-ds theTable extname('T338') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T338 LIMIT 1;

theCharVar = 'Hello from P1490';
dsply theCharVar;
P824();
P1190();
P598();
return;