**free

ctl-opt dftactgrp(*no);

dcl-pi P768;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P718.rpgleinc'
/copy 'qrpgleref/P572.rpgleinc'
/copy 'qrpgleref/P468.rpgleinc'

dcl-ds theTable extname('T171') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T171 LIMIT 1;

theCharVar = 'Hello from P768';
dsply theCharVar;
P718();
P572();
P468();
return;