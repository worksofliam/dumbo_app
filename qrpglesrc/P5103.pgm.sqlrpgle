**free

ctl-opt dftactgrp(*no);

dcl-pi P5103;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P4491.rpgleinc'
/copy 'qrpgleref/P4738.rpgleinc'
/copy 'qrpgleref/P3601.rpgleinc'

dcl-ds theTable extname('T146') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T146 LIMIT 1;

theCharVar = 'Hello from P5103';
dsply theCharVar;
P4491();
P4738();
P3601();
return;