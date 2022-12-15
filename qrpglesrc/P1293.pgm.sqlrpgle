**free

ctl-opt dftactgrp(*no);

dcl-pi P1293;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P441.rpgleinc'
/copy 'qrpgleref/P1065.rpgleinc'
/copy 'qrpgleref/P38.rpgleinc'

dcl-ds T1515 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1515 FROM T1515 LIMIT 1;

theCharVar = 'Hello from P1293';
dsply theCharVar;
P441();
P1065();
P38();
return;