**free

ctl-opt dftactgrp(*no);

dcl-pi P5512;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P4916.rpgleinc'
/copy 'qrpgleref/P3760.rpgleinc'
/copy 'qrpgleref/P5154.rpgleinc'

dcl-ds theTable extname('T1573') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1573 LIMIT 1;

theCharVar = 'Hello from P5512';
dsply theCharVar;
P4916();
P3760();
P5154();
return;