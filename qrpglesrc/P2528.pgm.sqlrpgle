**free

ctl-opt dftactgrp(*no);

dcl-pi P2528;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2368.rpgleinc'
/copy 'qrpgleref/P1187.rpgleinc'
/copy 'qrpgleref/P2507.rpgleinc'

dcl-ds T1095 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1095 FROM T1095 LIMIT 1;

theCharVar = 'Hello from P2528';
dsply theCharVar;
P2368();
P1187();
P2507();
return;