**free

ctl-opt dftactgrp(*no);

dcl-pi P4030;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2416.rpgleinc'
/copy 'qrpgleref/P2757.rpgleinc'
/copy 'qrpgleref/P2130.rpgleinc'

dcl-ds theTable extname('T959') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T959 LIMIT 1;

theCharVar = 'Hello from P4030';
dsply theCharVar;
P2416();
P2757();
P2130();
return;