**free

ctl-opt dftactgrp(*no);

dcl-pi P4777;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P395.rpgleinc'
/copy 'qrpgleref/P2865.rpgleinc'
/copy 'qrpgleref/P1519.rpgleinc'

dcl-ds T876 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T876 FROM T876 LIMIT 1;

theCharVar = 'Hello from P4777';
dsply theCharVar;
P395();
P2865();
P1519();
return;