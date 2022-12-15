**free

ctl-opt dftactgrp(*no);

dcl-pi P2635;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2114.rpgleinc'
/copy 'qrpgleref/P20.rpgleinc'
/copy 'qrpgleref/P1288.rpgleinc'

dcl-ds T1774 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1774 FROM T1774 LIMIT 1;

theCharVar = 'Hello from P2635';
dsply theCharVar;
P2114();
P20();
P1288();
return;