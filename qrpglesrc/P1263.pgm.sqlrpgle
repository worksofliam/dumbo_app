**free

ctl-opt dftactgrp(*no);

dcl-pi P1263;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P952.rpgleinc'
/copy 'qrpgleref/P849.rpgleinc'
/copy 'qrpgleref/P495.rpgleinc'

dcl-ds theTable extname('T1702') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1702 LIMIT 1;

theCharVar = 'Hello from P1263';
dsply theCharVar;
P952();
P849();
P495();
return;