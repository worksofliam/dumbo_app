**free

ctl-opt dftactgrp(*no);

dcl-pi P1248;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P574.rpgleinc'
/copy 'qrpgleref/P457.rpgleinc'
/copy 'qrpgleref/P116.rpgleinc'

dcl-ds T258 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T258 FROM T258 LIMIT 1;

theCharVar = 'Hello from P1248';
dsply theCharVar;
P574();
P457();
P116();
return;