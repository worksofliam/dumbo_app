**free

ctl-opt dftactgrp(*no);

dcl-pi P4446;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1504.rpgleinc'
/copy 'qrpgleref/P3879.rpgleinc'
/copy 'qrpgleref/P2026.rpgleinc'

dcl-ds T1306 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1306 FROM T1306 LIMIT 1;

theCharVar = 'Hello from P4446';
dsply theCharVar;
P1504();
P3879();
P2026();
return;