**free

ctl-opt dftactgrp(*no);

dcl-pi P313;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P250.rpgleinc'
/copy 'qrpgleref/P114.rpgleinc'

dcl-ds theTable extname('T251') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T251 LIMIT 1;

theCharVar = 'Hello from P313';
dsply theCharVar;
P250();
P114();
return;