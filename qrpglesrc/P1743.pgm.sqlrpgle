**free

ctl-opt dftactgrp(*no);

dcl-pi P1743;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1402.rpgleinc'
/copy 'qrpgleref/P1002.rpgleinc'
/copy 'qrpgleref/P912.rpgleinc'

dcl-ds T833 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T833 FROM T833 LIMIT 1;

theCharVar = 'Hello from P1743';
dsply theCharVar;
P1402();
P1002();
P912();
return;