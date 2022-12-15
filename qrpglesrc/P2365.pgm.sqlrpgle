**free

ctl-opt dftactgrp(*no);

dcl-pi P2365;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1751.rpgleinc'
/copy 'qrpgleref/P578.rpgleinc'
/copy 'qrpgleref/P361.rpgleinc'

dcl-ds theTable extname('T331') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T331 LIMIT 1;

theCharVar = 'Hello from P2365';
dsply theCharVar;
P1751();
P578();
P361();
return;