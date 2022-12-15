**free

ctl-opt dftactgrp(*no);

dcl-pi P2745;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2610.rpgleinc'
/copy 'qrpgleref/P460.rpgleinc'
/copy 'qrpgleref/P568.rpgleinc'

dcl-ds T1386 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1386 FROM T1386 LIMIT 1;

theCharVar = 'Hello from P2745';
dsply theCharVar;
P2610();
P460();
P568();
return;