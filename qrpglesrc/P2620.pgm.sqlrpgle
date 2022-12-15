**free

ctl-opt dftactgrp(*no);

dcl-pi P2620;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1773.rpgleinc'
/copy 'qrpgleref/P383.rpgleinc'
/copy 'qrpgleref/P1870.rpgleinc'

dcl-ds T138 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T138 FROM T138 LIMIT 1;

theCharVar = 'Hello from P2620';
dsply theCharVar;
P1773();
P383();
P1870();
return;