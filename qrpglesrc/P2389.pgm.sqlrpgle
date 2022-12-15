**free

ctl-opt dftactgrp(*no);

dcl-pi P2389;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2295.rpgleinc'
/copy 'qrpgleref/P6.rpgleinc'
/copy 'qrpgleref/P2044.rpgleinc'

dcl-ds T333 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T333 FROM T333 LIMIT 1;

theCharVar = 'Hello from P2389';
dsply theCharVar;
P2295();
P6();
P2044();
return;