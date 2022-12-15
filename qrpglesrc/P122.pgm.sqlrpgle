**free

ctl-opt dftactgrp(*no);

dcl-pi P122;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P45.rpgleinc'
/copy 'qrpgleref/P43.rpgleinc'
/copy 'qrpgleref/P64.rpgleinc'

dcl-ds T425 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T425 FROM T425 LIMIT 1;

theCharVar = 'Hello from P122';
dsply theCharVar;
P45();
P43();
P64();
return;