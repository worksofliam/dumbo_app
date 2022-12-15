**free

ctl-opt dftactgrp(*no);

dcl-pi P952;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P801.rpgleinc'
/copy 'qrpgleref/P610.rpgleinc'
/copy 'qrpgleref/P838.rpgleinc'

dcl-ds theTable extname('T638') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T638 LIMIT 1;

theCharVar = 'Hello from P952';
dsply theCharVar;
P801();
P610();
P838();
return;