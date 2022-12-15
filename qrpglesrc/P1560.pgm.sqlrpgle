**free

ctl-opt dftactgrp(*no);

dcl-pi P1560;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P907.rpgleinc'
/copy 'qrpgleref/P1166.rpgleinc'
/copy 'qrpgleref/P1214.rpgleinc'

dcl-ds T381 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T381 FROM T381 LIMIT 1;

theCharVar = 'Hello from P1560';
dsply theCharVar;
P907();
P1166();
P1214();
return;