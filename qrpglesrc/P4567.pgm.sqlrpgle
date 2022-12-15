**free

ctl-opt dftactgrp(*no);

dcl-pi P4567;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3310.rpgleinc'
/copy 'qrpgleref/P1788.rpgleinc'
/copy 'qrpgleref/P3261.rpgleinc'

dcl-ds T298 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T298 FROM T298 LIMIT 1;

theCharVar = 'Hello from P4567';
dsply theCharVar;
P3310();
P1788();
P3261();
return;