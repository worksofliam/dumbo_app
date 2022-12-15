**free

ctl-opt dftactgrp(*no);

dcl-pi P700;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P445.rpgleinc'
/copy 'qrpgleref/P619.rpgleinc'
/copy 'qrpgleref/P161.rpgleinc'

dcl-ds T1031 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1031 FROM T1031 LIMIT 1;

theCharVar = 'Hello from P700';
dsply theCharVar;
P445();
P619();
P161();
return;