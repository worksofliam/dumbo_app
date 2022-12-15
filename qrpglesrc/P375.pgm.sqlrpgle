**free

ctl-opt dftactgrp(*no);

dcl-pi P375;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P212.rpgleinc'
/copy 'qrpgleref/P198.rpgleinc'
/copy 'qrpgleref/P156.rpgleinc'

dcl-ds theTable extname('T1534') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1534 LIMIT 1;

theCharVar = 'Hello from P375';
dsply theCharVar;
P212();
P198();
P156();
return;