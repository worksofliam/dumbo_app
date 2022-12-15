**free

ctl-opt dftactgrp(*no);

dcl-pi P2264;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P21.rpgleinc'
/copy 'qrpgleref/P1211.rpgleinc'
/copy 'qrpgleref/P1502.rpgleinc'

dcl-ds theTable extname('T567') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T567 LIMIT 1;

theCharVar = 'Hello from P2264';
dsply theCharVar;
P21();
P1211();
P1502();
return;