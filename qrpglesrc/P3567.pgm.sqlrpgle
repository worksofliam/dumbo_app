**free

ctl-opt dftactgrp(*no);

dcl-pi P3567;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1230.rpgleinc'
/copy 'qrpgleref/P331.rpgleinc'
/copy 'qrpgleref/P521.rpgleinc'

dcl-ds T669 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T669 FROM T669 LIMIT 1;

theCharVar = 'Hello from P3567';
dsply theCharVar;
P1230();
P331();
P521();
return;