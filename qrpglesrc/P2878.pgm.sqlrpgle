**free

ctl-opt dftactgrp(*no);

dcl-pi P2878;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P381.rpgleinc'
/copy 'qrpgleref/P684.rpgleinc'
/copy 'qrpgleref/P1923.rpgleinc'

dcl-ds theTable extname('T374') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T374 LIMIT 1;

theCharVar = 'Hello from P2878';
dsply theCharVar;
P381();
P684();
P1923();
return;