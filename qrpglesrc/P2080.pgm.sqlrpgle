**free

ctl-opt dftactgrp(*no);

dcl-pi P2080;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1442.rpgleinc'
/copy 'qrpgleref/P1559.rpgleinc'
/copy 'qrpgleref/P205.rpgleinc'

dcl-ds T313 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T313 FROM T313 LIMIT 1;

theCharVar = 'Hello from P2080';
dsply theCharVar;
P1442();
P1559();
P205();
return;