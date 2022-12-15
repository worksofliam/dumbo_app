**free

ctl-opt dftactgrp(*no);

dcl-pi P980;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P529.rpgleinc'
/copy 'qrpgleref/P770.rpgleinc'
/copy 'qrpgleref/P167.rpgleinc'

dcl-ds theTable extname('T434') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T434 LIMIT 1;

theCharVar = 'Hello from P980';
dsply theCharVar;
P529();
P770();
P167();
return;