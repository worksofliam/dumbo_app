**free

ctl-opt dftactgrp(*no);

dcl-pi P2055;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1335.rpgleinc'
/copy 'qrpgleref/P733.rpgleinc'
/copy 'qrpgleref/P1290.rpgleinc'

dcl-ds T69 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T69 FROM T69 LIMIT 1;

theCharVar = 'Hello from P2055';
dsply theCharVar;
P1335();
P733();
P1290();
return;