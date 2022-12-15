**free

ctl-opt dftactgrp(*no);

dcl-pi P667;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P214.rpgleinc'
/copy 'qrpgleref/P473.rpgleinc'
/copy 'qrpgleref/P503.rpgleinc'

dcl-ds T177 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T177 FROM T177 LIMIT 1;

theCharVar = 'Hello from P667';
dsply theCharVar;
P214();
P473();
P503();
return;