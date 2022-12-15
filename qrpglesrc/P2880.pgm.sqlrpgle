**free

ctl-opt dftactgrp(*no);

dcl-pi P2880;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P196.rpgleinc'
/copy 'qrpgleref/P1953.rpgleinc'
/copy 'qrpgleref/P1638.rpgleinc'

dcl-ds T91 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T91 FROM T91 LIMIT 1;

theCharVar = 'Hello from P2880';
dsply theCharVar;
P196();
P1953();
P1638();
return;