**free

ctl-opt dftactgrp(*no);

dcl-pi P179;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P45.rpgleinc'
/copy 'qrpgleref/P116.rpgleinc'
/copy 'qrpgleref/P88.rpgleinc'

dcl-ds T82 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T82 FROM T82 LIMIT 1;

theCharVar = 'Hello from P179';
dsply theCharVar;
P45();
P116();
P88();
return;