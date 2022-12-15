**free

ctl-opt dftactgrp(*no);

dcl-pi P4794;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P564.rpgleinc'
/copy 'qrpgleref/P1185.rpgleinc'
/copy 'qrpgleref/P347.rpgleinc'

dcl-ds T222 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T222 FROM T222 LIMIT 1;

theCharVar = 'Hello from P4794';
dsply theCharVar;
P564();
P1185();
P347();
return;