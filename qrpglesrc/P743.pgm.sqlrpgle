**free

ctl-opt dftactgrp(*no);

dcl-pi P743;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P25.rpgleinc'
/copy 'qrpgleref/P427.rpgleinc'
/copy 'qrpgleref/P231.rpgleinc'

dcl-ds theTable extname('T1314') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1314 LIMIT 1;

theCharVar = 'Hello from P743';
dsply theCharVar;
P25();
P427();
P231();
return;