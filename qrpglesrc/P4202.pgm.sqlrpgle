**free

ctl-opt dftactgrp(*no);

dcl-pi P4202;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1151.rpgleinc'
/copy 'qrpgleref/P2024.rpgleinc'
/copy 'qrpgleref/P2543.rpgleinc'

dcl-ds theTable extname('T1063') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1063 LIMIT 1;

theCharVar = 'Hello from P4202';
dsply theCharVar;
P1151();
P2024();
P2543();
return;