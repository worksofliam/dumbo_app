**free

ctl-opt dftactgrp(*no);

dcl-pi P3828;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1289.rpgleinc'
/copy 'qrpgleref/P421.rpgleinc'
/copy 'qrpgleref/P2155.rpgleinc'

dcl-ds T1521 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1521 FROM T1521 LIMIT 1;

theCharVar = 'Hello from P3828';
dsply theCharVar;
P1289();
P421();
P2155();
return;