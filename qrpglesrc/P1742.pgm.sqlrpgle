**free

ctl-opt dftactgrp(*no);

dcl-pi P1742;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1651.rpgleinc'
/copy 'qrpgleref/P1114.rpgleinc'
/copy 'qrpgleref/P399.rpgleinc'

dcl-ds T509 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T509 FROM T509 LIMIT 1;

theCharVar = 'Hello from P1742';
dsply theCharVar;
P1651();
P1114();
P399();
return;