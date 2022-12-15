**free

ctl-opt dftactgrp(*no);

dcl-pi P865;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P542.rpgleinc'
/copy 'qrpgleref/P455.rpgleinc'
/copy 'qrpgleref/P53.rpgleinc'

dcl-ds theTable extname('T27') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T27 LIMIT 1;

theCharVar = 'Hello from P865';
dsply theCharVar;
P542();
P455();
P53();
return;