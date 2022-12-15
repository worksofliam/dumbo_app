**free

ctl-opt dftactgrp(*no);

dcl-pi P2360;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1036.rpgleinc'
/copy 'qrpgleref/P482.rpgleinc'
/copy 'qrpgleref/P1695.rpgleinc'

dcl-ds T427 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T427 FROM T427 LIMIT 1;

theCharVar = 'Hello from P2360';
dsply theCharVar;
P1036();
P482();
P1695();
return;