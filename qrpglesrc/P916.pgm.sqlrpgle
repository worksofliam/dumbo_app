**free

ctl-opt dftactgrp(*no);

dcl-pi P916;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P473.rpgleinc'
/copy 'qrpgleref/P123.rpgleinc'
/copy 'qrpgleref/P492.rpgleinc'

dcl-ds theTable extname('T41') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T41 LIMIT 1;

theCharVar = 'Hello from P916';
dsply theCharVar;
P473();
P123();
P492();
return;