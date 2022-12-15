**free

ctl-opt dftactgrp(*no);

dcl-pi P1457;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P292.rpgleinc'
/copy 'qrpgleref/P1197.rpgleinc'
/copy 'qrpgleref/P1278.rpgleinc'

dcl-ds T731 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T731 FROM T731 LIMIT 1;

theCharVar = 'Hello from P1457';
dsply theCharVar;
P292();
P1197();
P1278();
return;