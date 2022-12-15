**free

ctl-opt dftactgrp(*no);

dcl-pi P1740;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P633.rpgleinc'
/copy 'qrpgleref/P199.rpgleinc'
/copy 'qrpgleref/P1571.rpgleinc'

dcl-ds theTable extname('T1324') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1324 LIMIT 1;

theCharVar = 'Hello from P1740';
dsply theCharVar;
P633();
P199();
P1571();
return;