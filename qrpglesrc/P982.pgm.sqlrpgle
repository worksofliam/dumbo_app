**free

ctl-opt dftactgrp(*no);

dcl-pi P982;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P627.rpgleinc'
/copy 'qrpgleref/P888.rpgleinc'
/copy 'qrpgleref/P411.rpgleinc'

dcl-ds T478 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T478 FROM T478 LIMIT 1;

theCharVar = 'Hello from P982';
dsply theCharVar;
P627();
P888();
P411();
return;