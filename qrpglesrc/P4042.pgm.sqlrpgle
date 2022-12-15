**free

ctl-opt dftactgrp(*no);

dcl-pi P4042;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P167.rpgleinc'
/copy 'qrpgleref/P878.rpgleinc'
/copy 'qrpgleref/P821.rpgleinc'

dcl-ds T1413 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1413 FROM T1413 LIMIT 1;

theCharVar = 'Hello from P4042';
dsply theCharVar;
P167();
P878();
P821();
return;