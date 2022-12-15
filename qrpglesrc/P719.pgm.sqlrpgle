**free

ctl-opt dftactgrp(*no);

dcl-pi P719;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P523.rpgleinc'
/copy 'qrpgleref/P426.rpgleinc'
/copy 'qrpgleref/P519.rpgleinc'

dcl-ds theTable extname('T878') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T878 LIMIT 1;

theCharVar = 'Hello from P719';
dsply theCharVar;
P523();
P426();
P519();
return;