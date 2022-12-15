**free

ctl-opt dftactgrp(*no);

dcl-pi P3271;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1226.rpgleinc'
/copy 'qrpgleref/P2121.rpgleinc'
/copy 'qrpgleref/P1279.rpgleinc'

dcl-ds T810 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T810 FROM T810 LIMIT 1;

theCharVar = 'Hello from P3271';
dsply theCharVar;
P1226();
P2121();
P1279();
return;