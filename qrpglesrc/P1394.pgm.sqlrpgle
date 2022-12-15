**free

ctl-opt dftactgrp(*no);

dcl-pi P1394;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1034.rpgleinc'
/copy 'qrpgleref/P1212.rpgleinc'
/copy 'qrpgleref/P173.rpgleinc'

dcl-ds theTable extname('T882') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T882 LIMIT 1;

theCharVar = 'Hello from P1394';
dsply theCharVar;
P1034();
P1212();
P173();
return;