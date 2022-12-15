**free

ctl-opt dftactgrp(*no);

dcl-pi P2078;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1117.rpgleinc'
/copy 'qrpgleref/P713.rpgleinc'
/copy 'qrpgleref/P627.rpgleinc'

dcl-ds T127 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T127 FROM T127 LIMIT 1;

theCharVar = 'Hello from P2078';
dsply theCharVar;
P1117();
P713();
P627();
return;