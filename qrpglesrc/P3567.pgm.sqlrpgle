**free

ctl-opt dftactgrp(*no);

dcl-pi P3567;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1374.rpgleinc'
/copy 'qrpgleref/P1825.rpgleinc'
/copy 'qrpgleref/P352.rpgleinc'

dcl-ds T479 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T479 FROM T479 LIMIT 1;

theCharVar = 'Hello from P3567';
dsply theCharVar;
P1374();
P1825();
P352();
return;