**free

ctl-opt dftactgrp(*no);

dcl-pi P1412;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P889.rpgleinc'
/copy 'qrpgleref/P437.rpgleinc'
/copy 'qrpgleref/P678.rpgleinc'

dcl-ds T217 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T217 FROM T217 LIMIT 1;

theCharVar = 'Hello from P1412';
dsply theCharVar;
P889();
P437();
P678();
return;