**free

ctl-opt dftactgrp(*no);

dcl-pi P2600;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2436.rpgleinc'
/copy 'qrpgleref/P973.rpgleinc'
/copy 'qrpgleref/P2063.rpgleinc'

dcl-ds theTable extname('T1087') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1087 LIMIT 1;

theCharVar = 'Hello from P2600';
dsply theCharVar;
P2436();
P973();
P2063();
return;