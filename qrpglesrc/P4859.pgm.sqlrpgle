**free

ctl-opt dftactgrp(*no);

dcl-pi P4859;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1860.rpgleinc'
/copy 'qrpgleref/P4717.rpgleinc'
/copy 'qrpgleref/P2543.rpgleinc'

dcl-ds theTable extname('T1860') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1860 LIMIT 1;

theCharVar = 'Hello from P4859';
dsply theCharVar;
P1860();
P4717();
P2543();
return;