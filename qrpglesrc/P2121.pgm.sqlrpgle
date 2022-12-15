**free

ctl-opt dftactgrp(*no);

dcl-pi P2121;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P32.rpgleinc'
/copy 'qrpgleref/P1949.rpgleinc'
/copy 'qrpgleref/P44.rpgleinc'

dcl-ds theTable extname('T1207') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1207 LIMIT 1;

theCharVar = 'Hello from P2121';
dsply theCharVar;
P32();
P1949();
P44();
return;