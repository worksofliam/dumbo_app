**free

ctl-opt dftactgrp(*no);

dcl-pi P2030;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P756.rpgleinc'
/copy 'qrpgleref/P1949.rpgleinc'
/copy 'qrpgleref/P1251.rpgleinc'

dcl-ds T1644 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1644 FROM T1644 LIMIT 1;

theCharVar = 'Hello from P2030';
dsply theCharVar;
P756();
P1949();
P1251();
return;