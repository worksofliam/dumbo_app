**free

ctl-opt dftactgrp(*no);

dcl-pi P2194;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2125.rpgleinc'
/copy 'qrpgleref/P1007.rpgleinc'
/copy 'qrpgleref/P1133.rpgleinc'

dcl-ds theTable extname('T692') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T692 LIMIT 1;

theCharVar = 'Hello from P2194';
dsply theCharVar;
P2125();
P1007();
P1133();
return;