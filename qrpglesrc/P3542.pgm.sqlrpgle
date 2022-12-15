**free

ctl-opt dftactgrp(*no);

dcl-pi P3542;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3168.rpgleinc'
/copy 'qrpgleref/P1164.rpgleinc'
/copy 'qrpgleref/P1283.rpgleinc'

dcl-ds theTable extname('T612') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T612 LIMIT 1;

theCharVar = 'Hello from P3542';
dsply theCharVar;
P3168();
P1164();
P1283();
return;