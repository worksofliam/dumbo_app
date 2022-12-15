**free

ctl-opt dftactgrp(*no);

dcl-pi P1065;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P793.rpgleinc'
/copy 'qrpgleref/P1058.rpgleinc'
/copy 'qrpgleref/P760.rpgleinc'

dcl-ds theTable extname('T644') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T644 LIMIT 1;

theCharVar = 'Hello from P1065';
dsply theCharVar;
P793();
P1058();
P760();
return;