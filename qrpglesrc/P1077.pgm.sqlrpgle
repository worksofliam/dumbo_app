**free

ctl-opt dftactgrp(*no);

dcl-pi P1077;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P169.rpgleinc'
/copy 'qrpgleref/P383.rpgleinc'
/copy 'qrpgleref/P262.rpgleinc'

dcl-ds theTable extname('T1144') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1144 LIMIT 1;

theCharVar = 'Hello from P1077';
dsply theCharVar;
P169();
P383();
P262();
return;