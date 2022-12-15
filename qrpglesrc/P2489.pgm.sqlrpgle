**free

ctl-opt dftactgrp(*no);

dcl-pi P2489;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P531.rpgleinc'
/copy 'qrpgleref/P117.rpgleinc'
/copy 'qrpgleref/P1194.rpgleinc'

dcl-ds theTable extname('T27') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T27 LIMIT 1;

theCharVar = 'Hello from P2489';
dsply theCharVar;
P531();
P117();
P1194();
return;