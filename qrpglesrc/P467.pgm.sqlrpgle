**free

ctl-opt dftactgrp(*no);

dcl-pi P467;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P366.rpgleinc'
/copy 'qrpgleref/P164.rpgleinc'
/copy 'qrpgleref/P329.rpgleinc'

dcl-ds T239 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T239 FROM T239 LIMIT 1;

theCharVar = 'Hello from P467';
dsply theCharVar;
P366();
P164();
P329();
return;