**free

ctl-opt dftactgrp(*no);

dcl-pi P359;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P300.rpgleinc'
/copy 'qrpgleref/P148.rpgleinc'
/copy 'qrpgleref/P139.rpgleinc'

dcl-ds theTable extname('T118') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T118 LIMIT 1;

theCharVar = 'Hello from P359';
dsply theCharVar;
P300();
P148();
P139();
return;