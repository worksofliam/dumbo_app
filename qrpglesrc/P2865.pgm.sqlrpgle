**free

ctl-opt dftactgrp(*no);

dcl-pi P2865;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1236.rpgleinc'
/copy 'qrpgleref/P2183.rpgleinc'
/copy 'qrpgleref/P992.rpgleinc'

dcl-ds theTable extname('T810') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T810 LIMIT 1;

theCharVar = 'Hello from P2865';
dsply theCharVar;
P1236();
P2183();
P992();
return;