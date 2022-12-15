**free

ctl-opt dftactgrp(*no);

dcl-pi P509;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P275.rpgleinc'
/copy 'qrpgleref/P422.rpgleinc'
/copy 'qrpgleref/P379.rpgleinc'

dcl-ds T167 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T167 FROM T167 LIMIT 1;

theCharVar = 'Hello from P509';
dsply theCharVar;
P275();
P422();
P379();
return;