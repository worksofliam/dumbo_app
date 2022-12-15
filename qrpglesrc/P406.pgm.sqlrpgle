**free

ctl-opt dftactgrp(*no);

dcl-pi P406;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P154.rpgleinc'
/copy 'qrpgleref/P117.rpgleinc'
/copy 'qrpgleref/P98.rpgleinc'

dcl-ds theTable extname('T37') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T37 LIMIT 1;

theCharVar = 'Hello from P406';
dsply theCharVar;
P154();
P117();
P98();
return;