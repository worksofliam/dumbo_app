**free

ctl-opt dftactgrp(*no);

dcl-pi P3477;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P30.rpgleinc'
/copy 'qrpgleref/P1042.rpgleinc'
/copy 'qrpgleref/P2052.rpgleinc'

dcl-ds T38 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T38 FROM T38 LIMIT 1;

theCharVar = 'Hello from P3477';
dsply theCharVar;
P30();
P1042();
P2052();
return;