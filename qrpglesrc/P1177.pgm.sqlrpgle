**free

ctl-opt dftactgrp(*no);

dcl-pi P1177;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P172.rpgleinc'
/copy 'qrpgleref/P327.rpgleinc'
/copy 'qrpgleref/P1176.rpgleinc'

dcl-ds T404 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T404 FROM T404 LIMIT 1;

theCharVar = 'Hello from P1177';
dsply theCharVar;
P172();
P327();
P1176();
return;