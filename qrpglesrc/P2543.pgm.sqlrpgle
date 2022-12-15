**free

ctl-opt dftactgrp(*no);

dcl-pi P2543;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1408.rpgleinc'
/copy 'qrpgleref/P1310.rpgleinc'
/copy 'qrpgleref/P2418.rpgleinc'

dcl-ds theTable extname('T1853') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1853 LIMIT 1;

theCharVar = 'Hello from P2543';
dsply theCharVar;
P1408();
P1310();
P2418();
return;