**free

ctl-opt dftactgrp(*no);

dcl-pi P3211;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P391.rpgleinc'
/copy 'qrpgleref/P2869.rpgleinc'
/copy 'qrpgleref/P1332.rpgleinc'

dcl-ds theTable extname('T439') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T439 LIMIT 1;

theCharVar = 'Hello from P3211';
dsply theCharVar;
P391();
P2869();
P1332();
return;