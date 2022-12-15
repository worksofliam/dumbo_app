**free

ctl-opt dftactgrp(*no);

dcl-pi P908;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P473.rpgleinc'
/copy 'qrpgleref/P331.rpgleinc'
/copy 'qrpgleref/P59.rpgleinc'

dcl-ds T206 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T206 FROM T206 LIMIT 1;

theCharVar = 'Hello from P908';
dsply theCharVar;
P473();
P331();
P59();
return;