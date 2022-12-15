**free

ctl-opt dftactgrp(*no);

dcl-pi P1319;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P666.rpgleinc'
/copy 'qrpgleref/P838.rpgleinc'
/copy 'qrpgleref/P25.rpgleinc'

dcl-ds T330 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T330 FROM T330 LIMIT 1;

theCharVar = 'Hello from P1319';
dsply theCharVar;
P666();
P838();
P25();
return;