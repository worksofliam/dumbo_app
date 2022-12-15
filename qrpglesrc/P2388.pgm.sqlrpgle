**free

ctl-opt dftactgrp(*no);

dcl-pi P2388;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2018.rpgleinc'
/copy 'qrpgleref/P2111.rpgleinc'
/copy 'qrpgleref/P2254.rpgleinc'

dcl-ds T1139 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1139 FROM T1139 LIMIT 1;

theCharVar = 'Hello from P2388';
dsply theCharVar;
P2018();
P2111();
P2254();
return;