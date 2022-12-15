**free

ctl-opt dftactgrp(*no);

dcl-pi P1880;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P825.rpgleinc'
/copy 'qrpgleref/P631.rpgleinc'
/copy 'qrpgleref/P361.rpgleinc'

dcl-ds theTable extname('T1510') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1510 LIMIT 1;

theCharVar = 'Hello from P1880';
dsply theCharVar;
P825();
P631();
P361();
return;