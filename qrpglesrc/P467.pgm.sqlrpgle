**free

ctl-opt dftactgrp(*no);

dcl-pi P467;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P39.rpgleinc'
/copy 'qrpgleref/P197.rpgleinc'
/copy 'qrpgleref/P2.rpgleinc'

dcl-ds T105 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T105 FROM T105 LIMIT 1;

theCharVar = 'Hello from P467';
dsply theCharVar;
P39();
P197();
P2();
return;