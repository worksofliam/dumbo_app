**free

ctl-opt dftactgrp(*no);

dcl-pi P2002;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1699.rpgleinc'
/copy 'qrpgleref/P252.rpgleinc'
/copy 'qrpgleref/P86.rpgleinc'

dcl-ds T1663 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1663 FROM T1663 LIMIT 1;

theCharVar = 'Hello from P2002';
dsply theCharVar;
P1699();
P252();
P86();
return;