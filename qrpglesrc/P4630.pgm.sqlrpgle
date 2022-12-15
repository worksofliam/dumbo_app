**free

ctl-opt dftactgrp(*no);

dcl-pi P4630;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2578.rpgleinc'
/copy 'qrpgleref/P79.rpgleinc'
/copy 'qrpgleref/P1128.rpgleinc'

dcl-ds theTable extname('T142') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T142 LIMIT 1;

theCharVar = 'Hello from P4630';
dsply theCharVar;
P2578();
P79();
P1128();
return;