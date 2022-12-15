**free

ctl-opt dftactgrp(*no);

dcl-pi P2908;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1558.rpgleinc'
/copy 'qrpgleref/P2579.rpgleinc'
/copy 'qrpgleref/P604.rpgleinc'

dcl-ds theTable extname('T1415') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1415 LIMIT 1;

theCharVar = 'Hello from P2908';
dsply theCharVar;
P1558();
P2579();
P604();
return;