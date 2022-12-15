**free

ctl-opt dftactgrp(*no);

dcl-pi P3192;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1447.rpgleinc'
/copy 'qrpgleref/P3061.rpgleinc'
/copy 'qrpgleref/P1336.rpgleinc'

dcl-ds T1848 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1848 FROM T1848 LIMIT 1;

theCharVar = 'Hello from P3192';
dsply theCharVar;
P1447();
P3061();
P1336();
return;