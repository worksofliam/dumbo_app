**free

ctl-opt dftactgrp(*no);

dcl-pi P391;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P174.rpgleinc'
/copy 'qrpgleref/P280.rpgleinc'
/copy 'qrpgleref/P290.rpgleinc'

dcl-ds theTable extname('T1006') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1006 LIMIT 1;

theCharVar = 'Hello from P391';
dsply theCharVar;
P174();
P280();
P290();
return;