**free

ctl-opt dftactgrp(*no);

dcl-pi P1906;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1594.rpgleinc'
/copy 'qrpgleref/P1231.rpgleinc'
/copy 'qrpgleref/P925.rpgleinc'

dcl-ds T1556 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1556 FROM T1556 LIMIT 1;

theCharVar = 'Hello from P1906';
dsply theCharVar;
P1594();
P1231();
P925();
return;