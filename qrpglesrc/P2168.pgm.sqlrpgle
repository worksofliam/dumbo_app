**free

ctl-opt dftactgrp(*no);

dcl-pi P2168;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P587.rpgleinc'
/copy 'qrpgleref/P2038.rpgleinc'
/copy 'qrpgleref/P1445.rpgleinc'

dcl-ds T1503 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1503 FROM T1503 LIMIT 1;

theCharVar = 'Hello from P2168';
dsply theCharVar;
P587();
P2038();
P1445();
return;