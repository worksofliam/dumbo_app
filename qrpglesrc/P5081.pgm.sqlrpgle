**free

ctl-opt dftactgrp(*no);

dcl-pi P5081;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P691.rpgleinc'
/copy 'qrpgleref/P989.rpgleinc'
/copy 'qrpgleref/P1433.rpgleinc'

dcl-ds theTable extname('T1055') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1055 LIMIT 1;

theCharVar = 'Hello from P5081';
dsply theCharVar;
P691();
P989();
P1433();
return;