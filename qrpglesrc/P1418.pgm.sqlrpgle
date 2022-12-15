**free

ctl-opt dftactgrp(*no);

dcl-pi P1418;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P476.rpgleinc'
/copy 'qrpgleref/P1153.rpgleinc'
/copy 'qrpgleref/P1341.rpgleinc'

dcl-ds T527 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T527 FROM T527 LIMIT 1;

theCharVar = 'Hello from P1418';
dsply theCharVar;
P476();
P1153();
P1341();
return;