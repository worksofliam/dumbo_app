**free

ctl-opt dftactgrp(*no);

dcl-pi P417;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P140.rpgleinc'
/copy 'qrpgleref/P390.rpgleinc'
/copy 'qrpgleref/P144.rpgleinc'

dcl-ds theTable extname('T1565') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1565 LIMIT 1;

theCharVar = 'Hello from P417';
dsply theCharVar;
P140();
P390();
P144();
return;