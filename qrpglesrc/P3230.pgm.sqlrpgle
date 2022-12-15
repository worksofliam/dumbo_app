**free

ctl-opt dftactgrp(*no);

dcl-pi P3230;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P114.rpgleinc'
/copy 'qrpgleref/P2029.rpgleinc'
/copy 'qrpgleref/P2085.rpgleinc'

dcl-ds theTable extname('T988') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T988 LIMIT 1;

theCharVar = 'Hello from P3230';
dsply theCharVar;
P114();
P2029();
P2085();
return;