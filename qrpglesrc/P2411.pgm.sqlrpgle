**free

ctl-opt dftactgrp(*no);

dcl-pi P2411;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1425.rpgleinc'
/copy 'qrpgleref/P1885.rpgleinc'
/copy 'qrpgleref/P1094.rpgleinc'

dcl-ds T1295 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1295 FROM T1295 LIMIT 1;

theCharVar = 'Hello from P2411';
dsply theCharVar;
P1425();
P1885();
P1094();
return;