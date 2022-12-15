**free

ctl-opt dftactgrp(*no);

dcl-pi P1330;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P840.rpgleinc'
/copy 'qrpgleref/P854.rpgleinc'
/copy 'qrpgleref/P1057.rpgleinc'

dcl-ds theTable extname('T309') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T309 LIMIT 1;

theCharVar = 'Hello from P1330';
dsply theCharVar;
P840();
P854();
P1057();
return;