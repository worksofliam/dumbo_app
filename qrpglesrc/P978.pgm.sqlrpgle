**free

ctl-opt dftactgrp(*no);

dcl-pi P978;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P153.rpgleinc'
/copy 'qrpgleref/P444.rpgleinc'
/copy 'qrpgleref/P544.rpgleinc'

dcl-ds theTable extname('T398') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T398 LIMIT 1;

theCharVar = 'Hello from P978';
dsply theCharVar;
P153();
P444();
P544();
return;