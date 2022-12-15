**free

ctl-opt dftactgrp(*no);

dcl-pi P2664;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2089.rpgleinc'
/copy 'qrpgleref/P1386.rpgleinc'
/copy 'qrpgleref/P481.rpgleinc'

dcl-ds T83 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T83 FROM T83 LIMIT 1;

theCharVar = 'Hello from P2664';
dsply theCharVar;
P2089();
P1386();
P481();
return;