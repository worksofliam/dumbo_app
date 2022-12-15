**free

ctl-opt dftactgrp(*no);

dcl-pi P1585;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P738.rpgleinc'
/copy 'qrpgleref/P1151.rpgleinc'
/copy 'qrpgleref/P700.rpgleinc'

dcl-ds T587 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T587 FROM T587 LIMIT 1;

theCharVar = 'Hello from P1585';
dsply theCharVar;
P738();
P1151();
P700();
return;