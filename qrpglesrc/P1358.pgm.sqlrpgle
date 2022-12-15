**free

ctl-opt dftactgrp(*no);

dcl-pi P1358;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P5.rpgleinc'
/copy 'qrpgleref/P434.rpgleinc'
/copy 'qrpgleref/P627.rpgleinc'

dcl-ds theTable extname('T1047') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1047 LIMIT 1;

theCharVar = 'Hello from P1358';
dsply theCharVar;
P5();
P434();
P627();
return;