**free

ctl-opt dftactgrp(*no);

dcl-pi P657;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P239.rpgleinc'
/copy 'qrpgleref/P248.rpgleinc'
/copy 'qrpgleref/P535.rpgleinc'

dcl-ds theTable extname('T422') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T422 LIMIT 1;

theCharVar = 'Hello from P657';
dsply theCharVar;
P239();
P248();
P535();
return;