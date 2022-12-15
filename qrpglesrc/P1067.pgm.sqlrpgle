**free

ctl-opt dftactgrp(*no);

dcl-pi P1067;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P897.rpgleinc'
/copy 'qrpgleref/P455.rpgleinc'
/copy 'qrpgleref/P53.rpgleinc'

dcl-ds theTable extname('T94') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T94 LIMIT 1;

theCharVar = 'Hello from P1067';
dsply theCharVar;
P897();
P455();
P53();
return;