**free

ctl-opt dftactgrp(*no);

dcl-pi P4717;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1197.rpgleinc'
/copy 'qrpgleref/P2673.rpgleinc'
/copy 'qrpgleref/P3396.rpgleinc'

dcl-ds T1737 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1737 FROM T1737 LIMIT 1;

theCharVar = 'Hello from P4717';
dsply theCharVar;
P1197();
P2673();
P3396();
return;