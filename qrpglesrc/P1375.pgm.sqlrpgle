**free

ctl-opt dftactgrp(*no);

dcl-pi P1375;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1185.rpgleinc'
/copy 'qrpgleref/P1112.rpgleinc'
/copy 'qrpgleref/P698.rpgleinc'

dcl-ds theTable extname('T272') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T272 LIMIT 1;

theCharVar = 'Hello from P1375';
dsply theCharVar;
P1185();
P1112();
P698();
return;