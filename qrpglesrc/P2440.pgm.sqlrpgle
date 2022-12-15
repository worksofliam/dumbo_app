**free

ctl-opt dftactgrp(*no);

dcl-pi P2440;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P725.rpgleinc'
/copy 'qrpgleref/P1484.rpgleinc'
/copy 'qrpgleref/P1525.rpgleinc'

dcl-ds theTable extname('T1179') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1179 LIMIT 1;

theCharVar = 'Hello from P2440';
dsply theCharVar;
P725();
P1484();
P1525();
return;