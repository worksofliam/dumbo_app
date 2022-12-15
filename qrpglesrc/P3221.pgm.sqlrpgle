**free

ctl-opt dftactgrp(*no);

dcl-pi P3221;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P142.rpgleinc'
/copy 'qrpgleref/P2206.rpgleinc'
/copy 'qrpgleref/P2592.rpgleinc'

dcl-ds T649 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T649 FROM T649 LIMIT 1;

theCharVar = 'Hello from P3221';
dsply theCharVar;
P142();
P2206();
P2592();
return;