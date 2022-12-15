**free

ctl-opt dftactgrp(*no);

dcl-pi P224;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P208.rpgleinc'
/copy 'qrpgleref/P146.rpgleinc'
/copy 'qrpgleref/P115.rpgleinc'

dcl-ds theTable extname('T279') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T279 LIMIT 1;

theCharVar = 'Hello from P224';
dsply theCharVar;
P208();
P146();
P115();
return;