**free

ctl-opt dftactgrp(*no);

dcl-pi P3150;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3063.rpgleinc'
/copy 'qrpgleref/P170.rpgleinc'
/copy 'qrpgleref/P686.rpgleinc'

dcl-ds T49 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T49 FROM T49 LIMIT 1;

theCharVar = 'Hello from P3150';
dsply theCharVar;
P3063();
P170();
P686();
return;