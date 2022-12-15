**free

ctl-opt dftactgrp(*no);

dcl-pi P878;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P105.rpgleinc'
/copy 'qrpgleref/P804.rpgleinc'
/copy 'qrpgleref/P718.rpgleinc'

dcl-ds theTable extname('T1564') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1564 LIMIT 1;

theCharVar = 'Hello from P878';
dsply theCharVar;
P105();
P804();
P718();
return;