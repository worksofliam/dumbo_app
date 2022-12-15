**free

ctl-opt dftactgrp(*no);

dcl-pi P4094;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2404.rpgleinc'
/copy 'qrpgleref/P2535.rpgleinc'
/copy 'qrpgleref/P3266.rpgleinc'

dcl-ds theTable extname('T225') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T225 LIMIT 1;

theCharVar = 'Hello from P4094';
dsply theCharVar;
P2404();
P2535();
P3266();
return;