**free

ctl-opt dftactgrp(*no);

dcl-pi P559;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P473.rpgleinc'
/copy 'qrpgleref/P35.rpgleinc'
/copy 'qrpgleref/P250.rpgleinc'

dcl-ds T23 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T23 FROM T23 LIMIT 1;

theCharVar = 'Hello from P559';
dsply theCharVar;
P473();
P35();
P250();
return;