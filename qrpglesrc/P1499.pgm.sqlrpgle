**free

ctl-opt dftactgrp(*no);

dcl-pi P1499;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1018.rpgleinc'
/copy 'qrpgleref/P1395.rpgleinc'
/copy 'qrpgleref/P272.rpgleinc'

dcl-ds T348 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T348 FROM T348 LIMIT 1;

theCharVar = 'Hello from P1499';
dsply theCharVar;
P1018();
P1395();
P272();
return;