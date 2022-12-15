**free

ctl-opt dftactgrp(*no);

dcl-pi P2649;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P677.rpgleinc'
/copy 'qrpgleref/P80.rpgleinc'
/copy 'qrpgleref/P1545.rpgleinc'

dcl-ds theTable extname('T799') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T799 LIMIT 1;

theCharVar = 'Hello from P2649';
dsply theCharVar;
P677();
P80();
P1545();
return;