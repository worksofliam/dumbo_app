**free

ctl-opt dftactgrp(*no);

dcl-pi P1002;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P908.rpgleinc'
/copy 'qrpgleref/P512.rpgleinc'
/copy 'qrpgleref/P510.rpgleinc'

dcl-ds theTable extname('T1001') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1001 LIMIT 1;

theCharVar = 'Hello from P1002';
dsply theCharVar;
P908();
P512();
P510();
return;