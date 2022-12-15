**free

ctl-opt dftactgrp(*no);

dcl-pi P727;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P610.rpgleinc'
/copy 'qrpgleref/P334.rpgleinc'
/copy 'qrpgleref/P497.rpgleinc'

dcl-ds T967 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T967 FROM T967 LIMIT 1;

theCharVar = 'Hello from P727';
dsply theCharVar;
P610();
P334();
P497();
return;