**free

ctl-opt dftactgrp(*no);

dcl-pi P4646;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1643.rpgleinc'
/copy 'qrpgleref/P3256.rpgleinc'
/copy 'qrpgleref/P4470.rpgleinc'

dcl-ds T1521 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1521 FROM T1521 LIMIT 1;

theCharVar = 'Hello from P4646';
dsply theCharVar;
P1643();
P3256();
P4470();
return;