**free

ctl-opt dftactgrp(*no);

dcl-pi P1681;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P419.rpgleinc'
/copy 'qrpgleref/P1519.rpgleinc'
/copy 'qrpgleref/P1338.rpgleinc'

dcl-ds T588 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T588 FROM T588 LIMIT 1;

theCharVar = 'Hello from P1681';
dsply theCharVar;
P419();
P1519();
P1338();
return;