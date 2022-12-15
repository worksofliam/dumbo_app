**free

ctl-opt dftactgrp(*no);

dcl-pi P2251;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1514.rpgleinc'
/copy 'qrpgleref/P430.rpgleinc'
/copy 'qrpgleref/P1682.rpgleinc'

dcl-ds T1119 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1119 FROM T1119 LIMIT 1;

theCharVar = 'Hello from P2251';
dsply theCharVar;
P1514();
P430();
P1682();
return;