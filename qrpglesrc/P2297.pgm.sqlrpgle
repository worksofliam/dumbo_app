**free

ctl-opt dftactgrp(*no);

dcl-pi P2297;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2035.rpgleinc'
/copy 'qrpgleref/P1711.rpgleinc'
/copy 'qrpgleref/P23.rpgleinc'

dcl-ds T64 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T64 FROM T64 LIMIT 1;

theCharVar = 'Hello from P2297';
dsply theCharVar;
P2035();
P1711();
P23();
return;