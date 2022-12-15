**free

ctl-opt dftactgrp(*no);

dcl-pi P984;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P354.rpgleinc'
/copy 'qrpgleref/P596.rpgleinc'
/copy 'qrpgleref/P56.rpgleinc'

dcl-ds theTable extname('T339') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T339 LIMIT 1;

theCharVar = 'Hello from P984';
dsply theCharVar;
P354();
P596();
P56();
return;