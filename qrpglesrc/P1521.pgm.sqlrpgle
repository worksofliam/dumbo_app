**free

ctl-opt dftactgrp(*no);

dcl-pi P1521;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1388.rpgleinc'
/copy 'qrpgleref/P259.rpgleinc'
/copy 'qrpgleref/P1155.rpgleinc'

dcl-ds theTable extname('T611') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T611 LIMIT 1;

theCharVar = 'Hello from P1521';
dsply theCharVar;
P1388();
P259();
P1155();
return;