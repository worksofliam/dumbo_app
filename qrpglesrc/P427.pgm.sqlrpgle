**free

ctl-opt dftactgrp(*no);

dcl-pi P427;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P60.rpgleinc'
/copy 'qrpgleref/P272.rpgleinc'
/copy 'qrpgleref/P379.rpgleinc'

dcl-ds T219 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T219 FROM T219 LIMIT 1;

theCharVar = 'Hello from P427';
dsply theCharVar;
P60();
P272();
P379();
return;