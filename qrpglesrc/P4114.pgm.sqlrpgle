**free

ctl-opt dftactgrp(*no);

dcl-pi P4114;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P394.rpgleinc'
/copy 'qrpgleref/P3208.rpgleinc'
/copy 'qrpgleref/P589.rpgleinc'

dcl-ds theTable extname('T1552') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1552 LIMIT 1;

theCharVar = 'Hello from P4114';
dsply theCharVar;
P394();
P3208();
P589();
return;