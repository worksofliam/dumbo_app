**free

ctl-opt dftactgrp(*no);

dcl-pi P3722;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2798.rpgleinc'
/copy 'qrpgleref/P1138.rpgleinc'
/copy 'qrpgleref/P277.rpgleinc'

dcl-ds theTable extname('T1783') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1783 LIMIT 1;

theCharVar = 'Hello from P3722';
dsply theCharVar;
P2798();
P1138();
P277();
return;