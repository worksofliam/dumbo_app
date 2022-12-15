**free

ctl-opt dftactgrp(*no);

dcl-pi P3346;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2866.rpgleinc'
/copy 'qrpgleref/P3251.rpgleinc'
/copy 'qrpgleref/P617.rpgleinc'

dcl-ds T751 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T751 FROM T751 LIMIT 1;

theCharVar = 'Hello from P3346';
dsply theCharVar;
P2866();
P3251();
P617();
return;