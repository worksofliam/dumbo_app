**free

ctl-opt dftactgrp(*no);

dcl-pi P2023;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1991.rpgleinc'
/copy 'qrpgleref/P1114.rpgleinc'
/copy 'qrpgleref/P1893.rpgleinc'

dcl-ds T1197 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1197 FROM T1197 LIMIT 1;

theCharVar = 'Hello from P2023';
dsply theCharVar;
P1991();
P1114();
P1893();
return;