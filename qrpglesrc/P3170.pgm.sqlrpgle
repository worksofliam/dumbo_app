**free

ctl-opt dftactgrp(*no);

dcl-pi P3170;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1366.rpgleinc'
/copy 'qrpgleref/P2318.rpgleinc'
/copy 'qrpgleref/P2881.rpgleinc'

dcl-ds T1174 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1174 FROM T1174 LIMIT 1;

theCharVar = 'Hello from P3170';
dsply theCharVar;
P1366();
P2318();
P2881();
return;