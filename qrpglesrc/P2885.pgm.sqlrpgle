**free

ctl-opt dftactgrp(*no);

dcl-pi P2885;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2789.rpgleinc'
/copy 'qrpgleref/P2529.rpgleinc'
/copy 'qrpgleref/P1863.rpgleinc'

dcl-ds theTable extname('T1084') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1084 LIMIT 1;

theCharVar = 'Hello from P2885';
dsply theCharVar;
P2789();
P2529();
P1863();
return;