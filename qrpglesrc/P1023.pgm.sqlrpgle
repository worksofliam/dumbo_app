**free

ctl-opt dftactgrp(*no);

dcl-pi P1023;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P879.rpgleinc'
/copy 'qrpgleref/P332.rpgleinc'
/copy 'qrpgleref/P716.rpgleinc'

dcl-ds theTable extname('T1163') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1163 LIMIT 1;

theCharVar = 'Hello from P1023';
dsply theCharVar;
P879();
P332();
P716();
return;