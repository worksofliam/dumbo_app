**free

ctl-opt dftactgrp(*no);

dcl-pi P1905;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P891.rpgleinc'
/copy 'qrpgleref/P364.rpgleinc'
/copy 'qrpgleref/P633.rpgleinc'

dcl-ds theTable extname('T626') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T626 LIMIT 1;

theCharVar = 'Hello from P1905';
dsply theCharVar;
P891();
P364();
P633();
return;