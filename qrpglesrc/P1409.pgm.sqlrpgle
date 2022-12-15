**free

ctl-opt dftactgrp(*no);

dcl-pi P1409;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P43.rpgleinc'
/copy 'qrpgleref/P1331.rpgleinc'
/copy 'qrpgleref/P758.rpgleinc'

dcl-ds T746 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T746 FROM T746 LIMIT 1;

theCharVar = 'Hello from P1409';
dsply theCharVar;
P43();
P1331();
P758();
return;