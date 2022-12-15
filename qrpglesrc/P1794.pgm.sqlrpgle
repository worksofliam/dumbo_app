**free

ctl-opt dftactgrp(*no);

dcl-pi P1794;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1565.rpgleinc'
/copy 'qrpgleref/P1398.rpgleinc'
/copy 'qrpgleref/P403.rpgleinc'

dcl-ds theTable extname('T94') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T94 LIMIT 1;

theCharVar = 'Hello from P1794';
dsply theCharVar;
P1565();
P1398();
P403();
return;