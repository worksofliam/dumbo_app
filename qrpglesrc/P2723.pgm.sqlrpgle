**free

ctl-opt dftactgrp(*no);

dcl-pi P2723;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1361.rpgleinc'
/copy 'qrpgleref/P2488.rpgleinc'
/copy 'qrpgleref/P254.rpgleinc'

dcl-ds theTable extname('T502') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T502 LIMIT 1;

theCharVar = 'Hello from P2723';
dsply theCharVar;
P1361();
P2488();
P254();
return;