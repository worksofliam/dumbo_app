**free

ctl-opt dftactgrp(*no);

dcl-pi P4907;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P120.rpgleinc'
/copy 'qrpgleref/P3789.rpgleinc'
/copy 'qrpgleref/P848.rpgleinc'

dcl-ds T64 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T64 FROM T64 LIMIT 1;

theCharVar = 'Hello from P4907';
dsply theCharVar;
P120();
P3789();
P848();
return;