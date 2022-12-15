**free

ctl-opt dftactgrp(*no);

dcl-pi P673;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P229.rpgleinc'
/copy 'qrpgleref/P408.rpgleinc'
/copy 'qrpgleref/P379.rpgleinc'

dcl-ds T152 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T152 FROM T152 LIMIT 1;

theCharVar = 'Hello from P673';
dsply theCharVar;
P229();
P408();
P379();
return;