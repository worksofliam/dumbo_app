**free

ctl-opt dftactgrp(*no);

dcl-pi P2632;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2056.rpgleinc'
/copy 'qrpgleref/P1706.rpgleinc'
/copy 'qrpgleref/P2241.rpgleinc'

dcl-ds T188 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T188 FROM T188 LIMIT 1;

theCharVar = 'Hello from P2632';
dsply theCharVar;
P2056();
P1706();
P2241();
return;