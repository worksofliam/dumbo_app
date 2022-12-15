**free

ctl-opt dftactgrp(*no);

dcl-pi P673;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P583.rpgleinc'
/copy 'qrpgleref/P137.rpgleinc'
/copy 'qrpgleref/P662.rpgleinc'

dcl-ds T241 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T241 FROM T241 LIMIT 1;

theCharVar = 'Hello from P673';
dsply theCharVar;
P583();
P137();
P662();
return;