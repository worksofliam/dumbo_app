**free

ctl-opt dftactgrp(*no);

dcl-pi P1515;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P455.rpgleinc'
/copy 'qrpgleref/P35.rpgleinc'
/copy 'qrpgleref/P1441.rpgleinc'

dcl-ds theTable extname('T602') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T602 LIMIT 1;

theCharVar = 'Hello from P1515';
dsply theCharVar;
P455();
P35();
P1441();
return;