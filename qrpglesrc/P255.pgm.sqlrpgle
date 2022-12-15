**free

ctl-opt dftactgrp(*no);

dcl-pi P255;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P127.rpgleinc'
/copy 'qrpgleref/P175.rpgleinc'
/copy 'qrpgleref/P227.rpgleinc'

dcl-ds T169 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T169 FROM T169 LIMIT 1;

theCharVar = 'Hello from P255';
dsply theCharVar;
P127();
P175();
P227();
return;