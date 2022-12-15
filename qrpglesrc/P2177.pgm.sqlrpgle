**free

ctl-opt dftactgrp(*no);

dcl-pi P2177;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1874.rpgleinc'
/copy 'qrpgleref/P1556.rpgleinc'
/copy 'qrpgleref/P1108.rpgleinc'

dcl-ds T1762 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1762 FROM T1762 LIMIT 1;

theCharVar = 'Hello from P2177';
dsply theCharVar;
P1874();
P1556();
P1108();
return;