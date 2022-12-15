**free

ctl-opt dftactgrp(*no);

dcl-pi P3719;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P591.rpgleinc'
/copy 'qrpgleref/P1516.rpgleinc'
/copy 'qrpgleref/P2225.rpgleinc'

dcl-ds T1785 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1785 FROM T1785 LIMIT 1;

theCharVar = 'Hello from P3719';
dsply theCharVar;
P591();
P1516();
P2225();
return;