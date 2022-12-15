**free

ctl-opt dftactgrp(*no);

dcl-pi P4531;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3100.rpgleinc'
/copy 'qrpgleref/P3704.rpgleinc'
/copy 'qrpgleref/P2566.rpgleinc'

dcl-ds T1434 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1434 FROM T1434 LIMIT 1;

theCharVar = 'Hello from P4531';
dsply theCharVar;
P3100();
P3704();
P2566();
return;