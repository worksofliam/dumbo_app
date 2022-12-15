**free

ctl-opt dftactgrp(*no);

dcl-pi P889;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P798.rpgleinc'
/copy 'qrpgleref/P473.rpgleinc'
/copy 'qrpgleref/P186.rpgleinc'

dcl-ds T1482 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1482 FROM T1482 LIMIT 1;

theCharVar = 'Hello from P889';
dsply theCharVar;
P798();
P473();
P186();
return;