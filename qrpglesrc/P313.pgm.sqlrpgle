**free

ctl-opt dftactgrp(*no);

dcl-pi P313;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P179.rpgleinc'
/copy 'qrpgleref/P269.rpgleinc'
/copy 'qrpgleref/P176.rpgleinc'

dcl-ds theTable extname('T386') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T386 LIMIT 1;

theCharVar = 'Hello from P313';
dsply theCharVar;
P179();
P269();
P176();
return;