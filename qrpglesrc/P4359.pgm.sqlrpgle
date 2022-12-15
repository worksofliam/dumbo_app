**free

ctl-opt dftactgrp(*no);

dcl-pi P4359;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1617.rpgleinc'
/copy 'qrpgleref/P100.rpgleinc'
/copy 'qrpgleref/P198.rpgleinc'

dcl-ds theTable extname('T830') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T830 LIMIT 1;

theCharVar = 'Hello from P4359';
dsply theCharVar;
P1617();
P100();
P198();
return;