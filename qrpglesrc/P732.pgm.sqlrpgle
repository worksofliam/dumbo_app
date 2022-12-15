**free

ctl-opt dftactgrp(*no);

dcl-pi P732;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P678.rpgleinc'
/copy 'qrpgleref/P411.rpgleinc'
/copy 'qrpgleref/P355.rpgleinc'

dcl-ds T311 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T311 FROM T311 LIMIT 1;

theCharVar = 'Hello from P732';
dsply theCharVar;
P678();
P411();
P355();
return;