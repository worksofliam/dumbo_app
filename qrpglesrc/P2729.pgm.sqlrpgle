**free

ctl-opt dftactgrp(*no);

dcl-pi P2729;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1831.rpgleinc'
/copy 'qrpgleref/P1754.rpgleinc'
/copy 'qrpgleref/P1233.rpgleinc'

dcl-ds T1207 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1207 FROM T1207 LIMIT 1;

theCharVar = 'Hello from P2729';
dsply theCharVar;
P1831();
P1754();
P1233();
return;