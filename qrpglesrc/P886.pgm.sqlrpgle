**free

ctl-opt dftactgrp(*no);

dcl-pi P886;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P359.rpgleinc'
/copy 'qrpgleref/P433.rpgleinc'
/copy 'qrpgleref/P739.rpgleinc'

dcl-ds theTable extname('T917') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T917 LIMIT 1;

theCharVar = 'Hello from P886';
dsply theCharVar;
P359();
P433();
P739();
return;