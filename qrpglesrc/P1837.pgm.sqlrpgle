**free

ctl-opt dftactgrp(*no);

dcl-pi P1837;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1561.rpgleinc'
/copy 'qrpgleref/P948.rpgleinc'
/copy 'qrpgleref/P326.rpgleinc'

dcl-ds T560 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T560 FROM T560 LIMIT 1;

theCharVar = 'Hello from P1837';
dsply theCharVar;
P1561();
P948();
P326();
return;