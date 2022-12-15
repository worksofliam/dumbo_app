**free

ctl-opt dftactgrp(*no);

dcl-pi P1099;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P566.rpgleinc'
/copy 'qrpgleref/P100.rpgleinc'
/copy 'qrpgleref/P501.rpgleinc'

dcl-ds T1856 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1856 FROM T1856 LIMIT 1;

theCharVar = 'Hello from P1099';
dsply theCharVar;
P566();
P100();
P501();
return;