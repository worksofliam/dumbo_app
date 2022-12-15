**free

ctl-opt dftactgrp(*no);

dcl-pi P647;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P262.rpgleinc'
/copy 'qrpgleref/P138.rpgleinc'
/copy 'qrpgleref/P136.rpgleinc'

dcl-ds theTable extname('T304') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T304 LIMIT 1;

theCharVar = 'Hello from P647';
dsply theCharVar;
P262();
P138();
P136();
return;