**free

ctl-opt dftactgrp(*no);

dcl-pi P942;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P544.rpgleinc'
/copy 'qrpgleref/P400.rpgleinc'
/copy 'qrpgleref/P719.rpgleinc'

dcl-ds theTable extname('T1297') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1297 LIMIT 1;

theCharVar = 'Hello from P942';
dsply theCharVar;
P544();
P400();
P719();
return;