**free

ctl-opt dftactgrp(*no);

dcl-pi P1290;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1107.rpgleinc'
/copy 'qrpgleref/P925.rpgleinc'

dcl-ds theTable extname('T586') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T586 LIMIT 1;

theCharVar = 'Hello from P1290';
dsply theCharVar;
P1107();
P925();
return;