**free

ctl-opt dftactgrp(*no);

dcl-pi P3868;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1385.rpgleinc'
/copy 'qrpgleref/P991.rpgleinc'
/copy 'qrpgleref/P1573.rpgleinc'

dcl-ds T428 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T428 FROM T428 LIMIT 1;

theCharVar = 'Hello from P3868';
dsply theCharVar;
P1385();
P991();
P1573();
return;