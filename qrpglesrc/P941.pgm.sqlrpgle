**free

ctl-opt dftactgrp(*no);

dcl-pi P941;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P157.rpgleinc'
/copy 'qrpgleref/P870.rpgleinc'
/copy 'qrpgleref/P165.rpgleinc'

dcl-ds theTable extname('T968') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T968 LIMIT 1;

theCharVar = 'Hello from P941';
dsply theCharVar;
P157();
P870();
P165();
return;