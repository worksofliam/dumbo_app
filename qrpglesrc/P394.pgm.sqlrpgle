**free

ctl-opt dftactgrp(*no);

dcl-pi P394;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P235.rpgleinc'
/copy 'qrpgleref/P334.rpgleinc'
/copy 'qrpgleref/P42.rpgleinc'

dcl-ds T258 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T258 FROM T258 LIMIT 1;

theCharVar = 'Hello from P394';
dsply theCharVar;
P235();
P334();
P42();
return;