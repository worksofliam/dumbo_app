**free

ctl-opt dftactgrp(*no);

dcl-pi P1839;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1562.rpgleinc'
/copy 'qrpgleref/P712.rpgleinc'
/copy 'qrpgleref/P850.rpgleinc'

dcl-ds theTable extname('T1070') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1070 LIMIT 1;

theCharVar = 'Hello from P1839';
dsply theCharVar;
P1562();
P712();
P850();
return;