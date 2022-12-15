**free

ctl-opt dftactgrp(*no);

dcl-pi P4894;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P950.rpgleinc'
/copy 'qrpgleref/P4168.rpgleinc'
/copy 'qrpgleref/P1114.rpgleinc'

dcl-ds theTable extname('T129') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T129 LIMIT 1;

theCharVar = 'Hello from P4894';
dsply theCharVar;
P950();
P4168();
P1114();
return;