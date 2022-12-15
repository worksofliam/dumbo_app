**free

ctl-opt dftactgrp(*no);

dcl-pi P1373;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P510.rpgleinc'
/copy 'qrpgleref/P701.rpgleinc'
/copy 'qrpgleref/P1277.rpgleinc'

dcl-ds theTable extname('T712') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T712 LIMIT 1;

theCharVar = 'Hello from P1373';
dsply theCharVar;
P510();
P701();
P1277();
return;