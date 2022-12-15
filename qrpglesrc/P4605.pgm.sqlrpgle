**free

ctl-opt dftactgrp(*no);

dcl-pi P4605;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P620.rpgleinc'
/copy 'qrpgleref/P1043.rpgleinc'
/copy 'qrpgleref/P1888.rpgleinc'

dcl-ds theTable extname('T94') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T94 LIMIT 1;

theCharVar = 'Hello from P4605';
dsply theCharVar;
P620();
P1043();
P1888();
return;