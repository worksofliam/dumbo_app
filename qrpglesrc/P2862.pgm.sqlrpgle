**free

ctl-opt dftactgrp(*no);

dcl-pi P2862;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1980.rpgleinc'
/copy 'qrpgleref/P1854.rpgleinc'
/copy 'qrpgleref/P2362.rpgleinc'

dcl-ds T1141 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1141 FROM T1141 LIMIT 1;

theCharVar = 'Hello from P2862';
dsply theCharVar;
P1980();
P1854();
P2362();
return;