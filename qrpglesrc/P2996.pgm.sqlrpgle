**free

ctl-opt dftactgrp(*no);

dcl-pi P2996;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1558.rpgleinc'
/copy 'qrpgleref/P2152.rpgleinc'
/copy 'qrpgleref/P1354.rpgleinc'

dcl-ds theTable extname('T1314') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1314 LIMIT 1;

theCharVar = 'Hello from P2996';
dsply theCharVar;
P1558();
P2152();
P1354();
return;