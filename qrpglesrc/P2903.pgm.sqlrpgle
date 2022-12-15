**free

ctl-opt dftactgrp(*no);

dcl-pi P2903;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P601.rpgleinc'
/copy 'qrpgleref/P1522.rpgleinc'
/copy 'qrpgleref/P488.rpgleinc'

dcl-ds T461 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T461 FROM T461 LIMIT 1;

theCharVar = 'Hello from P2903';
dsply theCharVar;
P601();
P1522();
P488();
return;