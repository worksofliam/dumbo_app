**free

ctl-opt dftactgrp(*no);

dcl-pi P2087;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P948.rpgleinc'
/copy 'qrpgleref/P225.rpgleinc'
/copy 'qrpgleref/P126.rpgleinc'

dcl-ds T1068 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1068 FROM T1068 LIMIT 1;

theCharVar = 'Hello from P2087';
dsply theCharVar;
P948();
P225();
P126();
return;