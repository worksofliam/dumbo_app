**free

ctl-opt dftactgrp(*no);

dcl-pi P1329;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P921.rpgleinc'
/copy 'qrpgleref/P1107.rpgleinc'
/copy 'qrpgleref/P453.rpgleinc'

dcl-ds theTable extname('T570') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T570 LIMIT 1;

theCharVar = 'Hello from P1329';
dsply theCharVar;
P921();
P1107();
P453();
return;