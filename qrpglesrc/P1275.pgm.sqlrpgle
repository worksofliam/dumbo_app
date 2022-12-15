**free

ctl-opt dftactgrp(*no);

dcl-pi P1275;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P457.rpgleinc'
/copy 'qrpgleref/P808.rpgleinc'
/copy 'qrpgleref/P698.rpgleinc'

dcl-ds theTable extname('T59') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T59 LIMIT 1;

theCharVar = 'Hello from P1275';
dsply theCharVar;
P457();
P808();
P698();
return;