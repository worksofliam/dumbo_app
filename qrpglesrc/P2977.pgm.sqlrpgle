**free

ctl-opt dftactgrp(*no);

dcl-pi P2977;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P365.rpgleinc'
/copy 'qrpgleref/P2560.rpgleinc'
/copy 'qrpgleref/P2682.rpgleinc'

dcl-ds theTable extname('T1183') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1183 LIMIT 1;

theCharVar = 'Hello from P2977';
dsply theCharVar;
P365();
P2560();
P2682();
return;