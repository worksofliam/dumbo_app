**free

ctl-opt dftactgrp(*no);

dcl-pi P4766;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P4620.rpgleinc'
/copy 'qrpgleref/P2982.rpgleinc'
/copy 'qrpgleref/P2569.rpgleinc'

dcl-ds theTable extname('T1351') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1351 LIMIT 1;

theCharVar = 'Hello from P4766';
dsply theCharVar;
P4620();
P2982();
P2569();
return;