**free

ctl-opt dftactgrp(*no);

dcl-pi P2701;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1593.rpgleinc'
/copy 'qrpgleref/P389.rpgleinc'
/copy 'qrpgleref/P2696.rpgleinc'

dcl-ds T101 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T101 FROM T101 LIMIT 1;

theCharVar = 'Hello from P2701';
dsply theCharVar;
P1593();
P389();
P2696();
return;