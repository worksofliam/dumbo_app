**free

ctl-opt dftactgrp(*no);

dcl-pi P920;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P65.rpgleinc'
/copy 'qrpgleref/P228.rpgleinc'
/copy 'qrpgleref/P850.rpgleinc'

dcl-ds theTable extname('T1511') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1511 LIMIT 1;

theCharVar = 'Hello from P920';
dsply theCharVar;
P65();
P228();
P850();
return;