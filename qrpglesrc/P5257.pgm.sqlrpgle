**free

ctl-opt dftactgrp(*no);

dcl-pi P5257;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2171.rpgleinc'
/copy 'qrpgleref/P1198.rpgleinc'
/copy 'qrpgleref/P1291.rpgleinc'

dcl-ds T15 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T15 FROM T15 LIMIT 1;

theCharVar = 'Hello from P5257';
dsply theCharVar;
P2171();
P1198();
P1291();
return;