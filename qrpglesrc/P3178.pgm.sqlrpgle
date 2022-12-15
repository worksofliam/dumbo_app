**free

ctl-opt dftactgrp(*no);

dcl-pi P3178;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1533.rpgleinc'
/copy 'qrpgleref/P2518.rpgleinc'
/copy 'qrpgleref/P1958.rpgleinc'

dcl-ds T696 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T696 FROM T696 LIMIT 1;

theCharVar = 'Hello from P3178';
dsply theCharVar;
P1533();
P2518();
P1958();
return;