**free

ctl-opt dftactgrp(*no);

dcl-pi P4467;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1041.rpgleinc'
/copy 'qrpgleref/P2098.rpgleinc'
/copy 'qrpgleref/P1271.rpgleinc'

dcl-ds theTable extname('T1280') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1280 LIMIT 1;

theCharVar = 'Hello from P4467';
dsply theCharVar;
P1041();
P2098();
P1271();
return;