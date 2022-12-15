**free

ctl-opt dftactgrp(*no);

dcl-pi P97;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P28.rpgleinc'
/copy 'qrpgleref/P45.rpgleinc'
/copy 'qrpgleref/P8.rpgleinc'

dcl-ds T156 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T156 FROM T156 LIMIT 1;

theCharVar = 'Hello from P97';
dsply theCharVar;
P28();
P45();
P8();
return;