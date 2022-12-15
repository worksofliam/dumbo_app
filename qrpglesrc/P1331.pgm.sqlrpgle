**free

ctl-opt dftactgrp(*no);

dcl-pi P1331;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P727.rpgleinc'
/copy 'qrpgleref/P1039.rpgleinc'
/copy 'qrpgleref/P657.rpgleinc'

dcl-ds T572 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T572 FROM T572 LIMIT 1;

theCharVar = 'Hello from P1331';
dsply theCharVar;
P727();
P1039();
P657();
return;