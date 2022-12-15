**free

ctl-opt dftactgrp(*no);

dcl-pi P1230;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P93.rpgleinc'
/copy 'qrpgleref/P525.rpgleinc'
/copy 'qrpgleref/P27.rpgleinc'

dcl-ds theTable extname('T1241') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1241 LIMIT 1;

theCharVar = 'Hello from P1230';
dsply theCharVar;
P93();
P525();
P27();
return;