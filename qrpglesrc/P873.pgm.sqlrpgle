**free

ctl-opt dftactgrp(*no);

dcl-pi P873;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P171.rpgleinc'
/copy 'qrpgleref/P682.rpgleinc'
/copy 'qrpgleref/P548.rpgleinc'

dcl-ds T96 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T96 FROM T96 LIMIT 1;

theCharVar = 'Hello from P873';
dsply theCharVar;
P171();
P682();
P548();
return;