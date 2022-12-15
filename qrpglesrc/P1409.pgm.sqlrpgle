**free

ctl-opt dftactgrp(*no);

dcl-pi P1409;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1185.rpgleinc'
/copy 'qrpgleref/P1396.rpgleinc'
/copy 'qrpgleref/P497.rpgleinc'

dcl-ds T1100 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1100 FROM T1100 LIMIT 1;

theCharVar = 'Hello from P1409';
dsply theCharVar;
P1185();
P1396();
P497();
return;