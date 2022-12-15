**free

ctl-opt dftactgrp(*no);

dcl-pi P535;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P532.rpgleinc'
/copy 'qrpgleref/P494.rpgleinc'
/copy 'qrpgleref/P44.rpgleinc'

dcl-ds theTable extname('T298') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T298 LIMIT 1;

theCharVar = 'Hello from P535';
dsply theCharVar;
P532();
P494();
P44();
return;