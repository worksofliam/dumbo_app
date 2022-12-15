**free

ctl-opt dftactgrp(*no);

dcl-pi P3984;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2389.rpgleinc'
/copy 'qrpgleref/P3364.rpgleinc'
/copy 'qrpgleref/P876.rpgleinc'

dcl-ds T1368 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1368 FROM T1368 LIMIT 1;

theCharVar = 'Hello from P3984';
dsply theCharVar;
P2389();
P3364();
P876();
return;