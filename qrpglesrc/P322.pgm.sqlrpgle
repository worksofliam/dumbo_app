**free

ctl-opt dftactgrp(*no);

dcl-pi P322;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P91.rpgleinc'
/copy 'qrpgleref/P156.rpgleinc'
/copy 'qrpgleref/P190.rpgleinc'

dcl-ds theTable extname('T391') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T391 LIMIT 1;

theCharVar = 'Hello from P322';
dsply theCharVar;
P91();
P156();
P190();
return;