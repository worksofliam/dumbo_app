**free

ctl-opt dftactgrp(*no);

dcl-pi P787;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P782.rpgleinc'
/copy 'qrpgleref/P435.rpgleinc'
/copy 'qrpgleref/P198.rpgleinc'

dcl-ds theTable extname('T479') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T479 LIMIT 1;

theCharVar = 'Hello from P787';
dsply theCharVar;
P782();
P435();
P198();
return;