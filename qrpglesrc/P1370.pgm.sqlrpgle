**free

ctl-opt dftactgrp(*no);

dcl-pi P1370;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P713.rpgleinc'
/copy 'qrpgleref/P1011.rpgleinc'
/copy 'qrpgleref/P814.rpgleinc'

dcl-ds theTable extname('T72') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T72 LIMIT 1;

theCharVar = 'Hello from P1370';
dsply theCharVar;
P713();
P1011();
P814();
return;