**free

ctl-opt dftactgrp(*no);

dcl-pi P2277;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1147.rpgleinc'
/copy 'qrpgleref/P929.rpgleinc'
/copy 'qrpgleref/P2218.rpgleinc'

dcl-ds T1284 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1284 FROM T1284 LIMIT 1;

theCharVar = 'Hello from P2277';
dsply theCharVar;
P1147();
P929();
P2218();
return;