**free

ctl-opt dftactgrp(*no);

dcl-pi P2638;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P417.rpgleinc'
/copy 'qrpgleref/P240.rpgleinc'
/copy 'qrpgleref/P1401.rpgleinc'

dcl-ds T1166 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1166 FROM T1166 LIMIT 1;

theCharVar = 'Hello from P2638';
dsply theCharVar;
P417();
P240();
P1401();
return;