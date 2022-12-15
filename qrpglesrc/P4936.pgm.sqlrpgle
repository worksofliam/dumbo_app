**free

ctl-opt dftactgrp(*no);

dcl-pi P4936;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3408.rpgleinc'
/copy 'qrpgleref/P2907.rpgleinc'
/copy 'qrpgleref/P3593.rpgleinc'

dcl-ds T1346 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1346 FROM T1346 LIMIT 1;

theCharVar = 'Hello from P4936';
dsply theCharVar;
P3408();
P2907();
P3593();
return;