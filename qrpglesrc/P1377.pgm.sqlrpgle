**free

ctl-opt dftactgrp(*no);

dcl-pi P1377;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P381.rpgleinc'
/copy 'qrpgleref/P332.rpgleinc'
/copy 'qrpgleref/P343.rpgleinc'

dcl-ds T258 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T258 FROM T258 LIMIT 1;

theCharVar = 'Hello from P1377';
dsply theCharVar;
P381();
P332();
P343();
return;