**free

ctl-opt dftactgrp(*no);

dcl-pi P1711;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1412.rpgleinc'
/copy 'qrpgleref/P790.rpgleinc'
/copy 'qrpgleref/P537.rpgleinc'

dcl-ds theTable extname('T1457') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1457 LIMIT 1;

theCharVar = 'Hello from P1711';
dsply theCharVar;
P1412();
P790();
P537();
return;