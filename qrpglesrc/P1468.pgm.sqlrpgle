**free

ctl-opt dftactgrp(*no);

dcl-pi P1468;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P555.rpgleinc'
/copy 'qrpgleref/P1097.rpgleinc'
/copy 'qrpgleref/P1449.rpgleinc'

dcl-ds theTable extname('T272') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T272 LIMIT 1;

theCharVar = 'Hello from P1468';
dsply theCharVar;
P555();
P1097();
P1449();
return;