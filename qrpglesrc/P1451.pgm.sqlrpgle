**free

ctl-opt dftactgrp(*no);

dcl-pi P1451;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P799.rpgleinc'
/copy 'qrpgleref/P1225.rpgleinc'
/copy 'qrpgleref/P919.rpgleinc'

dcl-ds theTable extname('T63') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T63 LIMIT 1;

theCharVar = 'Hello from P1451';
dsply theCharVar;
P799();
P1225();
P919();
return;