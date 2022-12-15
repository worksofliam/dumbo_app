**free

ctl-opt dftactgrp(*no);

dcl-pi P2292;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1933.rpgleinc'
/copy 'qrpgleref/P1914.rpgleinc'
/copy 'qrpgleref/P1984.rpgleinc'

dcl-ds theTable extname('T37') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T37 LIMIT 1;

theCharVar = 'Hello from P2292';
dsply theCharVar;
P1933();
P1914();
P1984();
return;