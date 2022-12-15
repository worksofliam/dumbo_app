**free

ctl-opt dftactgrp(*no);

dcl-pi P3104;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1709.rpgleinc'
/copy 'qrpgleref/P1527.rpgleinc'
/copy 'qrpgleref/P1908.rpgleinc'

dcl-ds theTable extname('T46') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T46 LIMIT 1;

theCharVar = 'Hello from P3104';
dsply theCharVar;
P1709();
P1527();
P1908();
return;