**free

ctl-opt dftactgrp(*no);

dcl-pi P691;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P118.rpgleinc'
/copy 'qrpgleref/P230.rpgleinc'
/copy 'qrpgleref/P581.rpgleinc'

dcl-ds theTable extname('T391') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T391 LIMIT 1;

theCharVar = 'Hello from P691';
dsply theCharVar;
P118();
P230();
P581();
return;