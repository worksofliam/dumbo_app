**free

ctl-opt dftactgrp(*no);

dcl-pi P446;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P177.rpgleinc'
/copy 'qrpgleref/P341.rpgleinc'
/copy 'qrpgleref/P288.rpgleinc'

dcl-ds theTable extname('T119') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T119 LIMIT 1;

theCharVar = 'Hello from P446';
dsply theCharVar;
P177();
P341();
P288();
return;