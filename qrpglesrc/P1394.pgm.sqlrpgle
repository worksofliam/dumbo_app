**free

ctl-opt dftactgrp(*no);

dcl-pi P1394;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P378.rpgleinc'
/copy 'qrpgleref/P53.rpgleinc'
/copy 'qrpgleref/P352.rpgleinc'

dcl-ds theTable extname('T328') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T328 LIMIT 1;

theCharVar = 'Hello from P1394';
dsply theCharVar;
P378();
P53();
P352();
return;