**free

ctl-opt dftactgrp(*no);

dcl-pi P1029;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P319.rpgleinc'
/copy 'qrpgleref/P460.rpgleinc'
/copy 'qrpgleref/P980.rpgleinc'

dcl-ds theTable extname('T100') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T100 LIMIT 1;

theCharVar = 'Hello from P1029';
dsply theCharVar;
P319();
P460();
P980();
return;