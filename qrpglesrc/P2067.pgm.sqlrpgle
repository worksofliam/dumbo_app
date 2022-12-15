**free

ctl-opt dftactgrp(*no);

dcl-pi P2067;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P167.rpgleinc'
/copy 'qrpgleref/P1947.rpgleinc'
/copy 'qrpgleref/P850.rpgleinc'

dcl-ds T67 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T67 FROM T67 LIMIT 1;

theCharVar = 'Hello from P2067';
dsply theCharVar;
P167();
P1947();
P850();
return;