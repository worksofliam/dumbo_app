**free

ctl-opt dftactgrp(*no);

dcl-pi P2276;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P172.rpgleinc'
/copy 'qrpgleref/P37.rpgleinc'
/copy 'qrpgleref/P933.rpgleinc'

dcl-ds T463 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T463 FROM T463 LIMIT 1;

theCharVar = 'Hello from P2276';
dsply theCharVar;
P172();
P37();
P933();
return;