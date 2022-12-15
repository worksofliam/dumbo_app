**free

ctl-opt dftactgrp(*no);

dcl-pi P832;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P530.rpgleinc'
/copy 'qrpgleref/P348.rpgleinc'
/copy 'qrpgleref/P389.rpgleinc'

dcl-ds theTable extname('T512') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T512 LIMIT 1;

theCharVar = 'Hello from P832';
dsply theCharVar;
P530();
P348();
P389();
return;