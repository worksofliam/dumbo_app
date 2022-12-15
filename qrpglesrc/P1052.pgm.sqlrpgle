**free

ctl-opt dftactgrp(*no);

dcl-pi P1052;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P146.rpgleinc'
/copy 'qrpgleref/P58.rpgleinc'
/copy 'qrpgleref/P444.rpgleinc'

dcl-ds theTable extname('T414') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T414 LIMIT 1;

theCharVar = 'Hello from P1052';
dsply theCharVar;
P146();
P58();
P444();
return;