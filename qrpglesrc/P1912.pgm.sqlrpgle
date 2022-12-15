**free

ctl-opt dftactgrp(*no);

dcl-pi P1912;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P379.rpgleinc'
/copy 'qrpgleref/P1863.rpgleinc'
/copy 'qrpgleref/P760.rpgleinc'

dcl-ds theTable extname('T354') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T354 LIMIT 1;

theCharVar = 'Hello from P1912';
dsply theCharVar;
P379();
P1863();
P760();
return;