**free

ctl-opt dftactgrp(*no);

dcl-pi P987;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P206.rpgleinc'
/copy 'qrpgleref/P608.rpgleinc'
/copy 'qrpgleref/P176.rpgleinc'

dcl-ds theTable extname('T74') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T74 LIMIT 1;

theCharVar = 'Hello from P987';
dsply theCharVar;
P206();
P608();
P176();
return;