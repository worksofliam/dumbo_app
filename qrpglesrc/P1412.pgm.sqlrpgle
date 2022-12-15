**free

ctl-opt dftactgrp(*no);

dcl-pi P1412;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1399.rpgleinc'
/copy 'qrpgleref/P119.rpgleinc'
/copy 'qrpgleref/P975.rpgleinc'

dcl-ds T1747 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1747 FROM T1747 LIMIT 1;

theCharVar = 'Hello from P1412';
dsply theCharVar;
P1399();
P119();
P975();
return;