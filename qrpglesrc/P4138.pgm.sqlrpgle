**free

ctl-opt dftactgrp(*no);

dcl-pi P4138;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1684.rpgleinc'
/copy 'qrpgleref/P1917.rpgleinc'
/copy 'qrpgleref/P1829.rpgleinc'

dcl-ds theTable extname('T649') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T649 LIMIT 1;

theCharVar = 'Hello from P4138';
dsply theCharVar;
P1684();
P1917();
P1829();
return;