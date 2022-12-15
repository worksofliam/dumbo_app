**free

ctl-opt dftactgrp(*no);

dcl-pi P1854;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1276.rpgleinc'
/copy 'qrpgleref/P345.rpgleinc'
/copy 'qrpgleref/P765.rpgleinc'

dcl-ds T28 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T28 FROM T28 LIMIT 1;

theCharVar = 'Hello from P1854';
dsply theCharVar;
P1276();
P345();
P765();
return;