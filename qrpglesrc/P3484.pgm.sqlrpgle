**free

ctl-opt dftactgrp(*no);

dcl-pi P3484;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P872.rpgleinc'
/copy 'qrpgleref/P1058.rpgleinc'
/copy 'qrpgleref/P1746.rpgleinc'

dcl-ds theTable extname('T1283') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1283 LIMIT 1;

theCharVar = 'Hello from P3484';
dsply theCharVar;
P872();
P1058();
P1746();
return;