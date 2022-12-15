**free

ctl-opt dftactgrp(*no);

dcl-pi P1365;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P948.rpgleinc'
/copy 'qrpgleref/P717.rpgleinc'
/copy 'qrpgleref/P1256.rpgleinc'

dcl-ds theTable extname('T996') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T996 LIMIT 1;

theCharVar = 'Hello from P1365';
dsply theCharVar;
P948();
P717();
P1256();
return;