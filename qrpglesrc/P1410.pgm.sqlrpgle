**free

ctl-opt dftactgrp(*no);

dcl-pi P1410;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1232.rpgleinc'
/copy 'qrpgleref/P0.rpgleinc'
/copy 'qrpgleref/P574.rpgleinc'

dcl-ds theTable extname('T84') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T84 LIMIT 1;

theCharVar = 'Hello from P1410';
dsply theCharVar;
P1232();
P0();
P574();
return;