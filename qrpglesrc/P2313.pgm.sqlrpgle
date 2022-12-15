**free

ctl-opt dftactgrp(*no);

dcl-pi P2313;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1316.rpgleinc'
/copy 'qrpgleref/P1639.rpgleinc'
/copy 'qrpgleref/P1983.rpgleinc'

dcl-ds T1139 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1139 FROM T1139 LIMIT 1;

theCharVar = 'Hello from P2313';
dsply theCharVar;
P1316();
P1639();
P1983();
return;