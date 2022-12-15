**free

ctl-opt dftactgrp(*no);

dcl-pi P808;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P224.rpgleinc'
/copy 'qrpgleref/P739.rpgleinc'
/copy 'qrpgleref/P37.rpgleinc'

dcl-ds theTable extname('T896') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T896 LIMIT 1;

theCharVar = 'Hello from P808';
dsply theCharVar;
P224();
P739();
P37();
return;