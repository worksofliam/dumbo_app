**free

ctl-opt dftactgrp(*no);

dcl-pi P779;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P773.rpgleinc'
/copy 'qrpgleref/P690.rpgleinc'
/copy 'qrpgleref/P293.rpgleinc'

dcl-ds theTable extname('T401') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T401 LIMIT 1;

theCharVar = 'Hello from P779';
dsply theCharVar;
P773();
P690();
P293();
return;