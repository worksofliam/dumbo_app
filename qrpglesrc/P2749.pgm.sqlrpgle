**free

ctl-opt dftactgrp(*no);

dcl-pi P2749;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P139.rpgleinc'
/copy 'qrpgleref/P2041.rpgleinc'
/copy 'qrpgleref/P1038.rpgleinc'

dcl-ds theTable extname('T916') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T916 LIMIT 1;

theCharVar = 'Hello from P2749';
dsply theCharVar;
P139();
P2041();
P1038();
return;