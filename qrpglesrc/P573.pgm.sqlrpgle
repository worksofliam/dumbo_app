**free

ctl-opt dftactgrp(*no);

dcl-pi P573;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P279.rpgleinc'
/copy 'qrpgleref/P60.rpgleinc'
/copy 'qrpgleref/P65.rpgleinc'

dcl-ds theTable extname('T1520') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1520 LIMIT 1;

theCharVar = 'Hello from P573';
dsply theCharVar;
P279();
P60();
P65();
return;