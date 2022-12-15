**free

ctl-opt dftactgrp(*no);

dcl-pi P238;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P45.rpgleinc'
/copy 'qrpgleref/P21.rpgleinc'
/copy 'qrpgleref/P55.rpgleinc'

dcl-ds T465 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T465 FROM T465 LIMIT 1;

theCharVar = 'Hello from P238';
dsply theCharVar;
P45();
P21();
P55();
return;