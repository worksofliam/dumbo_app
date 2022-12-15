**free

ctl-opt dftactgrp(*no);

dcl-pi P1266;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1218.rpgleinc'
/copy 'qrpgleref/P740.rpgleinc'
/copy 'qrpgleref/P6.rpgleinc'

dcl-ds theTable extname('T30') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T30 LIMIT 1;

theCharVar = 'Hello from P1266';
dsply theCharVar;
P1218();
P740();
P6();
return;