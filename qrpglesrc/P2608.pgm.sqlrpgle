**free

ctl-opt dftactgrp(*no);

dcl-pi P2608;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1326.rpgleinc'
/copy 'qrpgleref/P937.rpgleinc'
/copy 'qrpgleref/P691.rpgleinc'

dcl-ds T698 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T698 FROM T698 LIMIT 1;

theCharVar = 'Hello from P2608';
dsply theCharVar;
P1326();
P937();
P691();
return;