**free

ctl-opt dftactgrp(*no);

dcl-pi P2670;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P584.rpgleinc'
/copy 'qrpgleref/P2482.rpgleinc'
/copy 'qrpgleref/P806.rpgleinc'

dcl-ds theTable extname('T1270') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1270 LIMIT 1;

theCharVar = 'Hello from P2670';
dsply theCharVar;
P584();
P2482();
P806();
return;