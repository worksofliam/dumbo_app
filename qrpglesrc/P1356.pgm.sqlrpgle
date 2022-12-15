**free

ctl-opt dftactgrp(*no);

dcl-pi P1356;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P405.rpgleinc'
/copy 'qrpgleref/P736.rpgleinc'
/copy 'qrpgleref/P593.rpgleinc'

dcl-ds T199 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T199 FROM T199 LIMIT 1;

theCharVar = 'Hello from P1356';
dsply theCharVar;
P405();
P736();
P593();
return;