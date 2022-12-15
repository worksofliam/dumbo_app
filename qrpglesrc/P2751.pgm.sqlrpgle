**free

ctl-opt dftactgrp(*no);

dcl-pi P2751;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P219.rpgleinc'
/copy 'qrpgleref/P1937.rpgleinc'
/copy 'qrpgleref/P624.rpgleinc'

dcl-ds T1212 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1212 FROM T1212 LIMIT 1;

theCharVar = 'Hello from P2751';
dsply theCharVar;
P219();
P1937();
P624();
return;