**free

ctl-opt dftactgrp(*no);

dcl-pi P947;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P162.rpgleinc'
/copy 'qrpgleref/P488.rpgleinc'
/copy 'qrpgleref/P710.rpgleinc'

dcl-ds theTable extname('T1087') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1087 LIMIT 1;

theCharVar = 'Hello from P947';
dsply theCharVar;
P162();
P488();
P710();
return;