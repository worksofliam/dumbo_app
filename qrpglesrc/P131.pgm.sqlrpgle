**free

ctl-opt dftactgrp(*no);

dcl-pi P131;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P63.rpgleinc'
/copy 'qrpgleref/P21.rpgleinc'
/copy 'qrpgleref/P54.rpgleinc'

dcl-ds theTable extname('T1078') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1078 LIMIT 1;

theCharVar = 'Hello from P131';
dsply theCharVar;
P63();
P21();
P54();
return;