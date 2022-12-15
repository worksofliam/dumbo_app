**free

ctl-opt dftactgrp(*no);

dcl-pi P723;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P467.rpgleinc'
/copy 'qrpgleref/P425.rpgleinc'
/copy 'qrpgleref/P496.rpgleinc'

dcl-ds T1691 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1691 FROM T1691 LIMIT 1;

theCharVar = 'Hello from P723';
dsply theCharVar;
P467();
P425();
P496();
return;