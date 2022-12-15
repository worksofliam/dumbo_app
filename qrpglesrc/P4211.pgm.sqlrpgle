**free

ctl-opt dftactgrp(*no);

dcl-pi P4211;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3970.rpgleinc'
/copy 'qrpgleref/P3746.rpgleinc'
/copy 'qrpgleref/P3790.rpgleinc'

dcl-ds theTable extname('T120') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T120 LIMIT 1;

theCharVar = 'Hello from P4211';
dsply theCharVar;
P3970();
P3746();
P3790();
return;