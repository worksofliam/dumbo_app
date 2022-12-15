**free

ctl-opt dftactgrp(*no);

dcl-pi P4817;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2976.rpgleinc'
/copy 'qrpgleref/P2141.rpgleinc'
/copy 'qrpgleref/P2623.rpgleinc'

dcl-ds theTable extname('T400') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T400 LIMIT 1;

theCharVar = 'Hello from P4817';
dsply theCharVar;
P2976();
P2141();
P2623();
return;