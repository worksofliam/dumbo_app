**free

ctl-opt dftactgrp(*no);

dcl-pi P1842;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P284.rpgleinc'
/copy 'qrpgleref/P210.rpgleinc'
/copy 'qrpgleref/P365.rpgleinc'

dcl-ds T969 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T969 FROM T969 LIMIT 1;

theCharVar = 'Hello from P1842';
dsply theCharVar;
P284();
P210();
P365();
return;