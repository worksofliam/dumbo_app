**free

ctl-opt dftactgrp(*no);

dcl-pi P1166;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P303.rpgleinc'
/copy 'qrpgleref/P641.rpgleinc'
/copy 'qrpgleref/P425.rpgleinc'

dcl-ds theTable extname('T22') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T22 LIMIT 1;

theCharVar = 'Hello from P1166';
dsply theCharVar;
P303();
P641();
P425();
return;