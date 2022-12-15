**free

ctl-opt dftactgrp(*no);

dcl-pi P2100;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1300.rpgleinc'
/copy 'qrpgleref/P1899.rpgleinc'
/copy 'qrpgleref/P204.rpgleinc'

dcl-ds T977 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T977 FROM T977 LIMIT 1;

theCharVar = 'Hello from P2100';
dsply theCharVar;
P1300();
P1899();
P204();
return;