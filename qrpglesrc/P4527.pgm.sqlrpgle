**free

ctl-opt dftactgrp(*no);

dcl-pi P4527;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3240.rpgleinc'
/copy 'qrpgleref/P1127.rpgleinc'
/copy 'qrpgleref/P2721.rpgleinc'

dcl-ds T1556 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1556 FROM T1556 LIMIT 1;

theCharVar = 'Hello from P4527';
dsply theCharVar;
P3240();
P1127();
P2721();
return;