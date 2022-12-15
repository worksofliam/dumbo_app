**free

ctl-opt dftactgrp(*no);

dcl-pi P3588;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2983.rpgleinc'
/copy 'qrpgleref/P2720.rpgleinc'
/copy 'qrpgleref/P241.rpgleinc'

dcl-ds theTable extname('T922') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T922 LIMIT 1;

theCharVar = 'Hello from P3588';
dsply theCharVar;
P2983();
P2720();
P241();
return;