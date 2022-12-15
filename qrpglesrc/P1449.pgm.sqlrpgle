**free

ctl-opt dftactgrp(*no);

dcl-pi P1449;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1235.rpgleinc'
/copy 'qrpgleref/P1122.rpgleinc'
/copy 'qrpgleref/P589.rpgleinc'

dcl-ds T399 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T399 FROM T399 LIMIT 1;

theCharVar = 'Hello from P1449';
dsply theCharVar;
P1235();
P1122();
P589();
return;