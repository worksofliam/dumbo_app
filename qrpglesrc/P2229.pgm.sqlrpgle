**free

ctl-opt dftactgrp(*no);

dcl-pi P2229;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1653.rpgleinc'
/copy 'qrpgleref/P1605.rpgleinc'
/copy 'qrpgleref/P55.rpgleinc'

dcl-ds theTable extname('T263') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T263 LIMIT 1;

theCharVar = 'Hello from P2229';
dsply theCharVar;
P1653();
P1605();
P55();
return;