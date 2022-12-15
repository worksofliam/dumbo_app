**free

ctl-opt dftactgrp(*no);

dcl-pi P2199;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P214.rpgleinc'
/copy 'qrpgleref/P68.rpgleinc'
/copy 'qrpgleref/P18.rpgleinc'

dcl-ds theTable extname('T413') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T413 LIMIT 1;

theCharVar = 'Hello from P2199';
dsply theCharVar;
P214();
P68();
P18();
return;