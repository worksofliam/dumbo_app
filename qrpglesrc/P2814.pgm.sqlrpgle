**free

ctl-opt dftactgrp(*no);

dcl-pi P2814;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1935.rpgleinc'
/copy 'qrpgleref/P216.rpgleinc'
/copy 'qrpgleref/P17.rpgleinc'

dcl-ds theTable extname('T705') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T705 LIMIT 1;

theCharVar = 'Hello from P2814';
dsply theCharVar;
P1935();
P216();
P17();
return;