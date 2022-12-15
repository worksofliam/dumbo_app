**free

ctl-opt dftactgrp(*no);

dcl-pi P3755;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3341.rpgleinc'
/copy 'qrpgleref/P1042.rpgleinc'
/copy 'qrpgleref/P32.rpgleinc'

dcl-ds T1352 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1352 FROM T1352 LIMIT 1;

theCharVar = 'Hello from P3755';
dsply theCharVar;
P3341();
P1042();
P32();
return;