**free

ctl-opt dftactgrp(*no);

dcl-pi P1155;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1021.rpgleinc'
/copy 'qrpgleref/P103.rpgleinc'
/copy 'qrpgleref/P472.rpgleinc'

dcl-ds theTable extname('T445') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T445 LIMIT 1;

theCharVar = 'Hello from P1155';
dsply theCharVar;
P1021();
P103();
P472();
return;