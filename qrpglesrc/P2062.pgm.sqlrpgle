**free

ctl-opt dftactgrp(*no);

dcl-pi P2062;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1117.rpgleinc'
/copy 'qrpgleref/P508.rpgleinc'
/copy 'qrpgleref/P1509.rpgleinc'

dcl-ds theTable extname('T190') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T190 LIMIT 1;

theCharVar = 'Hello from P2062';
dsply theCharVar;
P1117();
P508();
P1509();
return;