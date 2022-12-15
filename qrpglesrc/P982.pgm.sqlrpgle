**free

ctl-opt dftactgrp(*no);

dcl-pi P982;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P826.rpgleinc'
/copy 'qrpgleref/P143.rpgleinc'
/copy 'qrpgleref/P393.rpgleinc'

dcl-ds theTable extname('T367') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T367 LIMIT 1;

theCharVar = 'Hello from P982';
dsply theCharVar;
P826();
P143();
P393();
return;