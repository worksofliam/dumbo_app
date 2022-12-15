**free

ctl-opt dftactgrp(*no);

dcl-pi P2854;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P216.rpgleinc'
/copy 'qrpgleref/P892.rpgleinc'
/copy 'qrpgleref/P2263.rpgleinc'

dcl-ds T848 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T848 FROM T848 LIMIT 1;

theCharVar = 'Hello from P2854';
dsply theCharVar;
P216();
P892();
P2263();
return;